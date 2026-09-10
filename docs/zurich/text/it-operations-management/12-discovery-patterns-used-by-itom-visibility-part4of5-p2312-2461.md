# Zurich IT Operations Management — Discovery patterns used by ITOM Visibility

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2312–2461 of 4823 | Part 4 of 5

Sections: Discovery patterns used by ITOM Visibility (p1862)

---

<!-- page 2312 -->
You can use the patterns on the ServiceNow AI Platform using London Patch 7, Madrid Patch 2, or
later releases.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
MID Server
Use a dedicated MID Server for cloud discovery. The MID Server must have 16
Cores, 8 GB with 4 GB Java Memory Model (JVM) memory allocation.
Deploy and connect the dedicated MID Server with internet access.
Credentials
The cloud resources are in an IBM cloud. Create the IBM Credentials for accessing
your IBM account.
1. Navigate to Discovery > Credentials.
2. Click New.
3. Click IBM Credentials and then fill in the form:
Credentials form
Field

Description

Name

Credential name. An example is ibmcred.

Order

Order in which the platform tries this
credential as it attempts to log on to
devices. A smaller number indicates
that the credential appears higher
in the list. Establish the credential
order when using large numbers of
credentials or when security locks out
users after three failed login attempts.
If all the credentials have the same
order number, or none, the instance
tries the credentials in a random order.
The default value is 100.

Softlayer API User

Username for the Softlayer API. Use
the Softlayer API Username defined in
the Softlayer console.

Softlayer API Key

Key for the Softlayer API. Use the
Softlayer API Key that is defined in the
Softlayer console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2312


<!-- page 2313 -->
Field

Description

Bluemix API Key

Key for the Bluemix API. Use the
Bluemix API Key defined in the IBM
Cloud console.

4. Click Submit.
Create an IBM cloud service account
Use the credentials defined in the preceding procedure to create the IBM cloud
service account.
1. Navigate to Cloud Provisioning and Governance > Service Accounts.
2. Click New.
3. On the form, fill in the fields:
Cloud Service Account form
Field

Description

Name

Credential name. An example is ibm-snow

Account Id

IBM account ID name. Enter the IBM Account
ID.

Discovery credentials

Discovery credentials that you defined earlier.

Datacenter Type

Datacenter type. As an
example, IBM Datacenter
[cmdb_ci_ibm_datacenter]

4. Click Submit.
Create a serverless Discovery schedule
Configure a serverless Discovery.
1. On the ServiceNow AI Platform, navigate to Discovery > Discovery Schedules.
2. Click New.
3. On the form, fill in the fields:
Discovery Schedule form
Field

Description

Name

Name for this Discovery schedule. As
an example, Serverless Pattern

Discover

Discover type. Select Serverless

MID Server

Name of the MID Server. As an
example, Discovery_Server

Active

Option for enabling this schedule for
Discovery. Select this check box to
enable Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2313


<!-- page 2314 -->
Field

Description

Run

Specifies how frequently to run the
Discovery schedule.

4. Right-click the header of the Discovery Schedule form and select Save.

5. Click the Serverless Execution Patterns tab.
6. Click New.
7. On the form, fill in the fields:
Serverless Execution Pattern form
Field

Description

Name

Name for this Serverless Execution
Pattern. As an example, IBM1

Pattern

Name of the pattern that you want to
run.

If you want to run multiple patterns,
create multiple records.
Proxy Host

Fully qualified domain name of the
machine on which you are installing
the proxy server. Specify Global.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2314


<!-- page 2315 -->
Field

Description

Active

Option for enabling this schedule for
Discovery. Select this check box to
enable Discovery.

8. Configure the parameters required by the IBM Cloud Platform pattern as follows:
Discovery Pattern Launcher parameters
Parameter

Description

cloud_cred_id

The sys_id of the IBM credentials specified into the
configuration.

cloud_account_id

The IBM account ID.

cloud_datacenter_type cmdb_ci_ibm_datacenter
9. Update.
10. To start Discovery, navigate to the Serverless Discovery definition and click
Discover Now.
IBM flow - horizontal discovery
• To perform a discovery using a serverless schedule, the IBM Cloud Platform
patterns that were selected run and discover IBM Cloud Platform resources.
• To perform a discovery using a service account, a full IBM Cloud Platform
discovery schedule runs, discovering all supported IBM Cloud Platform
resources.
Cloud custom operation
Cloud REST – Add Response to Context
Operation for Cloud REST queries that supports large-scale responses and better
memory usage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2315


<!-- page 2316 -->
• Specify all the fields with the same values as in the Cloud REST Query custom
operation, except to specify the table for the response, which is set in the
Response Variable Name field.

• Set Define parsing to None.
Methods to retrieve data for the IBM account
1. Navigate to Pattern Designer > Custom Operations.

2. Click Cloud REST – add response to context.
Method: Get Call
API URLs used to retrieve the data:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2316


<!-- page 2317 -->
• Load Balancer https://api.softlayer.com/rest<api_version>/

SoftLayer_Network_LBaaS_LoadBalancer/getAllObjects?
objectMask=mask[listeners[defaultPool],members,healthMonitors]

• Network https://api.softlayer.com/rest/

<API_VERSION>/SoftLayer_Account/getNetworkVlans?
objectMask=mask[primaryRouter.datacenter,name,id,vlanNumber,networkSpac

• Network https://api.softlayer.com/rest/

<API_VERSION>/SoftLayer_Account/getSubnets?
objectMask=mask[datacenter]

• Network https://api.softlayer.com/rest/

<API_VERSION>/SoftLayer_Account/getSecurityGroups?
objectMask=mask[rules]

• Organizations and Spaces https://api.<region>.bluemix.net/

v2/organizations

• https://api.<region>.bluemix.net/v2/spaces
• SSH Key https://api.softlayer.com/rest/

v3/SoftLayer_Account/SoftLayer_Account/getSshKeys

• Storage https://api.softlayer.com/rest/<api_version>/

SoftLayer_Account/getNetworkStorage

• Virtual Server https://api.softlayer.com/rest/v3.1/

SoftLayer_Account/getSecurityGroups

• http://api.softlayer.com/rest/v3.1/

SoftLayer_Account/getSecurityGroups?
objectMask=mask[id,name,networkComponentBindings[networkComponentId,net

• https://api.softlayer.com/rest/v3.1/

SoftLayer_Account/getVirtualGuests?
objectMask=mask[hostname,domain,powerState,fullyQualifiedDomainName,not

EVAL functions
Use the following EVAL function to transform the Load Balancer API response into a
full JSON format. The default response is formatted as “[<resource objects>]”.
var cloud_lb_response = ${cloud_lb_response};
for (var i = 0; i < cloud_lb_response.size(); i++){
cloud_lb_response.set(i, '{"result":[' +
cloud_lb_response.get(i) + ']}');
}
CTX.setAttribute("cloud_lb_response",
cloud_lb_response;
Use the following EVAL function to transform the Network API response into a full
JSON format. The default response is formatted as “[<resource objects>]”.
var network_response = ${network_response};
for (var i = 0; i < network_response.size(); i++){
network_response.set(i, '{"result":[' +
network_response.get(i) + ']}');
}
CTX.setAttribute("network_response", network_response);

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2317


<!-- page 2318 -->
Use the following EVAL function to get the IBM region from the LB availability zone
(datacenter). The same function is used for other resources inside the pattern.
var res = "";
res =
IbmCloudDcToRegion.convertDctoRegion(${cloud_lb[].clou
d_lb_az_short_name});

Use the following EVAL function to select the required algorithm in the pattern.
var rtrn
var lb_algorithm =
${cloud_lb_pools[].lb_algorithm}.toString();
switch (lb_algorithm){
case "ROUNDROBIN":
lb_algorithm = "round-robin";
break;
case "WEIGHTED_RR":
lb_algorithm = "round-robin";
break;
case "LEASTCONNECTION":
lb_algorithm = "least-connections";
break;
default: break;
Use the following EVAL function to parse the unique region to the account that hosts
the Organizations and the corresponding spaces.
var tableWithoutDuplicates = '';
tableWithoutDuplicates =
DuplicateRemover.removeDuplicates(${account_region},["
region_name"]);
CTX.setAttribute("account_region_unique",
tableWithoutDuplicates);
Use the following EVAL function to get information for all the organizations that are
assigned to the IBM cloud account, where iteration for getting the unique region is
performed.
var cloudcall = new CloudRestAPIClient();
var resourceTable =
${account_region_unique[*].region_name};
var tableSize = resourceTable.size();
var tmp_response = new Packages.java.util.ArrayList();
var all_organizations_response = new
Packages.java.util.ArrayList();
for (var i = 0; i < tableSize ; i++){
if (!resourceTable.get(i)) continue;
var url =
"https://api."+resourceTable.get(i)+".bluemix.net/v2/o
rganizations";
tmp_response =
cloudcall.arrayListExecute(${service_account}, null,
url, null, 'GET', null, 'true', CTX);
for (var j = 0; j < tmp_response.size(); j++){
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2318


<!-- page 2319 -->
all_organizations_response.add('{"result":[' +
tmp_response.get(j) + ']}');
}
}
CTX.setAttribute("all_organizations_response",
all_organizations_response);
Use the following EVAL function to get information for all the IBM cloud account
assigned spaces, where the iteration for getting the unique region is performed.
var rtrn = '';
var cloudcall = new CloudRestAPIClient();
var resultList = new Packages.java.util.ArrayList();
var rest = '';
var resourceTable =
${account_region_unique[*].region_name};
var result = new Packages.java.util.ArrayList();
var all_organizations_response =
${all_organizations_response}
for (var i = 0; i < resourceTable.size() ; i++){
var url =
"https://api."+resourceTable.get(i)+".bluemix.net/v2/s
paces";
result =
cloudcall.arrayListExecute(${service_account}, null,
url, null, 'GET', null, 'true', CTX);
for (var z = 0; z <
all_organizations_response.size(); z++){
var jsonObj = JSON.parse(result.get(z));
ms.log("length "+jsonObj.resources.length);
for(var j=0;j<jsonObj.resources.length;j++){
var guid = jsonObj.resources[j].metadata.guid;
var url = jsonObj.resources[j].metadata.url;
var name = jsonObj.resources[j].entity.name;
var organization_guid =
jsonObj.resources[j].entity.organization_guid;
var allow_ssh =
jsonObj.resources[j].entity.allow_ssh ? "true" :
"false";
var row = new Packages.java.util.HashMap();
Packages.com.snc.sw.log.DiscoLog.getLogger("IBM Cloud
Space and Org").debug(">>>>>>>>>>>>>||||||||||||>>>>>>
region alias=" + resourceTable.get(i));
Packages.com.snc.sw.log.DiscoLog.getLogger("IBM Cloud
Space and Org").debug(">>>>>>>>>>>>>||||||||||||>>>>>>
region full name=" +
IbmCloudDcToRegion.regionNamebyAlias(resourceTable.get
(i)));
row.put("region",
IbmCloudDcToRegion.regionNamebyAlias(resourceTable.get
(i)));
row.put("space_guid",guid);
row.put("space_url",url);
row.put("space_name",name);
row.put("space_organization_guid",organization_guid);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2319


<!-- page 2320 -->
row.put("space_allow_ssh",allow_ssh);
row.put("rest", rest);
resultList.add(row);
}
}
CTX.setAttribute('spaces_table', resultList);
}

Use the following EVAL function to filter all the spaces by unique region.
var space_region = ${spaces_table[].region};
Packages.com.snc.sw.log.DiscoLog.getLogger("IBM Cloud
Space and Org").debug("filtering space according to
LDC. space_region=" + space_region);
var regions = ${cmdb_ci_ibm_datacenter[*].region};
Packages.com.snc.sw.log.DiscoLog.getLogger("IBM
Cloud Space and Org").debug("input regions list=" +
regions.toString());
var rtrn = "false";
if(regions.contains(space_region)) {
rtrn = "true";
}
rtrn;
Use the following EVAL function to filter all the spaces by storage discovery.
var storage_response = ${storage_response};
for (var i = 0; i < storage_response.size(); i++){
storage_response.set(i, '{"result":[' +
storage_response.get(i) + ']}');
}
CTX.setAttribute("storage_response", storage_response);

Use the following EVAL function to transform the API response into full JSON format,
as the untouched response is formatted as “[<resource objects>]”.
var ssh_key = ${ssh_key_json};
for(var i = 0; i < ssh_key.size(); i++){
ssh_key.set(i,'{"result\" : ' + ssh_key.get(i) +
"}");
}
CTX.setAttribute("ssh_key_json", ssh_key);
Use the following EVAL function to populate the availability zone into the storage
volume table.
var rtrn;
var resource_group =
${network_storage[].resource_name};
var regex = /.*-(\w{3}\d{2}).*/;
var az_name = regex.exec(resource_group);
if (az_name) {
rtrn = az_name[1];
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2320


<!-- page 2321 -->
} else {
rtrn;
}
Use the following EVAL function to populate the region into the storage volume
table.
var res = "";
res =
IbmCloudDcToRegion.convertDctoRegion(${network_storage
[].availability_zone});

Use the following EVAL function to transform the size of the storages to bytes from
gigabytes.
var rtrn = '';
var size = ${network_storage[].size};
rtrn = (parseInt(size) * 1073741824) + ‘’;
Use the following EVAL function to transform the size of the storages to bytes from
gigabytes.
var cloudcall = new CloudRestAPIClient();
var resourceTable =
${network_storage[*].storage_object_id};
var tableSize = resourceTable.size();
var allResources = new Packages.java.util.ArrayList();
var response = new Packages.java.util.ArrayList();
for (var i = 0; i < tableSize ; i++){
if (!resourceTable.get(i)) continue;
var url =
"https://api.softlayer.com/rest/"+${api_version}+"/Sof
tLayer_Network_Storage/"+resourceTable.get(i)+"/getObje
ct?objectMask=mask[snapshots]";
// the commented out code is to call the "Cloud Rest
Call" API
allResources =
cloudcall.arrayListExecute(${service_account}, null,
url, null, 'GET', null, 'true', CTX);
for (var j = 0; j < allResources.size(); j++){
response.add('{"result":[' + allResources.get(j)
+ ']}');
}
}
CTX.setAttribute("all_snapshots_response", response);
Use the following EVAL closure that transforms the JSON that is received from the
API to a format that the JSON parser can work with. The default JSON is saved in
$vm_json_array, the new JSON is in $vm_json.
var vm_json = new Packages.java.util.ArrayList();
vm_json.addAll(${vm_json_array});
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2321


<!-- page 2322 -->
for (var i = 0 ; i < vm_json.size(); i++){
vm_json.set(i, '{\"result\":[' + vm_json.get(i) +
']}');
}
CTX.setAttribute("vm_json", vm_json);
Use the following EVAL closure that returns ‘on’ if the power status is running. The
value ‘off’ is returned if the power status is off.
var power = ${cmdb_ci_vm_instance[].state};
var rtrn = '';
if (power == 'Running'){
rtrn = "on";
}
else {
rtrn = "off"
}
Use the following EVAL closure that returns the region of the CI, based on provided
availability zone name.
var az = ${cmdb_ci_vm_instance[].avail_zone};
var rtrn = '';
rtrn = IbmCloudDcToRegion.convertDctoRegion(az);
Use the following EVAL closure that builds a HashMap of HashSets, Connecting
VMs with their network storages. The following key is used:
• P = page
• V = VM
• N = network storage
var rtrn = '';
var vmJson = ${vm_json_array};
var VMtoStorageHashMap = new
Packages.java.util.HashMap();
for (var p = 0 ; p < vmJson.size(); p++){
var page = JSON.parse(vmJson.get(p));
for (var now_V in page){
if (page[v].allowedNetworkStorage.length > 0){
var vm_id = page[v].id + '';
var storageSet = new
Packages.java.util.HashSet();
for (var n in page[v].allowedNetworkStorage){
storageSet.add(page[v].allowedNetworkStorage[n].id +
'');
}
VMtoStorageHashMap.put(vm_id,storageSet);
}
}
}
CTX.setAttribute("VMStorageCache", VMtoStorageHashMap);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2322


<!-- page 2323 -->
Use the following EVAL closure to remove duplicate entries from tables.
var tableWithoutDuplicates = '';
tableWithoutDuplicates =
DuplicateRemover.removeDuplicates(${cmdb_ci_os_templat
e},["object_id"]);
CTX.setAttribute("cmdb_ci_os_template",
tableWithoutDuplicates);
Use the following EVAL closure that builds a list of VM IDs that are related to the
current security group ID.
var rtrn = '';
//get the Security Group ID of the current record in
the table for comparison
var current_table_id =
${security_groups[].sec_group_id};
var current_table_id_string = current_table_id + '';
// get the list of instance's ID that will be then
added to Security Group table
var needed_value_id_list =
${sec_group_network_components[*].vm_instance_id};
//get the list of Security Group IDs in the Network
Component table, which will then be compared one by
one to the current record of the security_groups table
var compare_id_list =
${sec_group_network_components[*].sec_group_id};
var beforeReturn = '';
var separator = '';
for (var i = 0; i < compare_id_list.size(); i++)

{

if
(current_table_id_string ==
compare_id_list.get(i)){
beforeReturn += separator +
needed_value_id_list.get(i);
separator = ',';
}
}
rtrn = beforeReturn;
Use the following EVAL closure that builds a HashMap of HashSet between security
groups and the VMs that are configured to use them.
rtrn = '';
var secGroupTable = ${cmdb_ci_endpoint_comp_security};
var secToVMHashSet = new Packages.java.util.HashMap();
// this loop worst case O(N*M) M = security groups, N =
VMs
for(var i=0; i<secGroupTable.size(); i++){
var securityTableId =
secGroupTable.get(i).get('object_id');
var vmListStr =
secGroupTable.get(i).get('instance_list');
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2323


<!-- page 2324 -->
var vmList = vmListStr.split(",");
var vmSet = new Packages.java.util.HashSet();
for (var j in vmList){
vmSet.add(vmList[j]);
}
secToVMHashSet.put(securityTableId,vmSet);
}
CTX.setAttribute("securityVMCache",

secToVMHashSet);

Use the following EVAL closure that returns ‘true’ if the current VM is using the
current security group ID.
var rtrn = '';
var vm_id = ${cmdb_ci_vm_instance[].object_id};
var vmHashSet =
${securityVMCache}.get(${cmdb_ci_endpoint_comp_securit
y[].object_id});
rtrn = vmHashSet.contains(vm_id);
Use the following EVAL closure that returns ‘true’ if the current VM is using the
current storage volume.
var rtrn = '';
var vm_id = ${cmdb_ci_vm_instance[].object_id};
var vol_id = ${cmdb_ci_endpoint_iscsi[].object_id};
var vmHashSet = ${VMStorageCache}.get(vm_id);
if (vmHashSet){
rtrn = vmHashSet.contains(vol_id);
}
else {
rtrn = 'false'
}
Use the following EVAL function to transform the API response into full JSON format,
as the untouched response is formatted as “[<resource objects>]”.
var cloud_response = ${location_groups_response}
for (var i = 0; i < cloud_response.size(); i++){
cloud_response.set(I, '{"result":[' +
cloud_response.get(i) + ']}');
}
CTX.setAttribute("location_groups_response",
cloud_response);
Parses the unique Location Groups in the “location_groups_az” table basdon the
column “lg_id” and creates a new table "location_groups_az_unique“ that contains
the result.
var tableWithoutDuplicates= '';
tableWithoutDuplicates =
DuplicateRemover.removeDuplicates(${location_groups_a
z},["lg_id"]);
CTX.setAttribute("location_groups_az_unique",
tableWithoutDuplicates);

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2324


<!-- page 2325 -->
Creates a list of Availability Zones per Location Group, that is stored in a column
new column in the location_groups_az_uniquetable. The list records are divided by
commas purposely, so that unique relations could be made in consecutive step.
var current_table_id=
${location_groups_az_unique[].lg_id};
var current_table_id_string = current_table_id+ '';
var needed_v alue_id_list =
${location_groups_az[*].lg_az_id};
var compare_id_list= ${location_groups_az[*].lg_id};
var beforeReturn= '';
var separator = ',';
for (var i= 0; i< compare_id_list.size(); i++) {
if (current_table_id_string ==
compare_id_list.get(i)){
beforeReturn += separator + needed_v
alue_id_list.get(i) + separator;
}
}
rtrn = beforeReturn;
Activate the cloud-related CI relationships
To include discovered components into service instances, enable CI relationships
used in tag-based discovery by Service Mapping. These CI relationships are
available from the 1.0.68 release on the ServiceNow Store. For operational steps,
see Tag-based discovery configuration.

Data collected by Discovery during horizontal discovery
Data is collected using these patterns:
• IBM Cloud Load Balancer
• IBM Cloud Location Groups
• IBM Cloud Network
• IBM Cloud Organizations and Spaces
• IBM Cloud Resource Groups
• IBM Cloud SSH Key
• IBM Cloud Storage
• IBM Cloud Virtual Server
Data collected for IBM components:
IBM Cloud Load Balancer discovered resources

Field

Description

Main CI: cmdb_ci_cloud_load_balancer
name

Load balancer name.

object_id

Load balancer unique identifier.

fqdn

Load balancer address (host name).

dns_name

Load balancer domain server name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2325


<!-- page 2326 -->
Field

Description

short_description

Load balancer description that you provide for easy
identification.

operational_status

Load balancer status, one of either:
• ONLINE
• OFFLINE

location

Datacenter location.

state

Load balancer provisioning status.

Related CI: cmdb_ci_lb_service
name

Pattern created name, composed of:
• load balancer name
• type of protocol
• resource type listener

object_id

Load balancer unique identifier.

port

Port number of the listener.

front_end_port

Protocol port number of the listener.

listener_protocol

Protocol of the listener. One of the following protocols:
• TCP
• HTTP
• HTTPS

operational_status

Provisioning status of the listener.

Related CI: cmdb_ci_lb_pool
name

Pattern created name, composed of:
• load balancer name
• type of protocol
• port
• resource type “pool”

object_id

Load balancer pool unique identifier.

port

Protocol port of the backend.

pool_status

Load balancer pool provisioning status.

load_balancing_method Load balancing method. One of the following
algorithms:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2326


<!-- page 2327 -->
Field

Description

• "ROUNDROBIN"
• "WEIGHTED_RR"
• "LEASTCONNECTION"
Related CI: cmdb_ci_lb_pool_member
name

Pattern created name, composed of:
• load balancer name
• type of protocol
• IP address of the Pool Member

object_id

Load balancer pool member unique identifier,
composed of:
• Member ID
• Listener ID

ip_address

IP address of a load balancer member.

server_id

ID of the member in IBM cloud.

load_balancer

Name of the related Load Balancer.

Related CI: cmdb_ci_lb_health_service
name

Pattern created name, composed of:
• load balancer name
• type of protocol
• resource type: Health Check
• resource ID

object_id

Unique identifier of the Health Service Check.

monitor_type

Health check type. One of the following:
• TCP
• HTTP
• HTTPS

timeout_sec

Timeout, in seconds, to wait for health check responses.

check_interval_sec

Interval, in seconds, to perform health check.

IBM Cloud Location Groups discovered resources

Field

Description

Main CI: cmdb_ci_cloud_location_group
name

A descriptive name used to identify a Location Group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2327


<!-- page 2328 -->
Field

Description

object_id

The ID of the Location Group record.

locationGroupType
Name

The name of the Location Group Type.

short_description

A small note about a Location Group to use at your
discretion.

locationGroup Type ID

The ID of the Location Group Type.

IBM Cloud Network discovered resources

Field

Description

Main CI: cmdb_ci_network
name

VLAN number.

object_id

Network unique identifier.

access_port_vlan

VLAN number.

is_external

Network space value. The value is either:
• true if the network_space is “PUBLIC”
• false if the network_space is “PRIVATE”.

state

State has the value "available".

Related CI: cmdb_ci_cloud_subnet
name

Name, composed of: “network_identifier/cidr”

object_id

Subnet unique identifier.

subnet_mask

Netmask of the subnet.

gateway

Gateway IP address.

cidr

Method for allocating IP addresses and IP routing:
“network_identifier/cidr”.

category

Subnet type.

broadcast_address Subnet broadcast address.
available_ip_count

Number of available IP addresses in the subnet.

Related CI: cmdb_ci_compute_security_group
name

Security Group name.

object_id

Security Group unique identifier.

short_description

Security Group description that you provide for easy
identification.

Related CI: cmdb_ci_compute_security_group_rule
name

Field with the same value as the Security Group Rule
object_id field.

object_id

Security Group Rule unique identifier.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2328


<!-- page 2329 -->
Field

Description

created

Date the CI was created.

direction

Direction of the information. One of the following:
• inbound
• outbound

Ethertype

Ethertype. One of the following:
• IPv4
• IPv6

port_range_min

The first port of the range that the rule applies to.

port_range_max

The last port of the range that the rule applies to.

protocol

Protocol that the rule is applied to.

remote_group_id

Security Group ID for the Source/Destination security group.
It means that this rule applies on all IP addresses that were
configured in this security group.

IBM Cloud Organizations and Space discovered resources

Field

Description

Main CI: cmdb_ci_cloud_org
name

Name of the cloud organization.

guid

Unique identifier of the organization.

url

Unique URL of the organization.

billing_enabled

Billing method in use by the organization. One of either:
• Enabled / (TRUE)
• Disabled / (FALSE)

quota_definition_url Resources that are available to an organization.
spaces_url

Unique URL of the space assigned to the organization.

operational_status

Operational status of the organization.

Related CI: cmdb_ci_cloud_space
name

Unique name of the space.

object_id

Space unique identifier (guid).

alllow_ssh

Access to the application over SSH is either allowed or not
allowed. Boolean, one of either:
• TRUE
• FALSE

URL

URL of the space from the metadata description.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2329


<!-- page 2330 -->
IBM Cloud Resource Groups discovered resources

Field

Description

Main CI: cmdb_ci_resource_group
name

Name of the resource group.

object_id

Unique identifier of the resource group.

quota_id

Value identifying the quota ID associated with the resource group.

IBM Cloud SSH Key discovered resources

Field

Description

Main CI: cmdb_ci_cloud_key_pair
name

Name to identify an SSH key.

object_id

ID of the SSH key record.

key

SSH Key record.

finger_print

Short sequence of bytes used to authenticate or
lookup a longer SSH Key. This value is automatically
generated when adding or modifying the SSH Key.
Read only. Changes made are ignored.

created _date

Date when the SSH Key was added. Read only.
Changes made are ignored.

modify_date

Date when the SSH Key was modified. Read only.
Changes made are ignored.

short_description

SSH description that you provide for easy
identification.

Related CI: cmdb_ci_ibm_datacenter
name

Name of the datacenter.

region

Region that the datacenter is in.

discovery_status

Status information about the IBM datacenter.

sys_class_name

Class of the datacenter

Related CI: cmdb_ci_cloud_service_account
name

Name of the cloud service account.

account_id

Account ID for this cloud service account.

discovery_credentials

Credentials for this cloud service account.

datacenter_url

URL used to populate Logical Data Centers (LDCs).

datacenter_type

Type of datacenter. As an example, IBM Datacenter
[cmdb_ci_ibm_datacenter]

datacenter_discovery_status Status of last execution of Discover Datacenters.
IBM Cloud Storage discovered resources
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2330


<!-- page 2331 -->
Field

Description

Main CI: cmdb_ci_storage_volume
name

Username used to:
• access a non-EVault Storage volume
• register the EVault server agent with the vault
backup system

object_id

Storage account unique identifier.

size

Capacity of the storage account, measured in
gigabytes.

size_bytes

Capacity of the storage account, measured in bytes.

label

Name of the storage network resource.

storage_type

Description of the storage type. As an example,
NAS.

fqdn

IP address of a storage resource or fully qualified
domain name.

device

Unique identification number of the device
associated with a Storage volume.

Related CI: cmdb_ci_storage_vol_snapshot
name

Name of a storage network resource.

object_id

Storage unique identifier.

capacity

Capacity of the snapshot volume in gigabytes.

fqdn

IP address of a storage resource or fully qualified
domain name.

location

Unique availability zone where the storage volume
is located.

Related CI: cmdb_ci_ibm_datacenter
name

Name of the datacenter.

region

Region that the datacenter is in.

discovery_status

Status information about the IBM datacenter.

sys_class_name

Class of the datacenter

Related CI: cmdb_ci_cloud_service_account
name

Name of the cloud service account.

account_id

Account ID for this cloud service account.

discovery_credentials

Credentials for this cloud service account.

datacenter_url

URL used to populate LDCs.

datacenter_type

Type of datacenter. As an example, IBM Datacenter
[cmdb_ci_ibm_datacenter]

datacenter_discovery_status Status of last execution of Discover Datacenters.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2331


<!-- page 2332 -->
Field

Description

Related CI: cmdb_ci_availability_zone
name

Name of the availability zone (AZ).

object_id

Unique identifier for this resource.

short_description

Availability zone description that you provide.

IBM Cloud Virtual Server discovered resources

Field

Description

Main CI: cmdb_ci_vm_instance
name

Name of the VM.

object_id

Unique identifier of the VM.

dns_domain

VM domain server name.

fqdn

VM IP address.

short_description

Description in a note that is attached to the VM on
the IBM console.

cpus

Number of CPU cores assigned to this VM.

memory

Memory size assigned to this VM.

disks

Number of disks assigned to this VM.

state

The running state of the VM.
• On – returned as ‘Running’ from the API.
• Off – returned as ‘Halted’ from the API.

placement_group_id

Placement group ID.

nics

Number of NICs.

Related CI: cmdb_ci_nic
name

Name, composed of:
• load balancer name
• Port

object_id

Unique identifier of the NIC.

ip_address

IP that is configured on the NIC.

mac_address

NIC MAC details.

netmask

Mask used to divide the IP address into subnets
and to specify the available hosts in the network.

status

State of the NIC.

Related CI: cmdb_ci_endpoint_vnic
name

Name for the VNIC endpoint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2332


<!-- page 2333 -->
Field

Description

object_id

Unique identifier of the VNIC endpoint.

host

Host identifier.

Related CI: cmdb_ci_storage_volume
name

Username used to:
• access a non-EVault Storage volume
• register the EVault server agent with the vault
backup system

object_id

Storage account unique identifier.

size

Capacity of the storage account, measured in
gigabytes.

size_bytes

Capacity of the storage account, measured in bytes.

label

Name of the storage network resource.

storage_type

Description of the storage type. As an example,
NAS.

fqdn

IP address of a storage resource or fully qualified
domain name.

device

Unique identification number of the guest
associated with a Storage volume.

Related CI: cmdb_ci_endpoint_nfs
name

Name for the NFS endpoint.

host

Host identifier.

protocol

Protocol that was applied.

type

NFS endpoint type.

created

Date that the NFS endpoint was created.

updated

Date that the NFS endpoint was updated.

discovery_source

Source of the discovery. As an example,
ServiceWatch

host_name

Host name of the NFS endpoint

Related CI: cmdb_ci_endpoint_iscsi
host

Host identifier for the ISCSI endpoint.

port

Port to determine how GCP iscsi contact to the
VMs.

protocol

Protocol that was applied.

type

ISCSI endpoint type

created

Date that the ISCSI endpoint was created.

updated

Date that the ISCSI endpoint was updated.

discovery_source

Source of the discovery. As an example, ImportSet

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2333


<!-- page 2334 -->
Field

Description

host_name

Host name of the ISCSI endpoint

Related CI: cmdb_ci_endpoint_block
name

Name for the block endpoint.

object_id

Unique identifier of the block endpoint.

host

Host identifier.

Related CI: cmdb_ci_os_template
name

Name of the image. For example, ‘CentOS 7.0-64
Minimal for VSI’.

object_id

Unique identifier of the image.

guest_os

OS used by the image. As an example, Linux.

root_device_type

Type of device used by root.

image_source

Source of the image.

image_type

Image type.

infuse_key

Key used to infuse the image.

update_host_name

Update host name for the image.

credentials

Credentials for the image.

version

OS version. For example, ‘7.0-64 Minimal for VSI’.

Related CI: cmdb_ci_cloud_key_pair
name

Name to identify a key (key label).

object_id

ID of the key record.

key

Key record.

finger_print

Short sequence of bytes used to authenticate or
look up a Key. This value is automatically generated
when adding or modifying the Key. Read only.
Changes made are ignored.

created _date

Date when the Key was added. Read only. Changes
made are ignored.

modify_date

Date when the Key was modified. Read only.
Changes made are ignored.

short_description

Description that you provide for easy identification.

Related CI: cmdb_ci_compute_security_group
name

Security Group name.

object_id

Security Group unique identifier.

short_description

Security Group description that you provide for
easy identification.

Related CI: cmdb_ci_endpoint_comp_security
host

Host identifier of the compute security endpoint.

port

Unique identifier of the compute security endpoint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2334


<!-- page 2335 -->
Field

Description

protocol

Protocol that was applied.

type

Type of compute security endpoint.

created

Date when the compute security endpoint was
added. Read only. Changes made are ignored.

updated

Date when the compute security endpoint was
modified. Read only. Changes made are ignored.

discovery_source

Source of the discovery. As an example, Manual
Entry.

host_name

Host name of the compute security endpoint.

Related CI: cmdb_ci_ibm_datacenter
name

Name of the datacenter.

region

Region that the datacenter is in.

discovery_status

Status information about the IBM datacenter.

sys_class_name

Class of the datacenter

Related CI: cmdb_ci_availability_zone
name

Name of the availability zone (AZ).

object_id

Unique identifier for this resource.

short_description

Availability zone description that you provide.

Related CI: cmdb_ci_cloud_service_account
name

Name of the cloud service account.

account_id

Account ID for this cloud service account.

discovery_credentials

Credentials for this cloud service account.

datacenter_url

URL used to populate LDCs.

datacenter_type

Type of datacenter. As an example, IBM Datacenter
[cmdb_ci_ibm_datacenter]

datacenter_discovery_status Status of last execution of Discover Datacenters.
IBM Cloud Virtual Server – Related Items view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2335


<!-- page 2336 -->
CI Relationships
These relationships are created to support IBM Cloud Platform discovery.
Relationships for IBM Cloud Load Balancer discovered resources

CI

Relationship

CI

Related CI: cmdb_ci_ibm_datacenter
cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter

Contains::Contained cmdb_ci_availability_zone
by

Related CI: cmdb_ci_cloud_load_balancer
cmdb_ci_cloud_load_balancer Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_cloud_load_balancer Contains::Contained cmdb_ci_lb_health_service
by
Related CI: cmdb_ci_availability_zone
cmdb_ci_availability_zone

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_availability_zone

Contains::Contained cmdb_ci_lb_service
by

Related CI: cmdb_ci_lb_service
cmdb_ci_lb_service

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_lb_service

Contains::Contained cmdb_ci_lb_pool
by

Related CI: cmdb_ci_lb_pool
cmdb_ci_lb_pool

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2336


<!-- page 2337 -->
CI

Relationship

CI

cmdb_ci_lb_pool

Owns::Owned by

cmdb_ci_lb_pool_member

Related CI: cmdb_ci_lb_health_service
cmdb_ci_lb_health_service

Contains::Contained cmdb_ci_cloud_load_balancer
by

Relationships for IBM Cloud Location Groups discovered resources

CI

Relationship

CI

Related CI: cmdb_ci_ibm_datacenter
cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter

Contains::Contained cmdb_ci_availability_zone
by

Related CI: cmdb_ci_cloud_location_group
cmdb_ci_cloud_location_group Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_location_group Contains::Contained cmdb_ci_availability_zone
by
Relationships for IBM Cloud Network discovered resources

CI

Relationship

CI

Related CI: cmdb_ci_ibm_datacenter
cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter

Contains::Contained cmdb_ci_availability_zone
by

Related CI: cmdb_ci_network
cmdb_ci_network

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_network

Contains::Contained cmdb_ci_cloud_subnet
by

Related CI: cmdb_ci_compute_security_group
cmdb_ci_compute_security_group Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_compute_security_group Contains::Contained cmdb_ci_compute_security_group_rule
by
Relationships for IBM Cloud Resource Groups discovered resources

CI

Relationship

CI

Related CI: cmdb_ci_resource_group
cmdb_ci_resource_group

Hosted on::Hosts

cmdb_ci_cloud_service_account

Relationships for IBM Cloud SSH Key discovered resources
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2337


<!-- page 2338 -->
CI

Relationship

CI

Related CI: cmdb_ci_ibm_datacenter
cmdb_ci_ibm_datacenter Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter Contains::Contained cmdb_ci_availability_zone
by
Related CI: cmdb_ci_cloud_key_pair
cmdb_ci_cloud_key_pair

Hosted on::Hosts

cmdb_ci_cloud_service_account

Relationships for IBM Cloud Storage discovered resources

CI

Relationship

CI

Related CI: cmdb_ci_ibm_datacenter
cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter

Contains::Contained by

cmdb_ci_availability_zone

Related CI: cmdb_ci_storage_volume
cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_storage_volume

Provisioned::Provisioned cmdb_ci_storage_vol_snapshot
From

Related CI: cmdb_ci_storage_vol_snapshot
cmdb_ci_storage_vol_snapshot Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_storage_vol_snapshot Located in Zone::Zone
contains

cmdb_ci_availability_zone

Related CI: cmdb_ci_availability_zone
cmdb_ci_availability_zone

Contains::Contained by

cmdb_ci_storage_volume

Relationships for IBM Cloud Virtual Server discovered resources

CI

Relationship

CI

Related CI: cmdb_ci_ibm_datacenter
cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_ibm_datacenter

Contains::Contained by

cmdb_ci_availability_zone

cmdb_ci_ibm_datacenter

Hosted on::Hosts

cmdb_ci_vm_instance

cmdb_ci_vm_instance

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_vm_instance

Located in:Houses

cmdb_ci_availability_zone

cmdb_ci_vm_instance

Uses:Used By

cmdb_ci_cloud_key_pair

cmdb_ci_vm_instance

Contains:Contained By

cmdb_ci_nic

cmdb_ci_vm_instance

endpoint

cmdb_ci_nic

Related CI: cmdb_ci_vm_instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2338


<!-- page 2339 -->
CI

Relationship

CI

Related CI: cmdb_ci_availability_zone
cmdb_ci_availability_zone

Hosted on::Hosts

cmdb_ci_vm_instance

Hosted on::Hosts

cmdb_ci_vm_instance

cmdb_ci_os_template

Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_os_template

Provisioned::Provisioned cmdb_ci_vm_instance
by

Related CI: cmdb_ci_nic
cmdb_ci_nic
Related CI: cmdb_ci_os_template

Related CI: cmdb_ci_compute_security_group
cmdb_ci_compute_security_group Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_compute_security_group Implement::Implemented cmdb_ci_vm_instance
from
Related CI: cmdb_ci_storage_volume
cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_ibm_datacenter

cmdb_ci_storage_volume

Implement::Implemented cmdb_ci_vm_instance
from

Related CI: cmdb_ci_cloud_key_pair
cmdb_ci_cloud_key_pair

Hosted On:Hosts

cmdb_ci_cloud_service_account

Relationships discovered for the virtual machine (VM) instance

CI

Relationship

CI

Servers
[cmdb_ci_server]

Virtualized by::
Virtualizes

Virtual Machine Instance
[cmdb_ci_instance]

Data collected by Service Mapping during tag-based discovery
Service Mapping uses tag-based discovery to create service instance maps including the Cloud
components. The Service Mapping application comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on the ServiceNow Store.

CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2339


<!-- page 2340 -->
Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.

Increase the value of this
parameter on the relevant
mid.sa.cloud.request_timeout
MID Server and run discovery
parameter.
again.

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

Microsoft Azure Cloud discovery using patterns
Discovery uses multiple patterns to discover components of the Microsoft Azure Cloud
deployment during horizontal discovery. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date.
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
• Visibility Content
Verify the configuration of Cloud Discovery for Microsoft Azure
• Use the Cloud Discovery Workspace to set up Cloud Discovery. For more
information, see Cloud discovery setup using Cloud Discovery Workspace
• Enable Cloud Discovery to access your Azure environment. For more information,
see Set up Azure service accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2340


<!-- page 2341 -->
Activate the cloud-related CI relationships
To include discovered components into service instances, enable CI relationships
used in tag-based discovery by Service Mapping. These CI relationships are
available from the 1.0.68 release on the ServiceNow Store. For operational steps,
see Tag-based discovery configuration.
Azure Availability Set
Wait for the Clean-Up job for Availability zone to clear availability set record
schedule job to delete all the pre-populated availability set's Configuration Items
(CI) in the cmdb_ci_azure_availability_set table.
Azure Availability Zone
To run a discovery with Azure Availability Zone, register the subscription ID to the
AvailabilityZonePeering feature with AZ CLI using az feature register -n
AvailabilityZonePeering --namespace Microsoft.Resources to
use the Check Zone Peering API. Check the status with az feature show -n
AvailabilityZonePeering --namespace Microsoft.Resources
before running discovery.
(Optional) Discover datacenters only for new subscriptions
Starting with Zurich Patch 2, you can discover datacenters only for new
subscriptions added since the last discovery. For more information, see Discover
datacenters only for new cloud accounts.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Azure resources discovery by datacenters
Azure has multiple datacenters around the world, but resources like load balancers and virtual
machines are typically deployed in only some of them. The Azure Datacenter Discovery pattern
executes before all other Azure patterns to identify the datacenters that have resources related
to your service account ("active") and the datacenters that don't have your resources ("passive").
This model improves the performance of the Azure discovery. This execution model is more
efficient than the previous one, in which all datacenters were discovered regardless of having
relevant resources in them.
After identifying the "active" and "passive" datacenters, the Discovery schedule continues
to execute all Azure patterns only for the "active" datacenters, to discover your Azure cloud
resources. The "passive" datacenters are ignored while running the schedule.
You might notice differences in Azure discovery log, in discovery time and in the CMDB,
depending on the service account and MID Server property settings.
Datacenters that have already been discovered before the upgrade to Discovery and
Service Mapping Patterns version 1.15.0, remain in the Azure Datacenters table. However,
the discovery runtime behavior is now determined by the value of the MID Server property
mid.cloud.discovery.sonar.discover_all_azure_datacenters. The property
is set to false by default, to limit the discovery execution to the "active" datacenters, rather than
all datacenters. You can discover all datacenters for a service account, including "passive" ones,
by setting the property to true. For more information, see: Create a MID Server property .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2341


<!-- page 2342 -->
If the MID Server property is set to false, the Azure Datacenters table shows only active
datacenters. All other behaviors remain unchanged from previous Discovery and Service
Mapping Patterns versions.
Differences in datacenter discovery by Discovery and Service Mapping Patterns version
Discovery and Service Mapping
Patterns version

MID Server
property
setting

Discovered
datacenters

Datacenters
contained in Azure
Datacenters table

Datacenters
displayed in
discovery log

Active only

Active only

Discovery and Service
Mapping Patterns starting
with version 1.15.0

False
(default)

Active only

Discovery and Service
Mapping Patterns starting
with version 1.15.0

True

All
All datacenters
datacenters

All datacenters

Discovery and Service
Mapping Patterns before
version 1.15.0

False
(default)

Active only

Active only

Discovery and Service
Mapping Patterns before
version 1.15.0

True

All
All datacenters
datacenters

All datacenters

All datacenters

For management groups, Azure Cloud Discovery discovers all Azure datacenters.
Starting with Discovery and Service Mapping Patterns version 1.29.0, the Refresh Datacenters
flow displays all regions, not just active ones. You don’t need to create another schedule when a
resource is added or a datacenter switches from passive to active.

Azure Hardware Type discovery
Hardware Type discovery has undergone three model changes in recent years. The 1.15.0 model
triggers the Hardware Type pattern and the Virtual Machine pattern after the Azure Datacenter
Discovery pattern. Starting Discovery and Service Mapping Patterns plugin version 1.15.0, Cloud
Discovery identifies which Hardware Type model is used, and launches only one of the two
patterns: Hardware Type (LP) or Cloud Hardware Type (LP).
Migration to the new Azure Hardware Type discovery model- Use cases
Discovery and Service
Mapping Patterns
version

Prior to 1.0.75

Hardware Type
Migration status

Which pattern executes

Haven't migrated to
the new model

Hardware Type (LP)
pattern

Discovery and Service The migration to the
Mapping Patterns
new model is done by
version 1.0.75
migration script. See
KB0955939

Hardware Type (LP)
pattern

Discovery result

The CI type created:
[cmdb_ci_compute_template]
The CI type created:
[cmdb_ci_cloud_hardware_type]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2342


<!-- page 2343 -->
Migration to the new Azure Hardware Type discovery model- Use cases (continued)
Discovery and Service
Mapping Patterns
version

Hardware Type
Migration status

The Hardware
Discovery and Service Type new model
Mapping Patterns
is provided OOB,
version 1.6.0
enabled with the
system property:

Which pattern executes

Discovery result

According to
KB1285337
Flow
Diagram

The CI type created:
According to
KB1285337

sn_itom_pattern.use
a single
hardware type
for cloud
datacenters. For
more information,
seeKB1285337 .
The Hardware
Discovery and Service Type new model
Mapping Patterns
is provided OOB
1.15.0
enabled with the
system property:

The flow is as
described in
KB1285337 .
However, only one
pattern executes. The
sn_itom_pattern.use
pattern that used to
a single
gracefully terminate
hardware type
doesn't execute.
for cloud
datacenters. For
more information,
seeKB1285337 .

Either Hardware Type
(LP) pattern or Cloud
Hardware Type (LP)
pattern executes.

Azure SQL Managed Instance license discovery
The Azure DataBase (LP) pattern extension Azure SQL Managed Instance license discovers
Azure SQL Managed Instance license information and populates the license type in the Key
Value [cmdb_key_value] table of Cloud Database CI [cmdb_ci_cloud_database].
Required plugins and applications
• Software Asset Management Professional for Microsoft
• Visibility Content
Discovered resources and relationships
Resources discovered using the Azure DataBase (LP) pattern extension: Azure SQL
Managed Instance license
Relationships discovered using the Azure DataBase (LP) pattern extension: Azure
SQL Managed Instance license

Azure Marketplace discovery
The Azure - Marketplace LB (LP) pattern discovers the following Azure Marketplace products:
• SaaS
• Azure Application
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2343


<!-- page 2344 -->
• Virtual Machine

Note: The pattern discovers only virtual machines (VMs) created from third-party or
commercial marketplace images.
Discovered resources and relationships
Resources discovered by the Azure - Marketplace LB (LP) pattern
Relationships discovered using the Azure - Marketplace LB (LP) pattern

Data collected by Discovery during horizontal discovery
Resources discovered by the Microsoft Azure - Application LB (LP) pattern

Field

Description

Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
object_id

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the load balancer.

location

The path of the load balancer.

state

The current state of the load balancer.

install_status

Resource provisioning status.

ip_address​

IP Address of the load balancer.

fqdn

The fully qualified domain name of the load balancer.

dns_name

The DNS name of the load balancer.

comments

Identifier for internal usage (deletion strategy).

Cloud LB IP Address [cmdb_ci_cloud_lb_ipaddress]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

lb_id​

A unique identifier for the load balancer.

ip_address​

IP address of the load balancer.

ip_address_type The type of the IP Address, which can be private or public.
fqdn

The fully qualified domain name of the load balancer.

comments

Identifier for internal usage (deletion strategy).

install_status​

Resource provisioning status.

Load Balancer Pool [cmdb_ci_lb_pool]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the load balancer
pool.

location

Path of the load balancer pool.

install_status​

Resource provisioning status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2344


<!-- page 2345 -->
Field

Description

comments

Identifier for internal usage (deletion strategy).

Load Balancer Service [cmdb_ci_lb_service]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the load balancer
service.

location

Path of the load balancer service.

port

The TCP port that the load balancer service listens to.

install_status

Resource provisioning status.

comments

Identifier for internal usage (deletion strategy).

Resources discovered by the Microsoft Azure - Classic LB (LP) pattern

Field

Description

Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the load balancer.

location

Path of the load balancer.

state

The current state of the load balancer.

install_status

Resource provisioning status.

comments

Identifier for internal usage (deletion strategy).

Cloud LB IP Address [cmdb_ci_cloud_lb_ipaddress]
object_id

A unique identifier, allocated by Microsoft Azure for this
resource.

lb_id​

A unique identifier for the load balancer.

ip_address​

IP address of the load balancer.

ip_address_type The type of the IP address, which can be private or public.
fqdn

The fully qualified domain name of the load balancer.

comments

Identifier for internal usage (deletion strategy).

install_status​

Resource provisioning status.

Load Balancer Service [cmdb_ci_lb_service]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the load balancer
service.

location

Path of the load balancer service.

port

The TCP port that the load balancer service listens to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2345


<!-- page 2346 -->
Field

Description

install_status

Resource provisioning status.

comments

Identifier for internal usage (deletion strategy).

Load Balancer Pool [cmdb_ci_lb_pool]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the load balancer
pool.

location

Path of the load balancer pool.

install_status​

Resource provisioning status.

comments

Identifier for internal usage (deletion strategy).

Resources discovered by the Microsoft Azure - Hardware Type (LP) pattern

Field

Description

Hardware Type [cmdb_ci_hardware_type]​
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the hardware type.

local_storage_gb​ Storage assigned to this template.
cores

The default number of cores for the instance type.

memory_mb​

Memory size assigned to this template.

vcpus

Number of CPU cores assigned to this template.

Resources discovered by the Microsoft Azure - Host (LP) pattern

Field

Description

Host [cmdb_ci_cloud_host]​
name

The Name or ID if no Name is specified for the host.

object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

host_type

The host type.

cloud_vendor The cloud vendor: Microsoft Azure.
virtual

Virtual host: False.

Resources discovered by the Microsoft Azure - Image (LP) pattern

Field

Description

Image table [cmdb_ci_os_template]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2346


<!-- page 2347 -->
Field

Description

location

Path of the image.

guest_os

Operating system that is secondary to the OS.

comments

Identifier for internal usage (deletion strategy).

image_source Source of the OS image.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
Resources discovered by the Microsoft Azure - Network and Subnet (LP) pattern

Field

Description

Cloud Network [cmdb_ci_network]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the cloud network.

location

Path of the network.

state

The current state of the network.

install_status​ Resource provisioning status.
cidr

CIDR representation of the network. For example, 10.0.0.0/24.

Cloud Subnet [cmdb_ci_cloud_subnet]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the cloud subnet.

location

Identifier for internal usage (deletion strategy).

state

The current state of the subnet.

install_status Resource provisioning status.
cidr

CIDR representation of the subnet. For example, 10.0.0.0/24.

Resources discovered by the Microsoft Azure - NIC (LP) pattern

Field

Description

Cloud Mgmt Network Interface [cmdb_ci_nic]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the network interface.

location

Path of the network interface.

install_status Resource provisioning status.
state

The current state of the network interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2347


<!-- page 2348 -->
Field

Description

public_ip

The address of the Elastic IP address bound to the network
interface.

private_ip​

The IPv4 address of the network interface within the subnet.

primary

True/False. Defines if the network interface is the primary network
interface or not.

mac_address The MAC address of the network interface.
public_dns​

The public DNS name of the network interface.

Resources discovered by the Microsoft Azure - Private Gateway (LP) pattern

Field

Description

Virtual Private Gateway [cmdb_ci_virtual_pvt_gateway]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the private
gateway.

location

Path of the private gateway.

connection_type

Type of VPN connection the gateway supports.

operational_status The state of the resource.
install_status​

Resource provisioning status.

Virtual Private Gateway Endpoint [cmdb_ci_endpoint_vpg]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the endpoint.

location

Path of the endpoint.

connection_type​

Type of VPN connection the gateway supports.

Resources discovered by the Microsoft Azure - Public IP (LP) pattern

Field

Description

Cloud Public IP Address [cmdb_ci_cloud_public_ipaddress]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the IP address.

location

Path of the IP address.

state

The current state of the IP address.

public_ip_address

The address of the Elastic IP address.

public_dns​

The public DNS name.

install_status

Resource provisioning status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2348


<!-- page 2349 -->
Resources discovered by the Microsoft Azure - Resource Group (LP) pattern

Field

Description

Resource Group [cmdb_ci_resource_group]
object_id

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the resource group.

location

Path of the resource group.

state

The current state of the resource group.

install_status​ Resource provisioning status.
Resources discovered by the Microsoft Azure - Route Table (LP) pattern

Field

Description

Route Table [cmdb_ci_route_table]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the route table.

location

Path of the route table.

install_status Resource provisioning status.
state

The current state of the route table.

Resources discovered by the Microsoft Azure - Security Group (LP) pattern

Field

Description

Compute Security Group [cmdb_ci_compute_security_group]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the security group.

location

Path of the security group.

state

The current state of the security group.

install_status

Resource provisioning status.

Resources discovered by the Microsoft Azure - SQL Server (LP) pattern

Field

Description

Virtual Machine Instance [cmdb_ci_vm_instance]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

location

Path of the VM instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2349


<!-- page 2350 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Server_License_Type_automatic

Value [value]

The value is one of the following options:
• Azure Hybrid Benefit: BYOL
• Pay-as-you-go licensing: License Included

Configuration item
[configuration_item]

References the Virtual Machine Instance
[cmdb_ci_vm_instance] table.

Resources discovered by the Microsoft Azure - Storage Account (LP) pattern

Field

Description

Cloud Storage Account [cmdb_ci_cloud_storage_account]
object_id​

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the storage account.

location

Path of the storage account.

sku_name

The name of the SKU (for backup frequency).

install_status​

Resource provisioning status.

state

The current state of the storage account.

Resources discovered by the Microsoft Azure - Storage Containers (LP) pattern

Field

Description

Storage Volume [cmdb_ci_storage_volume]
object_id

A unique identifier, allocated by Microsoft Azure for this
resource.

name

The Name or ID if no Name is specified for the storage volume.

location

Path of the storage volume.

volume_id

Identifier that holds the volume ID as the value.

volume_container​ The container name.
comments

Identifier for internal usage (deletion strategy).

status

The status of the resource.

Block Endpoint [cmdb_ci_endpoint_block]
name

The Name or ID if no Name is specified for the block endpoint.

object_id

A unique identifier, allocated by Microsoft Azure for this
resource.

Resources discovered by the Microsoft Azure - Storage Volume (LP) pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2350


<!-- page 2351 -->
Field

Description

Storage Volume [cmdb_ci_storage_volume]​
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the storage volume.

volume_id​

The volume type. For example:
• gp2 for General Purpose SSD
• io1 for Provisioned IOPS SSD
• st1 for Throughput Optimized HDD
• sc1 for Cold HDD
• standard for Magnetic volumes

location

Path of the storage volume.

state

The current state of the storage volume.

install_status​ Resource provisioning status.
size

The size of the volume.

size_bytes

The size of the volume (bytes).

storage_type For example, hard-coded value “block.”
comments

Identifier for internal usage (deletion strategy).

Resources discovered by the Microsoft Azure - Sub Account (LP) pattern

Field

Description

Cloud Service Account [cmdb_ci_cloud_service_account]
object_id

A unique identifier, allocated by Microsoft Azure for this
resource.

account_id

The unique identifier (ID) of the account.

name

The Name or ID if no Name is specified for the service
account.

datacenter_type

cmdb_ci_azure_datacenter

discovery_credentials Reference field to the related Microsoft Azure credentials.
datacenter_url

The URL of the datacenter.

parent_account

Reference to the primary account, if it exists.

is_master_account​

The Boolean attribute indicating if this is the primary
account or not.

Resources discovered by the Microsoft Azure - Virtual Machine (LP) pattern

Field

Description

Virtual Machine Instance [cmdb_ci_vm_instance]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2351


<!-- page 2352 -->
Field

Description

object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the instance.

location

The path of the instance.

install_status Resource provisioning status.
state

The current state of the instance.

vm_inst_id

The ID of the instance.

nics

The number of NICs available to the instance.

disks

The number of disks attached to the instance.

disks_size

The total size of the attached disks.

memory

The amount of memory available to the instance. (MBs)

cpus

The number of CPUs available to the instance.

Block Endpoint [cmdb_ci_endpoint_block]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the endpoint.

location

The path of the endpoint.

host

The public IPv4 address assigned to the instance, if applicable.

Storage Volume [cmdb_ci_storage_volume]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the storage volume.

location

The path of the storage volume.

comments

Identifier for internal usage (deletion strategy).

Cloud Mgmt Network Interface [cmdb_ci_nic]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

location

The path of the network interface.

VNIC Endpoint [cmdb_ci_endpoint_vnic]
object_id​

A unique identifier, allocated by Microsoft Azure for this resource.

name

The Name or ID if no Name is specified for the endpoint.

location

The path of the endpoint.

The pattern extension section discovers Bring Your Own License (BYOL) or the
included licenses for Windows VMs and Red Hat Enterprise Linux (RHEL) VMs.
• For Windows VM using a custom image, Discovery populate key values only when
the primary OS disk details are available.
• For RHEL VMs, information is populated only for VMs that use Marketplace
images.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2352


<!-- page 2353 -->
Field

Description

Key value [cmdb_key_value]
Key [key]

The key is one of the options:
• Windows_OS_License_Type_automatic
• RHEL_OS_License_Type_automatic

Value [value]

The value is one of the options:
• BYOL
• License Included

CI [ci]

Reference to the Virtual Machine Instance record.

Class

The Class is Virtual Machine Instance.

Resources discovered by the Microsoft Azure WebSite (LP) pattern and Microsoft Azure
WebSite pattern

Field

Description

Cloud Resource [cmdb_ci_cloud_webserver]
Name [name]

The name of the Azure web server.

Object ID [object_id]

The ID of Azure web server.

IP Address [ip_address]​

The IP address of the web server.

FQDN [fqdn]

The fully qualified domain name (FQDN) of the
web server.

Vendor [vendor]

The vendor is Microsoft.

Install Status [install_status]

The install status of the web server.

State [state]

The operational state of the web server.

Operational Status
[operational_status]

The operational status of the web server.

IP Address [cmdb_ci_ip_address]
Name [name]

The IP address of the web server.

IP Address [ip_address]

The IP address of the web server.

FQDN [fqdn]

The fully qualified domain name (FQDN).

Vendor [vendor]

The vendor is Microsoft.

Install Status [install_status]

The install status.

Operational Status
[operational_status]

The operational status.

Key Value [cmdb_key_value]
Key [key]

The Azure Key Value name.

Value [value]

The Azure Key Value value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2353


<!-- page 2354 -->
Resources discovered using the Azure DataBase (LP) pattern
Cloud DataBase [cmdb_ci_cloud_database]
Field

Description

Fully qualified domain
name [fqdn]

The FQDN that Microsoft Azure assigned to your
database.

Name [name]

The name of the database that you created in Microsoft
Azure.

Object ID [object_id]

The identification name of the database.

Operational Status
[operational_status]

The operational status of the database.

Type [type]

The type of database you created.

State [state]

The state of the database: Whether it’s Available or
Terminated.

Vendor [vendor]

The vendor name is Azure.

Version [version]

The version of the database.

Category [category]

The stock keeping unit (SKU) family.

Cloud Hardware Type [cmdb_ci_cloud_hardware_type]​
Field

Description

Object ID [object_id]

A unique identifier for the hardware type.

Name [name]

Name for the hardware type.

vCPUs [vcpus]

Number of virtual CPU cores.

Provider [provider]

Provider for the hardware type: Azure.

IP Address [cmdb_ci_ip_address]
Field

Description

Netmask [netmask]

Netmask of the Azure database.

Resources discovered using the Azure DataBase (LP) pattern extension: Azure SQL
Managed Instance license
Key value [cmdb_key_value]
Field

Description

Key [key]

SQL_Server_PaaS_Managed_Instance_License_Type_automatic

Value [value]

License type. The following maps the Azure portal license to
ServiceNow values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2354


<!-- page 2355 -->
Key value [cmdb_key_value] (continued)
Field

Description

• Azure Hybrid Benefit: BYOL
• Pay as you go: License Included
• Hybrid Failover rights: Hybrid Failover
Configuration item cmdb_ci_cloud_database
[configuration_item]
Serverless Hardware [cmdb_ci_serverless_hardware]
Field

Description

Object ID [object_id]

Object ID of the Azure cloud database.

Name [name]

SKU name.

Cloud Vendor [cloud_vendor]

Cloud vendor of the serverless hardware: MS
Azure.

CPU core count
[cpu_core_count]

Number of virtual cores (vCores).

CPU core thread
[cpu_core_thread]

Number of vCores.

CPU count [cpu_count]

Number of vCores.

Category [category]

vCore purchasing model.

Subcategory [subcategory]

SKU tier.

Host Type [host_type]

Host type: PaaS.

Resources discovered by the Azure - Marketplace LB (LP) pattern
Deployed Marketplace Product [cmdb_ci_deployed_marketplace_product]​
Field

Description

Name [name]

Name of the Cloud resource, usually the marketplace offering or
SKU name.

Object ID
[object_id]

A unique resource ID of the Cloud resource.

Resource Type
[resource_type]

Service in Cloud Marketplace. For example: microsoft.compute/
virtualmachines.

Plan Name
[plan_name]

Billing or SKU plan for a resource from the Cloud Marketplace.​
For example: Pay as You Go.

Market [market]

International Organization for Standardization (ISO) code of the
geographical market where the resource is sold in the specified
market. For example: US or EU.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2355


<!-- page 2356 -->
Deployed Marketplace Product [cmdb_ci_deployed_marketplace_product]​
(continued)
Field

Description

Organization Id A unique identifier for the organization or publisher that owns
[organization_id] the marketplace resource.
Marketplace Product Details [marketplace_product_details]
Field

Description

Product Code
[product_code]

A unique product code of the resource within the Cloud
Marketplace.

Publisher Name
[publisher_name]

Organization or individual responsible for creating and
offering the product or service.

Version [version]

Release number or iteration of the product.

Deployed On
[deployed_on]

References the Deployed Marketplace Product
[cmdb_ci_deployed_marketplace_product] table.

Key Value [cmdb_key_value]
Field

Description

Key [key]

Azure Key Value name.

Value [value]

Azure Key Value value.

Resources discovered by the Azure - Sub Account (LP) pattern extension: Azure
Management Groups
Cloud Organizations [cmdb_ci_cloud_org]
Field

Description

Name [name]

Tenant ID or name.
• Tenant ID: When using management-level credentials
• Tenant name: When using tenant-level credentials

Object ID [object_id] Tenant ID.
DNS Domain
[dns_domain]

Domain name entered during registration. For example:
servicenow.com.
This field is only populated when using tenant-level
credentials.

Azure Management Group [cmdb_ci_azure_management_group]
Field

Description

Name [name] Management group name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2356


<!-- page 2357 -->
Azure Management Group [cmdb_ci_azure_management_group] (continued)
Field

Description

Object ID
[object_id]

Management group name and tenant ID in the following format:
name+@+tenantId.
For example: itomMgmtGroup@8bcff-vdc-btrv.

Parent
[parent]

References the direct parent Azure Management Group
[cmdb_ci_azure_management_group] table.

CI relationships
Relationships discovered using the Microsoft Azure - Application LB (LP) pattern

CI

Relationship

CI

cmdb_ci_cloud_load_balancer Owns::Owned by

cmdb_ci_cloud_lb_ipaddress

cmdb_ci_cloud_load_balancer Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_lb_service

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_cloud_subnet

Contains::Contained cmdb_ci_cloud_load_balancer
by

cmdb_ci_lb_pool

Hosted on::Hosts

cmdb_ci_resource_group

Contains::Contained cmdb_ci_cloud_load_balancer
by

cmdb_ci_cloud_load_balancer

Relationships discovered using the Microsoft Azure - Classic LB (LP) pattern

CI

Relationship

CI

cmdb_ci_cloud_load_balancer Owns::Owned by

cmdb_ci_cloud_lb_ipaddress

cmdb_ci_cloud_load_balancer Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_lb_service

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_lb_pool

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_lb_pool

Hosted on::Hosts

cmdb_ci_lb_service

cmdb_ci_resource_group

Contains::Contained cmdb_ci_cloud_load_balancer
by

Relationships discovered using the Microsoft Azure - Hardware Type (LP) pattern

CI

Relationship

CI

cmdb_ci_compute_template

Hosted on::Hosts

cmdb_ci_azure_datacenter

Relationships discovered using the Microsoft Azure - Host (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2357


<!-- page 2358 -->
CI

Relationship

CI

cmdb_ci_cloud_host

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_resource_group

Contains::Contained by

cmdb_ci_cloud_host

cmdb_ci_vm_instance

Runs on::Runs

cmdb_ci_cloud_host

Relationships discovered using the Microsoft Azure - Image (LP) pattern

CI

Relationship

CI

cmdb_ci_os_template

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_resource_group

Contains::Contained by

cmdb_ci_os_template

Relationships discovered using the Microsoft Azure - Network and Subnet (LP) pattern

CI

Relationship

CI

cmdb_ci_network

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_network

Contains::Contained by

cmdb_ci_cloud_subnet

cmdb_ci_resource_group

Contains::Contained by

cmdb_ci_network

Relationships discovered using the Microsoft Azure - NIC (LP) pattern

CI

Relationship

CI

cmdb_ci_nic

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_resource_group

Contains::Contained by

cmdb_ci_nic

cmdb_ci_cloud_subnet

Contains::Contained by

cmdb_ci_nic

Relationships discovered using the Microsoft Azure - Private Gateway (LP) pattern

CI

Relationship

CI

cmdb_ci_endpoint_vpg

Implement End
Point To::Implement
End Point From

cmdb_ci_virtual_pvt_gateway

cmdb_ci_resource_group

Contains::Contained cmdb_ci_virtual_pvt_gateway
by

cmdb_ci_virtual_pvt_gateway Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_network

cmdb_ci_endpoint_vpg

Use End Point
To::Use End Point
From

Relationships discovered using the Microsoft Azure - Public IP (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2358


<!-- page 2359 -->
CI

Relationship

cmdb_ci_cloud_public_ipaddress Hosted on::Hosts

CI

cmdb_ci_azure_datacenter

cmdb_ci_nic

Contains::Contained cmdb_ci_cloud_public_ipaddress
by

cmdb_ci_resource_group

Contains::Contained cmdb_ci_cloud_public_ipaddress
by

Relationships discovered using the Microsoft Azure - Resource Group (LP) pattern

CI

Relationship

CI

cmdb_ci_azure_datacenter

Contains::Contained by

cmdb_ci_resource_group

Relationships discovered using the Microsoft Azure - Route Table (LP) pattern

CI

Relationship

CI

cmdb_ci_route_table

Contains::Contained by

cmdb_ci_route

cmdb_ci_route_table

Contains::Contained by

cmdb_ci_network

cmdb_ci_resource_group

Contains::Contained by

cmdb_ci_route_table

cmdb_ci_azure_datacenter

Contains::Contained by

cmdb_ci_route_table

Relationships discovered using the Microsoft Azure - Security Group (LP) pattern

CI

Relationship

CI

cmdb_ci_cloud_subnet

Uses::Used by

cmdb_ci_compute_security_group

cmdb_ci_network

Contains::Contained cmdb_ci_compute_security_group
by

cmdb_ci_resource_group

Contains::Contained cmdb_ci_compute_security_group
by

cmdb_ci_compute_security_group Hosted on::Hosts

cmdb_ci_azure_datacenter

Relationships discovered using the Microsoft Azure - Storage Account (LP) pattern

CI

Relationship

cmdb_ci_resource_group

Contains::Contained cmdb_ci_cloud_storage_account
by

cmdb_ci_cloud_storage_account Hosted on::Hosts

CI

cmdb_ci_azure_datacenter

Relationships discovered using the Microsoft Azure - Storage Containers (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2359


<!-- page 2360 -->
CI

Relationship

CI

cmdb_ci_endpoint_block

Implement End
Point To::Implement
End Point From

cmdb_ci_storage_volume

cmdb_ci_cloud_storage_account Contains::Contained cmdb_ci_storage_volume
by
cmdb_ci_resource_group

Contains::Contained cmdb_ci_storage_volume
by

cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_azure_datacenter

Relationships discovered using the Microsoft Azure - Storage Volume (LP) pattern

CI

Relationship

CI

cmdb_ci_resource_group

Contains::Contained by

cmdb_ci_storage_volume

cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_azure_datacenter

Relationships discovered using the Microsoft Azure - Sub Account (LP) pattern
The Microsoft Azure - Sub Account (LP) pattern does not discover any relationships.
Relationships discovered using the Microsoft Azure - Virtual Machine (LP) pattern

CI

Relationship

CI

cmdb_ci_vm_instance

Use End Point To::Use
End Point From

cmdb_ci_endpoint_vnic

cmdb_ci_endpoint_vnic

Implement End Point
To::Implement End Point
From

cmdb_ci_nic

cmdb_ci_vm_instance

Provisioned
From::Provisioned

cmdb_ci_compute_template

cmdb_ci_resource_group Contains::Contained by

cmdb_ci_vm_instance

cmdb_ci_vm_instance

cmdb_ci_endpoint_block

Use End Point To::Use
End Point From

cmdb_ci_endpoint_block Implement End Point
To::Implement End Point
From

cmdb_ci_storage_volume

cmdb_ci_storage_volume Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_vm_instance

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_vm_instance

Provisioned
From::Provisioned

cmdb_ci_os_template

cmdb_ci_os_template

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_availability_set

Contains::Contained by

cmdb_ci_vm_instance

Relationships discovered using the Microsoft Azure WebSite (LP) and Microsoft Azure
WebSite patterns
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2360


<!-- page 2361 -->
CI

Relationship

CI

cmdb_ci_cloud_webserver

Hosted on::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_cloud_webserver

Owns::Owned

cmdb_ci_ip_address

cmdb_key_value

Reference only

cmdb_ci_cloud_webserver

Relationships discovered using the Azure DataBase (LP) Pattern.

CI

Relationship

CI

cmdb_ci_cloud_database

Owns:Owned By

cmdb_ci_ip_address

cmdb_ci_cloud_database

Contains::Contained cmdb_ci_database
by

cmdb_ci_cloud_database

Hosted On::Hosted

cmdb_ci_azure_datacenter

cmdb_ci_database

Provisioned
From::Provisioned

cmdb_ci_compute_template

cmdb_ci_database

Provisioned
From::Provisioned

cmdb_ci_cloud_hardware_type

cmdb_ci_compute_template Hosted On::Hosts

cmdb_ci_azure_datacenter

cmdb_ci_compute_template Hosted On::Hosts

cmdb_ci_cloud_hardware_type

Relationships discovered using the Azure DataBase (LP) pattern extension: Azure SQL
Managed Instance license

CI

Relationship

CI

cmdb_ci_cloud_database

Runs on::Runs

cmdb_ci_serverless_hardware

cmdb_ci_serverless_hardware Hosted on::Hosts cmdb_ci_azure_datacenter
cmdb_key_value

Reference only

cmdb_ci_cloud_database

Relationships discovered using the Azure - Marketplace LB (LP) pattern

CI

Relationship

CI

Deployed Marketplace Product
Extends from
[cmdb_ci_deployed_marketplace_product]

Virtual Machine Object
[cmdb_ci_vm_object]

Deployed Marketplace Product
Hosted on::Hosts
[cmdb_ci_deployed_marketplace_product]

Cloud Service Account
[cmdb_ci_cloud_sevice_account]

Deployed Marketplace Product
Hosted on::Hosts
[cmdb_ci_deployed_marketplace_product]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Marketplace Product Details
[marketplace_product_details]

References

Deployed Marketplace Product
[cmdb_ci_deployed_marketplace_prod

Resource Group
[cmdb_ci_resource_group]

Contains::Contained Deployed Marketplace Product
by
[cmdb_ci_deployed_marketplace_prod

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2361


<!-- page 2362 -->
Relationships discovered using the Azure - Sub Account (LP) pattern extension: Azure
Management Groups

CI

Relationship

CI

Azure Management Group
Contains::Contained Cloud Service Account
[cmdb_ci_azure_management_group] by
[cmdb_ci_cloud_service_account]
Cloud Organizations
[cmdb_ci_cloud_org]

Contains::Contained Azure Management Group
by
[cmdb_ci_azure_management_group]

Azure Management Group
Contains::Contained Azure Management Group
[cmdb_ci_azure_management_group] by
[cmdb_ci_azure_management_group]
*Azure Management Group
References
[cmdb_ci_azure_management_group]

Azure Management Group
[cmdb_ci_azure_management_group]

*Only references the direct parent-child management group relationship.

Events discovered by Discovery during horizontal discovery
Discovery uses patterns to find events created for Microsoft Azure components. If there are
events that indicate the change of state in one of the Microsoft Azure components, it triggers the
discovery of Microsoft Azure components using the patterns.
Patterns used for event discovery
Pattern

CI Class

Azure Application LB Event

Cloud Load Balancer [cmdb_ci_cloud_load_balancer]

Azure Availability Set Event

Availability Set [cmdb_ci_availability_set]

Azure Classic LB Event

Cloud Load Balancer [cmdb_ci_cloud_load_balancer]

Azure DataBase Event

Cloud DataBase [cmdb_ci_cloud_database]

Azure Express Route Circuit Event

Cloud Direct Connect [cmdb_ci_cloud_direct_connect]

Azure Functions Event

Cloud Function [cmdb_ci_cloud_function]

Azure Local Network Gateway Event

Virtual Private Gateway [cmdb_ci_virtual_pvt_gateway]

Azure NAT Gateway Event

NAT Gateway [cmdb_ci_nat_gateway]

Azure Network Event

Cloud Network [cmdb_ci_network]

Azure NIC Event

Cloud Mgmt Network Interface [cmdb_ci_nic]

Azure Private DNS Zone Event

DNS Zone [cmdb_ci_dns_zone]

Azure Public IP Event

Cloud Public IP Address
[cmdb_ci_cloud_public_ipaddress]

Azure Resource Group Event

Resource Group [cmdb_ci_resource_group]

Azure Security Group Event

Compute Security Group
[cmdb_ci_compute_security_group]

Azure Storage Account Event

Cloud Storage Account
[cmdb_ci_cloud_storage_account]

Azure Virtual Machine Event

Virtual Machine Instance [cmdb_ci_vm_instance]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2362


<!-- page 2363 -->
Patterns used for event discovery (continued)
Pattern

CI Class

Azure Virtual Network Gateway
Connection Event

Virtual Network Gateway Connection
[cmdb_ci_vpc_gateway_connection]

Azure Virtual Network Peerings Event Virtual Network Peering [cmdb_ci_vnet_peering]
Azure VM Scale Set Event

Instance Scale Set [cmdb_ci_instance_scale_set]

Tag information collected by Discovery during horizontal discovery
When running the patterns, tag information is collected to populate the cmdb_key_value table.​
Each tag is related to a CI that was discovered during the discovery. Tag discovery is done in the
extension section of each pattern.

Data collected by Service Mapping during tag-based discovery
Service Mapping uses tag-based discovery to create service instance maps including the Cloud
components. The Service Mapping application comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on the ServiceNow Store.

CI

Relationship

CI

Configuration Item [cmdb_ci]

Hosted on::Hosts

Logical Datacenter
[cmdb_ci_logical_datacenter]

Logical Datacenter
[cmdb_ci_logical_datacenter]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Related topics
Kubernetes discovery using patterns
Azure Key Vault certificate discovery
Azure App Configuration store pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2363


<!-- page 2364 -->
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
The Discovery and Service Mapping Patterns application populates data in the non-CMDB
table when running the Azure - App Configuration Configuration Store - Extended Inventory(LP)
pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure App Configuration - Configuration Store
[cmdb_azure_app_configuration_configuration_store]
Field

Description

Authentication Mode [authentication_mode]

The method or strategy used for
authenticating access.

Disable Local Auth [disable_local_auth]

Indicates whether local authentication
methods are disabled.

Enable Purge Protection
[enable_purge_protection]

Indicates if purge protection is enabled for the
resource.

Endpoint [endpoint]

The URL endpoint through which the service is
accessed.

Key Vault Properties [key_vault_properties]

Properties related to the configuration of Key
Vault services.

Location [location]

The Azure region where the resource is
deployed.

Object Id [object_id]

The unique identifier of the resource.

Private Link Delegation
[private_link_delegation]

Configurations related to the delegation of
private links.

Provisioning State [provisioning_state]

The current state of the resource provisioning
process.

Resource Group [resource_group]

Name of the resource group.

SKU Name [sku_name]

The stock keeping unit (SKU) representing the
pricing tier of the resource.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The unique identifier of the Azure Active
Directory tenant.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2364


<!-- page 2365 -->
Data stored in CMDB tables
The Discovery and Service Mapping Patterns application populates data in the CMDB when
running the Azure - App Configuration Configuration Store - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The Azure region where the resource is
deployed.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set
to microsoft.appconfiguration/
configurationstores.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure App Configuration
References
- Configuration Store
[cmdb_azure_app_configuration_configuration_store]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure App Service App Service Plan pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2365


<!-- page 2366 -->
Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populate data in the non-CMDB table when
running the Azure - App Service App Service Plan - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure App Service - App Service Plan [cmdb_azure_app_service_app_service_plan]
Field

Description

Kind [kind]

The category or specialization of the resource,
often specific to certain Azure services.

Location [location]

The Azure region where the resource is
hosted.

Object Id [object_id]

The unique identifier for the resource.

Provisioning State [provisioning_state]

The current provision status of the resource.

Resource Group [resource_group]

Name of the resource group.

Status [status]

The operational status or health of the
resource.

Subscription Id [subscription_id]

The subscription ID.

Tenant Id [tenant_id]

The identifier of the Azure Active Directory
tenant associated with the resource.

Tier [tier]

The performance level or pricing tier assigned
to the resource.

Configuration Item [configuration_item]

References the Cloud App Server
[cmdb_ci_cloud_appserver] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2366


<!-- page 2367 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - App Service App Service Plan - Extended Inventory(LP) pattern.
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The Azure region where the resource is
hosted.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier for the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
microsoft.web/serverfarms.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud App Server
[cmdb_ci_cloud_appserver]

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure App Service
References
- App Service Plan
[cmdb_azure_app_service_app_service_plan]

Cloud App Server
[cmdb_ci_cloud_appserver]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Microsoft Azure Application Gateway discovery with Patterns
The ServiceNow Discovery application uses the Azure Application Gateway (LP) pattern for
discovering this product, while the Service Mapping application discovers Application Gateway
using the Azure Application Gateway TD (LBS) pattern. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2367


<!-- page 2368 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Azure Principal credentials
On the ServiceNow platform, create a service account for cloud discovery. Set
the account Id to the Azure Service Principal as it appears at the Microsoft Azure
Console.
Privileges
On the Microsoft Azure Console, provide a user a user with the reader role.

Data collected by Discovery during horizontal discovery
Table and field

Additional information

Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
name

The name of the Azure Application Gateway.

Fqdn

The fully qualified domain name of the Azure
Application Gateway.

Object_id

The ID of the gateway.

Install_status

The install status of the of the Azure
Application Gateway.

state

The state of the Azure Application Gateway.

Cloud LB IPAddress [cmdb_ci_cloud_lb_ipaddress]
name

The IP address of the Azure Application
Gateway.

Object_id

The ID of the Azure Application Gateway.

ipaddress _type

The type of the IP address, which can be
private or public.

ip_address

The IP address of the Azure Application
Gateway.

state

The state of the IP address of the Azure
Application Gateway.

operational_state

The operational state of the IP address of the
Azure Application Gateway.

install_status

The install status of the IP address of the
Azure Application Gateway.

Load Balancer Service [cmdb_ci_lb_service]
serial number

The ID of the Azure Application Gateway
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2368


<!-- page 2369 -->
Table and field

Additional information

port

The TCP port that the Azure Application
Gateway service listens to.

name

The FQDN with the port number of the Azure
Application Gateway service, following this
syntax: <fqdn>:<port>.

ip_address

The IP address of the Azure Application
Gateway on which the service runs.

object_id

The ID of the Azure Application Gateway
service.

operational_state

The operational state of the Azure Application
Gateway service.

CI relationships
These relationships are created to support Azure Application Gateway discovery:

CI

Relationship

Load Balancer Service
[cmdb_ci_lb_service]

Hosted on::Hosts

CI

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Cloud Load Balancer
Owns::Owned by
[cmdb_ci_cloud_load_balancer]

Cloud LB IPAddress
[cmdb_ci_cloud_lb_ipaddress]

Resource Group
[cmdb_ci_resource_group]

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Contains::Contained by

Connections discovered by Service Mapping during the top-down discovery
Service Mapping performs the top-down discovery of the Azure Application Gateway in the
context of application services. Service Mapping discovers the outgoing http connections from
Azure Application Gateway service to pool members, such as virtual machines.
Related topics
Define a Cloud REST Query for cloud computing devices
Azure Application Insight Component pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2369


<!-- page 2370 -->
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populate data in the non-CMDB table when
running the Azure - Application Insight Component - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Application Insight - Component [cmdb_azure_application_insight_component]
Field

Description

App ID [app_id]

The identifier for the application linked to this
resource.

Application Type [application_type]

The type of application to which the resource
is related.

Connection String [connection_string]

The string used to connect to the resource
endpoint.

Instrumentation Key [instrumentation_key]

The key used for application insights to log
telemetry data.

Kind [kind]

The specific subtype or variation of the
resource.

Location [location]

The geographic region where the resource is
deployed.

Object Id [object_id]

The unique identifier for the resource.

Provisioning State [provisioning_state]

The current provision status of the resource.

Resource Group [resource_group]

Name of the resource group.

Retention In Days [retention_in_days]

The number of days that logs or data are
retained.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The directory tenant to which the resource
belongs.

Version [version]

The version number of the resource or service.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2370


<!-- page 2371 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Application Insight Component - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographic region where the resource is
deployed.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier for the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.insights/components.

Description [short_description]

Description of the resource or service.

Version [version]

The version number of the resource or service.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Application
References
Insight - Component
[cmdb_azure_application_insight_component]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2371


<!-- page 2372 -->
Azure Application Insight Data Collection Rule pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Application Insight Data Collection Rule - Extended Inventory(LP)
pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Application Insight Data Collection Rule
[cmdb_azure_application_insight_data_collection_rule]
Field

Description

Object Id [object_id]

The unique resource identifier for the Azure
resource.

Kind [kind]

The specific resource kind or stock-keeping
unit (SKU), indicating variation within the type.

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the resource group containing
the resource.

Subscription Id [subscription_id]

The unique identifier (GUID) for the Azure
subscription.

Tenant Id [tenant_id]

The Azure Active Directory tenant identifier
associated with the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2372


<!-- page 2373 -->
Azure Application Insight Data Collection Rule
[cmdb_azure_application_insight_data_collection_rule] (continued)
Field

Description

Provisioning State [provisioning_state]

The current provisioning or deployment status
of the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Application Insight Data Collection Rule - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The unique resource identifier for the Azure
resource.

Name [name]

The name assigned to the resource.

Location [location]

The Azure region where the resource is
deployed.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.insights/datacollectionrules.

CI relationships
The Azure - Application Insight Data Collection Rule - Extended Inventory(LP) pattern creates
these relationships to support Azure Application Insight Data Collection Rule discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Application Insight
References
Data Collection Rule
[cmdb_azure_application_insight_data_collection_rule]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2373


<!-- page 2374 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Application Security Group pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Application Security Group - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Application Security Group
[cmdb_azure_application_security_group_application_security_group]
Field

Description

Location [location]

The geographical region where the resource is
deployed.

Object Id [object_id]

The unique identifier for the resource in Azure.

Provisioning State [provisioning_state]

Current state of the provisioning process for
the resource.

Resource Group [resource_group]

Name of the resource group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2374


<!-- page 2375 -->
Azure Application Security Group
[cmdb_azure_application_security_group_application_security_group] (continued)
Field

Description

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The identifier for the tenant under which the
resource belongs.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Application Security Group - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the resource is
deployed.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier for the resource in Azure.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value
is set to microsoft.network/
applicationsecuritygroups.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Application
References
Cloud Resource
Security Group
[cmdb_ci_cmp_resource]
[cmdb_azure_application_security_group_application_security_group]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2375


<!-- page 2376 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Automation Account pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Automation Account - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Automation Account [cmdb_azure_automation_automation_account]
Field

Description

Disable Local Auth [disable_local_auth]

A setting indicating whether local
authentication is disabled for the resource.

Identity [identity]

The managed identity associated with the
resource.

Location [location]

The geographical location where the resource
is hosted.

Object Id [object_id]

The unique identifier of the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2376


<!-- page 2377 -->
Azure Automation Account [cmdb_azure_automation_automation_account] (continued)
Field

Description

Public Network Access
[public_network_access]

The configuration status of public network
access for the resource.

Resource Group [resource_group]

Name of the resource group.

Subscription Id [subscription_id]

The subscription ID.

Tenant Id [tenant_id]

The identifier for the Azure Active Directory
tenant associated with the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Automation Account - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical location where the resource
is hosted.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.automation/automationaccounts.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Automation Account
References
[cmdb_azure_automation_automation_account]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2377


<!-- page 2378 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure availability sets discovery using patterns
Discovery and Service Mapping Patterns uses the Azure - Availability Set (LP) pattern to discover
Azure availability sets during horizontal discovery. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Azure discovery prerequisites section in Microsoft Azure Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Azure - Availability Set (LP) pattern.
Availability Set [cmdb_ci_availability_set]
Field

Description

Object ID [object_id]​

A unique identifier, allocated by Microsoft Azure for this resource.

Name [name]

The Name or ID if no Name is specified for the availability zone.

Install Status [install_status]​ Resource provisioning status.

CI relationships
Discovery creates these relationships to support the Azure availability sets discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained Availability Set
by
[cmdb_ci_availability_set]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Contains::Contained Availability Set
by
[cmdb_ci_availability_set]

Azure availability zones discovery using patterns
Discovery and Service Mapping Patterns uses the Azure - Availability Zones (LP) pattern to
discover Azure availability zones during horizontal discovery. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Azure discovery prerequisites section in Microsoft Azure Cloud discovery using
patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2378


<!-- page 2379 -->
Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Azure - Availability Zones (LP)
pattern.
Availability Zone [cmdb_ci_availability_zone]
Field

Description

Object ID [object_id]​

Name of the availability zone in the following format: {Location} + "-"
+ {ZoneNum}.

Name [name]

Name of the availability zone in the following format: {Location} + "-" +
{ZoneNum}.

Install Status
[install_status]

Install status of the availability zone. Default value is Installed.

CI relationships
Discovery creates these relationships to support the Azure availability zone discovery.

CI

Relationship

CI

Azure Datacenter
[cmdb_ci_azure_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Azure Compute Gallery Image Definition pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2379


<!-- page 2380 -->
Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Compute Gallery Image Definition - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Compute Gallery - Image Definition [cmdb_azure_compute_gallery_image_definition]
Field

Description

Architecture [architecture]

Central processing unit (CPU) architecture of
the resource, such as x86 or ARM.

Hyper-V Generation [hyper_v_generation]

The Hyper-V generation version of the virtual
machine.

Kind [kind]

The specific subcategory or variation type of
the resource.

Location [location]

The geographical region where the resource is
deployed.

Object Id [object_id]

The unique identifier of the resource.

OS Type [os_type]

The operating system type associated with the
resource.

Provisioning State [provisioning_state]

Current provisioning status of the resource.

Resource Group [resource_group]

Name of the resource group.

SKU [sku]

The stock keeping unit (SKU) that defines the
pricing tier of the resource.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The unique identifier for the Azure Active
Directory tenant.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Compute Gallery Image Definition - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the resource is
deployed.

Name [name]

The name given to the resource.

Object ID [object_id]

The unique identifier of the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2380


<!-- page 2381 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.compute/galleries/images.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Compute Gallery
References
- Image Definition
[cmdb_azure_compute_gallery_image_definition]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Compute Snapshot pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2381


<!-- page 2382 -->
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Compute Snapshot - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Compute - Snapshot [cmdb_azure_compute_snapshot]
Field

Description

Disk State [disk_state]

The current state of the disk. For example:
Attached or Unattached.

Encryption Type [encryption_type]

The encryption mechanism applied
to the resource data. For example:
EncryptionAtRestWithCustomerKey or
EncryptionAtRestWithPlatformKey.

DC Location [location]

The geographic location where the resource is
deployed.

Network Access Policy
[network_access_policy]

The policy that governs network access to the
resource.

Object Id [object_id]

A unique identifier for the queried resource.

OS Type [os_type]

The type of operating system associated with
the resource.

Provisioning State [provisioning_state]

Current provisioning state of the resource. For
example: Succeeded or Failed.

Public Network Access
[public_network_access]

Indicates whether the resource can be
accessed via the public network.

Resource Group [resource_group]

Name of the resource group.

SKU Tier [sku_tier]

The tier of the stock keeping unit (SKU) that
determines resource performance and costs.

Subscription Id [subscription_id]

The subscription ID.

Tenant Id [tenant_id]

The unique identifier of the tenant owning the
resource.

Type [type]

The type or category of the resource.

Configuration Item [configuration_item]

References the Storage Volume Snapshot
[cmdb_ci_storage_vol_snapshot] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2382


<!-- page 2383 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Compute Snapshot - Extended Inventory(LP) pattern.
Storage Volume Snapshot [cmdb_ci_storage_vol_snapshot]
Field

Description

Capacity [capacity]

The size of the disk in terms of storage
capacity.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographic location where the resource is
deployed.

Name [name]

The name of the resource.

Object ID [object_id]

A unique identifier for the queried resource
in the following format: /subscriptions/
{subscriptionId}/resourceGroups/
{resouceGroupName}/providers/
Microsoft.Compute/snapshots/
{snapshotName}.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

State [state]

The current state of the disk. For example:
Attached or Unattached.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Storage Volume Snapshot
[cmdb_ci_storage_vol_snapshot]

Storage Volume Snapshot
Hosted on::Hosts
[cmdb_ci_storage_vol_snapshot]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Compute - Snapshot
References
[cmdb_azure_compute_snapshot]

Storage Volume Snapshot
[cmdb_ci_storage_vol_snapshot]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2383


<!-- page 2384 -->
Azure Container Registry pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Container Registry - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Container Registry [cmdb_azure_container_registry_registry]
Field

Description

Admin User Enabled [admin_user_enabled]

Indicates whether the administrator user
account is enabled for the resource.

Encryption Status [encryption_status]

The current encryption status of the resource,
specifying if data is encrypted.

Identity [identity]

The identity information for the resource, used
for authentication and authorization.

Kind [kind]

The specific kind or subtype of the resource, if
applicable.

Location [location]

The geographical region where the resource is
deployed.

Object Id [object_id]

The unique identifier for the resource.

Provisioning State [provisioning_state]

The current provisioning state of the resource.

Public Network Access
[public_network_access]

Indicates whether public network access is
allowed for the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2384


<!-- page 2385 -->
Azure Container Registry [cmdb_azure_container_registry_registry] (continued)
Field

Description

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The Azure Active Directory tenant ID
associated with the resource.

Tier [tier]

The service or resource tier, indicating the
level of performance or cost.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Container Registry - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the resource is
deployed.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier for the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.containerregistry/registries.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Container Registry
References
[cmdb_azure_container_registry_registry]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2385


<!-- page 2386 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Cosmos DB for PostgreSQL Cluster pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Cosmos DB for PostgreSQL Cluster - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Cosmos DB for PostgreSQL Cluster
[cmdb_azure_cosmos_db_for_postgresql_cluster_cluster]
Field

Description

Object Id [object_id]

The unique identifier of the resource.

Kind [kind]

The specific kind or stock-keeping unit (SKU)
of the resource.

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the Azure resource group
containing the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2386


<!-- page 2387 -->
Azure Cosmos DB for PostgreSQL Cluster
[cmdb_azure_cosmos_db_for_postgresql_cluster_cluster] (continued)
Field

Description

Subscription Id [subscription_id]

The unique identifier for the Azure
subscription.

Tenant Id [tenant_id]

The universally unique identifier (UUID) of the
Azure Active Directory tenant associated with
the resource.

Provisioning State [provisioning_state]

The current state of the provisioning process
for the resource.

Configuration Item [configuration_item]

References the Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Cosmos DB for PostgreSQL Cluster - Extended Inventory(LP) pattern.
Cloud DataBase Cluster [cmdb_ci_cloud_db_cluster]
Field

Description

Name [name]

The name assigned to the resource.

Location [location]

The Azure region where the resource is
deployed.

Cluster ID [cluster_id]

The unique identifier of the resource.

Cluster Status [cluster_status]

The current operational status of the cluster.

Cluster Version [cluster_version]

The version number of the cluster software.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
microsoft.dbforpostgresql/servergroupsv2.

Vendor [vendor]

Name of vendor: Microsoft.

CI relationships
The Azure - Cosmos DB for PostgreSQL Cluster - Extended Inventory(LP) pattern creates these
relationships to support Azure Cosmos DB for PostgreSQL Cluster discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2387


<!-- page 2388 -->
CI

Relationship

CI

Azure Cosmos DB for
References
PostgreSQL Cluster
[cmdb_azure_cosmos_db_for_postgresql_cluster_cluster]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Data Explorer Cluster pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Data Explorer Cluster - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2388


<!-- page 2389 -->
Azure Data Explorer Cluster [cmdb_azure_data_explorer_clusters_data_explorer_clusters]
Field

Description

Object Id [object_id]

The unique identifier of the Azure resource.

Kind [kind]

The specific kind or stock-keeping unit (SKU)
of the resource.

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the resource group that contains
the resource.

Subscription Id [subscription_id]

The unique identifier of the Azure subscription.

Tenant Id [tenant_id]

The unique identifier of the Azure Active
Directory tenant.

Provisioning State [provisioning_state]

The current provisioning state of the resource.

Configuration Item [configuration_item]

References the Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster] table.

Enable Disk Encryption
[enable_disk_encryption]

Specifies whether disk encryption is enabled
on the resource.

Public Network Access
[public_network_access]

Indicates if the resource is accessible over a
public network.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Data Explorer Cluster - Extended Inventory(LP) pattern.
Cloud DataBase Cluster [cmdb_ci_cloud_db_cluster]
Field

Description

Name [name]

The name assigned to the Azure resource.

Location [location]

The Azure region where the resource is
deployed.

Cluster ID [cluster_id]

The unique identifier of the Azure resource.

Cluster Status [cluster_status]

The current operational status of the Kusto
cluster.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value is set to
microsoft.kusto/clusters.

Vendor [vendor]

Name of vendor: Microsoft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2389


<!-- page 2390 -->
CI relationships
The Azure - Data Explorer Cluster - Extended Inventory(LP) pattern creates these relationships to
support Azure Data Explorer Cluster discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Data Explorer Cluster
References
[cmdb_azure_data_explorer_clusters_data_explorer_clusters]

Cloud DataBase Cluster
[cmdb_ci_cloud_db_cluster]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Data Factory pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2390


<!-- page 2391 -->
Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Data Factory - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Data Factory [cmdb_azure_data_factory_data_factory]
Field

Description

Identity [identity]

Information about the identity associated with
the resource.

Kind [kind]

The specific kind or stock keeping unit (SKU)
of the resource.

Location [location]

The geographical location where the resource
is deployed.

Object Id [object_id]

The unique identifier of the resource.

Provisioning State [provisioning_state]

The current provisioning status of the
resource.

Public Network Access
[public_network_access]

The status of public network accessibility for
the resource.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The unique identifier of the tenant containing
the resource.

Version [version]

The version of the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Data Factory - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical location where the resource
is deployed.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2391


<!-- page 2392 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Resource type [resource_type]

Type of resource. The value is set to
microsoft.datafactory/factories.

Description [short_description]

Description of the resource or service.

Version [version]

The version of the resource.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Data Factory
References
[cmdb_azure_data_factory_data_factory]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Data Protection Backup Vault pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2392


<!-- page 2393 -->
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Data Protection Backup Vault - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Data Protection - Backup Vault [cmdb_azure_data_protection_backup_vault]
Field

Description

Kind [kind]

The type or category of the resource.

Location [location]

The geographic location where the resource is
deployed.

Object Id [object_id]

The unique identifier for the resource.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The identifier of the Azure Active Directory
tenant.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Data Protection Backup Vault - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographic location where the resource is
deployed.

Name [name]

The name given to the resource.

Object ID [object_id]

The unique identifier for the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.dataprotection/backupvaults.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2393


<!-- page 2394 -->
CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Data Protection
References
- Backup Vault
[cmdb_azure_data_protection_backup_vault]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Databricks Workspace pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2394


<!-- page 2395 -->
Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Databricks Workspace - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Databricks - Workspace [cmdb_azure_databricks_workspace]
Field

Description

Kind [kind]

The model or configuration type of the
resource.

Location [location]

Geographical region where the resource is
deployed.

Object Id [object_id]

The unique identifier of the resource.

Provisioning State [provisioning_state]

The current provisioning state of the resource.

Public Network Access
[public_network_access]

Indicates whether public network access is
enabled for the resource.

Resource Group [resource_group]

Name of the resource group.

SKU name [sku_name]

The stock keeping unit (SKU) that defines the
resource's pricing tier.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The identifier for the Azure Active Directory
tenant.

Workspace ID [workspace_id]

The unique identifier for the workspace
associated with the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Databricks Workspace - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

Geographical region where the resource is
deployed.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2395


<!-- page 2396 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Resource type [resource_type]

Type of resource. The value is set to
microsoft.databricks/workspaces.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Databricks - Workspace References
[cmdb_azure_databricks_workspace]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Dev Center pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2396


<!-- page 2397 -->
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Dev Center - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Dev Center [cmdb_azure_dev_centers_dev_center]
Field

Description

Object Id [object_id]

The unique resource identifier in Azure
Resource Manager format.

Kind [kind]

The specific type or classification of the
resource.

DC Location [location]

The Azure datacenter region where the
resource is located.

Resource Group [resource_group]

The name of the Azure Resource Group
containing the resource.

Subscription Id [subscription_id]

The unique identifier of the Azure subscription.

Tenant Id [tenant_id]

The unique identifier of the Azure Active
Directory tenant.

Provisioning State [provisioning_state]

The current state of resource provisioning. For
example: Succeeded or Failed.

Configuration Item [configuration_item]

References the Cloud App Server
[cmdb_ci_cloud_appserver] table.

Dev Center URI [dev_center_uri]

The Uniform Resource Identifier (URI) endpoint
for connecting to the Dev Center resource.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Dev Center - Extended Inventory(LP) pattern.
Cloud App Server [cmdb_ci_cloud_appserver]
Field

Description

Object ID [object_id]

The unique resource identifier in Azure
Resource Manager format.

Name [name]

The name of the resource.

Type [type]

Type of resource. The value is set to
microsoft.devcenter/devcenters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2397


<!-- page 2398 -->
Cloud App Server [cmdb_ci_cloud_appserver] (continued)
Field

Description

Location [location]

The Azure datacenter region where the
resource is located.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The Azure - Dev Center - Extended Inventory(LP) pattern creates these relationships to support
Azure Dev Center discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud App Server
[cmdb_ci_cloud_appserver]

Cloud App Server
[cmdb_ci_cloud_appserver]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Dev Center
References
[cmdb_azure_dev_centers_dev_center]

Cloud App Server
[cmdb_ci_cloud_appserver]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Disk Encryption Set pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2398


<!-- page 2399 -->
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Disk Encryption Set - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Disk Encryption Set [cmdb_azure_disk_encryption_set_disk_encryption_set]
Field

Description

Encryption Type [encryption_type]

The method used to encrypt the resource
data.

Identity type [identity_type]

The classification of the identity assigned to
the resource. For example: SystemAssigned or
UserAssigned.

Key Url [key_url]

The URL where the encryption key is stored or
accessible.

Location [location]

The geographic region where the resource is
deployed.

Object Id [object_id]

The unique identifier of the resource.

Provisioning State [provisioning_state]

The current status of the resource provisioning
process.

Resource Group [resource_group]

Name of the resource group.

Tenant Id [tenant_id]

The identifier for the tenant that owns the
resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Disk Encryption Set - Extended Inventory(LP) pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2399


<!-- page 2400 -->
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographic region where the resource is
deployed.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.compute/diskencryptionsets.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Disk Encryption Set
References
[cmdb_azure_disk_encryption_set_disk_encryption_set]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure DNS zones and record sets discovery using Patterns
The Discovery and Service Mapping Patterns application uses the Azure - DNS Zones (LP) and
Azure - DNS Zone Recordsets (LP) Patterns to discover Azure Domain Name System (DNS)
definitions (zones and their respective record sets). Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2400


<!-- page 2401 -->
To learn about Azure DNS zones and record sets and their version that you can discovery, refer to
Detailed information on products discovered by ITOM Visibility.
For more information on Azure cloud discovery, see Discovery for Microsoft Azure Cloud.

Prerequisites
Verify privileges
On the Microsoft Azure Console, provide a user with the API Management Service
Reader role.
Create Azure Service Principal credentials
For more information see: Create Azure cloud credentials.
Configure Azure service account
For more information, see Set up a cloud account for Azure.
Create discovery schedule
Create a schedule for the relevant Azure service accounts. For more information,
see Create a discovery schedule in Cloud Discovery Workspace.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Azure - DNS Zones (LP) and Azure DNS Zone Recordsets (LP) Patterns.
Resources discovered by the Azure - DNS Zones (LP) pattern
DNS Zone [cmdb_ci_dns_zone]
Field

Description

Name [name]

The name of the DNS Zone.

Number Of RecordSets
[number_of_recordsets]

The number of the recordsets defined
within the DNS Zone.

Operational status [operational_status]

The operational status of the DNS Zone.

State [state]

The state of the DNS Zone.

Install Status [install_status]

The install status of the DNS Zone.

Comments [comments]

The field for general comments.

Resources discovered by the Azure - DNS Zone Recordsets (LP) pattern
DNS Alias [cmdb_ci_dns_alias]
Field

Description

Name [name]

The name of the DNS alias record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2401


<!-- page 2402 -->
DNS Alias [cmdb_ci_dns_alias] (continued)
Field

Description

IP Address
[ip_address]

IP address of the DNS alias record.

Comments
[comments]

Unique identifier for an Azure DNS zone combining service
account ID, DNS zone name, and a fixed hash suffix.

Operational status
[operational_status]

The operational status of the DNS alias record.

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

The name of the DNS Name record.

Operational status [operational_status]

The operational status of the DNS
record.

Comments [comments]

Unique identifier for an Azure DNS zone
combining service account ID, DNS
zone name, and a fixed hash suffix.

CI relationships
These relationships are created to support Azure DNS zone discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

DNS Zone
[cmdb_ci_dns_zone]

These relationships are created to support Azure DNS zone record set discovery.

CI

Relationship

CI

DNS Zone
[cmdb_ci_dns_zone]

Contains::Contained by

DNS Name
[cmdb_ci_dns_name]

DNS Zone
[cmdb_ci_dns_zone]

Contains::Contained by

DNS Alias [cmdb_ci_dns_alias]

DNS Name
[cmdb_ci_dns_name]

Used by::Uses

DNS Alias [cmdb_ci_dns_alias]

Azure Event Grid System Topic discovery with Patterns
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2402


<!-- page 2403 -->
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Event Grid System Topic - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Event Grid - System Topic [cmdb_azure_event_grid_system_topic]
Field

Description

Kind [kind]

The specific kind or stock keeping unit (SKU)
of the resource, detailing its capabilities or
configuration.

Metric Resource Id [metric_resource_id]

The identifier used for accessing metrics
related to the resource.

Object Id [object_id]

The unique identifier of the resource within
Azure.

Provisioning State [provisioning_state]

The current status of the resource's
provisioning process.

Resource Group [resource_group]

Name of the resource group.

Subscription Id [subscription_id]

The subscription ID.

Tenant Id [tenant_id]

The unique identifier for the Azure Active
Directory tenant.

Topic Type [topic_type]

The category or type of the event topic.

Configuration Item [configuration_item]

References the Cloud Messaging Service
[cmdb_ci_cloud_messaging_service] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Event Grid System Topic - Extended Inventory(LP) pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2403


<!-- page 2404 -->
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the resource is
hosted.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier of the resource within
Azure.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
microsoft.eventgrid/systemtopics.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Cloud Messaging Service
Hosted on::Hosts
[cmdb_ci_cloud_messaging_service]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Event Grid
References
- System Topic
[cmdb_azure_event_grid_system_topic]

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Event Hub Namespace pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2404


<!-- page 2405 -->
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Event Hub Namespace - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Event Hub - Namespace [cmdb_azure_event_hub_namespace]
Field

Description

Kind [kind]

The nature or subtype of the resource, often
describing its specific role or variation.

Location [location]

The geographical location where the resource
is hosted.

Minimum TLS Version [minimum_tls_version]

The minimum Transport Layer Security (TLS)
version required by the resource for secure
connections.

Object Id [object_id]

The unique identifier of the resource.

Provisioning State [provisioning_state]

The current status of the resource provisioning
process.

Public Network ccess
[public_network_access]

Indicates whether the resource can be
accessed via the public network.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The identifier of the Azure Active Directory
tenant.

Configuration Item [configuration_item]

References the Cloud Messaging Service
[cmdb_ci_cloud_messaging_service] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2405


<!-- page 2406 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Event Hub Namespace - Extended Inventory(LP) pattern.
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical location where the resource
is hosted.

Name [name]

The name given to the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
microsoft.eventhub/namespaces.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Cloud Messaging Service
Hosted on::Hosts
[cmdb_ci_cloud_messaging_service]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Event Hub - Namespace References
[cmdb_azure_event_hub_namespace]

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Firewall Network Security pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2406


<!-- page 2407 -->
Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Network Security Azure Firewall - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Network Security - Azure Firewall [cmdb_azure_network_security_azure_firewall]
Field

Description

Object Id [object_id]

The unique identifier of the resource.

Kind [kind]

The specific resource kind or sub-type (if
applicable).

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the Azure Resource Group
containing the resource.

Subscription Id [subscription_id]

The identifier of the Azure subscription hosting
the resource.

Tenant Id [tenant_id]

The identifier for the Azure Active Directory
tenant.

Provisioning State [provisioning_state]

The current lifecycle state of the resource. For
example: Succeeded or Updating.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Firewall Policy [firewall_policy]

The identifier or reference to the firewall policy
applied to the Azure Firewall resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2407


<!-- page 2408 -->
Azure Network Security - Azure Firewall [cmdb_azure_network_security_azure_firewall]
(continued)
Field

Description

Tier [tier]

The service or performance tier assigned to
the resource.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Network Security Azure Firewall - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The unique identifier of the resource.

Name [name]

The name assigned to the resource.

Location [location]

The Azure region where the resource is
deployed.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.network/azurefirewalls.

CI relationships
The Azure - Network Security Azure Firewall - Extended Inventory(LP) pattern creates these
relationships to support Azure Firewall Network Security discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Network Security
References
- Azure Firewall
[cmdb_azure_network_security_azure_firewall]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2408


<!-- page 2409 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Microsoft Azure Functions discovery with Patterns
The Discovery and Service Mapping Patterns application uses the Azure - Functions (LP) and
Azure - Functions TD Patterns to discover Azure Functions apps and map them in the context
of application services. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Azure Functions detailed information
Detailed information on products discovered by ITOM Visibility
Azure service account
Configure the Azure service account. For more information, see Set up a cloud
account for Azure
Azure Principal credentials
On the ServiceNow AI Platform, create a service account for cloud discovery. Set
the account Id to the Azure Service Principal as it appears at the Microsoft Azure
Console. For more information see: Create Azure cloud credentials
Privileges
On the Microsoft Azure Console, provide a user with the API Management Service
Reader role.
Run Azure Cloud discovery
For detailed information, see: Discovery for Microsoft Azure Cloud
Create discovery schedule
Create a discovery schedule in Cloud Discovery Workspace

Data collected by Discovery during horizontal discovery
Table and field

Description

Azure Function [cmdb_ci_cloud_function]
name

The name of the Function app.

Object_id

The ID of the Function app.

ip_address

The IP Address of the Function app.

fqdn

The Fully Qualified Domain Name (FQDN) of
the Function app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2409


<!-- page 2410 -->
Table and field

Description

code_location_url

The URL of the Function app source code.

app_function_state

The state of the Function app.

operational_status

The operational status of the Function app.

install_status

The installation status of the Function app.

CI relationships
These relationships are created to support Azure Functions discovery:

CI

Relationship

CI

Azure Functions
[cmdb_ci_cloud_function]

Hosted on::Hosts

Azure datacenter
[cmdb_ci_azure_datacenter]

Connections found by Service Mapping during top-down discovery
Service Mapping can discover the following connections:
• Connections to the following databases: MSSql, MySql, MongoDB, and Documentum.
• HTTP connections belonging to Azure Functions environment, for example, https://scenario4hop1-azure-function.azurewebsites.net.

Note: Service Mapping does not scan java classes/jars and binary files for possible
information about outgoing HTTP connections of Azure Functions. If java classes/jars and
binary files are the only source of information about some outgoing HTTP connections,
Service Mapping does not find such HTTP connections.
Related topics
Define a Cloud REST Query for cloud computing devices
Azure Key Vault pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2410


<!-- page 2411 -->
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Key Vault - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Key Vault [cmdb_azure_key_vault_key_vault]
Field

Description

Kind [kind]

The specific form or variant of the resource
type.

Location [location]

The geographical location where the resource
is hosted.

Object Id [object_id]

The unique identifier of the resource.

Provisioning State [provisioning_state]

The current provisioning status of the
resource.

Public Network Access
[public_network_access]

Indicates whether the resource is accessible
over a public network.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The unique identifier of the Azure Active
Directory tenant to which the resource
belongs.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Key Vault - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical location where the resource
is hosted.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier of the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2411


<!-- page 2412 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.keyvault/vaults.

Description [short_description]

Description of the resource or service.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Key Vault
References
[cmdb_azure_key_vault_key_vault]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Log Analytics Workspace pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2412


<!-- page 2413 -->
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Log Analytics Workspace - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Log Analytics - Workspace [cmdb_azure_log_analytics_workspace]
Field

Description

Object Id [object_id]

The unique identifier of the Azure resource.

Kind [kind]

The specific kind or variant of the resource.

DC Location [location]

The geographical region where the resource is
deployed.

Resource Group [resource_group]

The Azure resource group to which the
resource belongs.

Subscription Id [subscription_id]

The unique identifier of the Azure subscription
containing the resource.

Tenant Id [tenant_id]

The identifier of the Azure Active Directory
tenant associated with the resource.

Provisioning State [provisioning_state]

The current lifecycle state of the resource. For
example: Succeeded, Creating, or Failed.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Customer Id [customer_id]

The unique identifier of the Log Analytics
workspace or customer instance.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Log Analytics Workspace - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The unique identifier of the Azure resource.

Name [name]

The name of the resource.

Location [location]

The geographical region where the resource is
deployed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2413


<!-- page 2414 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.operationalinsights/workspaces.

CI relationships
The Azure - Log Analytics Workspace - Extended Inventory(LP) pattern creates these
relationships to support Azure Log Analytics Workspace discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Log Analytics
References
- Workspace
[cmdb_azure_log_analytics_workspace]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Logic App pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2414


<!-- page 2415 -->
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Logic App - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Logic App [cmdb_azure_logic_app_logic_app]
Field

Description

Access Endpoint [access_endpoint]

The endpoint URL used for accessing the
resource.

Identity [identity]

The identity associated with the resource for
access and security purposes.

Kind [kind]

The specific subcategory or variant of the
resource.

Location [location]

The geographical region where the resource is
deployed.

Object Id [object_id]

The unique identifier of the resource.

Provisioning State [provisioning_state]

The current provisioning state of the resource.

Resource Group [resource_group]

Name of the resource group.

State [state]

The overall current operational state of the
resource.

Subscription Id [subscription_id]

The subscription ID.

Tenant Id [tenant_id]

The identifier of the tenant that owns the
resource.

Type [type]

The type or category of the resource.

Configuration Item [configuration_item]

References the Cloud Function
[cmdb_ci_cloud_function] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Logic App - Extended Inventory(LP) pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2415


<!-- page 2416 -->
Cloud Function [cmdb_ci_cloud_function]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the resource is
deployed.

Name [name]

The name assigned to the resource.

Object ID [object_id]

The unique identifier of the resource in
the following format: /subscriptions/
{subscriptionId}/resourceGroups/
{resouceGroupName}/providers/
Microsoft.logic/workflows/
{workflowName}.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Function
[cmdb_ci_cloud_function]

Cloud Function
[cmdb_ci_cloud_function]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Logic App
References
[cmdb_azure_logic_app_logic_app]

Cloud Function
[cmdb_ci_cloud_function]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Managed Identity User Assigned Identity pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2416


<!-- page 2417 -->
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Managed Identity User Assigned Identity - Extended Inventory(LP)
pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Managed Identity - User Assigned Identity
[cmdb_azure_managed_identity_user_assigned_identity]
Field

Description

Client ID [client_id]

The unique identifier for an Azure Active
Directory (Azure AD) application, also known
as a client.

Location [location]

The geographical region where the resource is
deployed.

Object Id [object_id]

The unique identifier of the resource.

Principal ID [principal_id]

The unique identifier of the principal service or
user associated with the resource.

Resource Group [resource_group]

Name of the resource group.

Tenant ID [tenant_id]

The unique identifier of the Azure AD tenant.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Managed Identity User Assigned Identity - Extended Inventory(LP) pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2417


<!-- page 2418 -->
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the resource is
deployed.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set
to microsoft.managedidentity/
userassignedidentities.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Managed Identity
References
- User Assigned Identity
[cmdb_azure_managed_identity_user_assigned_identity]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Networks IP Group pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2418


<!-- page 2419 -->
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Networks IP Group - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Networks - IP Group [cmdb_azure_networks_ip_group]
Field

Description

Location [location]

The geographic region where the resource is
hosted.

Object Id [object_id]

A unique identifier for the resource within
Azure.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The identifier for the Azure Active Directory
tenant associated with the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Networks IP Group - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2419


<!-- page 2420 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Location [location]

The geographic region where the resource is
hosted.

Name [name]

The name assigned to the resource.

Object ID [object_id]

A unique identifier for the resource within
Azure.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.network/ipgroups.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Networks - IP Group
References
[cmdb_azure_networks_ip_group]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Private Link Private Endpoint pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2420


<!-- page 2421 -->
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Private Link Private Endpoint - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Private Link - Private Endpoint [cmdb_azure_private_link_private_endpoint]
Field

Description

Kind [kind]

The specific category or variant of the
resource type.

Location [location]

The geographic region where the resource is
deployed.

Object Id [object_id]

The unique identifier for the resource.

Provisioning State [provisioning_state]

The current provisioning or deployment state
of the resource.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Tenant ID [tenant_id]

The identifier for the tenant associated with
the resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Private Link Private Endpoint - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2421


<!-- page 2422 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Location [location]

The geographic region where the resource is
deployed.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier for the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.network/privateendpoints.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Private Link
References
- Private Endpoint
[cmdb_azure_private_link_private_endpoint]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Recovery Services Vault pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2422


<!-- page 2423 -->
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Recovery Services Vault - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Recovery Services - Vault [cmdb_azure_recovery_services_vault]
Field

Description

Object Id [object_id]

The unique resource identifier for the Azure
resource.

Kind [kind]

The resource kind, indicating its specific
variant or implementation.

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the resource group containing
the resource.

Subscription Id [subscription_id]

The Azure subscription ID under which the
resource exists.

Tenant Id [tenant_id]

The Azure Active Directory tenant ID
associated with the resource.

Provisioning State [provisioning_state]

The current provisioning state of the resource.
For example: Succeeded, Failed, or Updating.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Recovery Services Vault - Extended Inventory(LP) pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2423


<!-- page 2424 -->
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The unique resource identifier for the Azure
resource.

Name [name]

The name assigned to the resource.

Location [location]

The Azure region where the resource is
deployed.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.recoveryservices/vaults.

CI relationships
The Azure - Recovery Services Vault - Extended Inventory(LP) pattern creates these relationships
to support Azure Recovery Services Vault discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Recovery
References
Services - Vault
[cmdb_azure_recovery_services_vault]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Recovery Services Vault Backup Item pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2424


<!-- page 2425 -->
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Recovery Services Vault Backup Item - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Recovery Services - Vault Backup Item
[cmdb_azure_recovery_services_vault_backup_item]
Field

Description

Object Id [object_id]

The unique identifier of the Azure resource.

Kind [kind]

The specific kind or sub-type of the resource.

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the resource group containing
the resource.

Subscription Id [subscription_id]

The unique identifier of the Azure subscription.

Tenant Id [tenant_id]

The unique identifier of the Azure Active
Directory tenant.

Backup Management Type
[backup_management_type]

The method or platform by which backups are
managed.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Last Backup Status [last_backup_status]

The result or outcome of the most recent
backup operation.

Policy Name [policy_name]

The name of the backup policy associated
with the resource.

Protection State [protection_state]

The operational state of backup protection on
the resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2425


<!-- page 2426 -->
Azure Recovery Services - Vault Backup Item
[cmdb_azure_recovery_services_vault_backup_item] (continued)
Field

Description

Protection Status [protection_status]

The current protection status assigned to the
resource.

Virtual Machine Id [virtual_machine_id]

The unique identifier of the associated virtual
machine.

Workload Type [workload_type]

The type of workload or application being
protected by the backup.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Recovery Services Vault Backup Item - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The unique identifier of the Azure resource.

Name [name]

The name of the Azure resource.

Location [location]

The Azure region where the resource is
deployed.

Comments [comments]

The unique identifier of the backup vault
associated with the resource.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.recoveryservices/vaults/
backupfabrics/protectioncontainers/
protectedItems.

CI relationships
The Azure - Recovery Services Vault Backup Item - Extended Inventory(LP) pattern creates these
relationships to support Azure Recovery Services Vault Backup Item discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Recovery Services
References
- Vault Backup Item
[cmdb_azure_recovery_services_vault_backup_item]

Cloud Resource
[cmdb_ci_cmp_resource]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2426


<!-- page 2427 -->
Microsoft Azure resource inventory discovery
The ServiceNow Discovery application uses the Azure Resource Inventory (LP) pattern to find
resources available through Azure that don’t have a dedicated pattern. Discovering some of
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
You can discover up to 10 thousand resources using the Azure Resource Inventory (LP) pattern.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Azure service principal
Verify the Azure service principal is configured. For more information, see Discovery
for Microsoft Azure Cloud
Privileges
For versions 1.3.0 and later:
On the Microsoft Azure Console, provide a user with the API Management Service
Reader role with permissions to run the following REST POST request:
"https://management.<resource url>/providers/
microsoft.resourcegraph/resources?api-version=2022-10-01"
<resource url> – The URL varies based on the Azure account type, like "azure.com"
or government site address.
For versions 1.0.99 and earlier:
On the Microsoft Azure Console, provide a user with the API Management Service
Reader role with permissions to run the following REST GET request:
"https://management.azure.com/subscriptions/<subscription
id>/resources"
Create a Cloud Discovery schedule
Create a schedule for the relevant Azure service account as described in Create
discovery schedules for cloud resources
Fine-tune Azure inventory discovery using the Resource Inclusion List
If your deployment has custom patterns for Azure discovery, ensure that you don’t
discover Azure resources twice.

Note: Leaving the [pre_resource_whitelist] table empty causes the Pattern to
populate all resources and it might cause performance issues.
1. Ensure that the application scope is Discovery and Service Mapping Patterns:
a. Navigate to Settings > Developer.
b. Select Discovery and Service Mapping Patterns from the
Application list.
2. Navigate to System Definitions > Tables.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2427


<!-- page 2428 -->
3. Open the Cloud Inventory Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table.
4. Under Related Links, click Show List.
5. Select resource types for which you have custom patterns, and select Delete
from the Actions on selected rows list.
The Cloud Inventory Resource Inclusion List is predefined with common services.
You can expand the inclusion list with additional resource types that you want
the pattern to discover. The names of these resource types must conform to the
appropriate vendor naming conventions.

Note: When you modify the out-of-the-box inclusion list, it is no longer
updated automatically in application updates. You must maintain the
customized list on your own.
1. Open the Cloud Inventory Resource Inclusion List
[sa_cloud_inventory_resource_whitelist] table.
2. Click New.
3. Fill in the form, and then click Submit.

Field

Description

Cloud Vendor

The vendor of the resource type: Azure.

Resource Type

The Azure resource type value.

Application

The application scope: Discovery and Service
Mapping Patterns.

The changes are applied the next time you run the pattern.
Modify the ServiceNow related entries
1. Navigate to Related Entries.
2. Click New.
3. For the identifier, enter cmdb_ci_cmp_resource.
4. For the related table, select Key Value [cmdb_key_value].
5. For the referenced field, select Configuration Item.
6. For the criterion attributes, add Key and Value.
You may need to click the lock icon

to view and change the criterion attributes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2428


<!-- page 2429 -->
Data collected by Discovery during horizontal discovery
Table and field

Additional information

Cloud Resource [cmdb_ci_cmp_resource]
Name

A descriptive name used to identify the Azure
resource.

Resource type

The type of the resource, for example network,
load balancer.

Object ID

The ID of the Azure resource.

Description

The text populated during discovery that
specifies that this resource is available from
Azure.

Key Value [cmdb_key_value]
Key

The Azure tag key name.

Value

The Azure tag value name.

CI relationships
These relationships are created to support Azure resource inventory discovery:

CI

Relationship

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on:Hosts

CI

Azure datacenter
[cmdb_ci_azure_datacenter]

Related topics
https://learn.microsoft.com/en-us/azure/governance/resource-graph/reference/supportedtables-resources
Azure Service Bus Namespace pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2429


<!-- page 2430 -->
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Service Bus Namespace - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Service Bus - Namespace [cmdb_azure_service_bus_namespace]
Field

Description

Identity [identity]

The identity information associated with the
resource, often used for authentication or
access control.

Location [location]

The geographical location where the resource
is hosted.

Object Id [object_id]

The unique identifier of the resource.

Resource Group [resource_group]

Name of the resource group.

Status [status]

The current status or state of the resource.

Subscription ID [subscription_id]

The subscription ID.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Service Bus Namespace - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical location where the resource
is hosted.

Name [name]

The name of the resource.

Object ID [object_id]

The unique identifier of the resource.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.servicebus/namespaces.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2430


<!-- page 2431 -->
Cloud Resource [cmdb_ci_cmp_resource] (continued)
Field

Description

Description [short_description]

Description of the resource or service.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Service
References
Bus - Namespace
[cmdb_azure_service_bus_namespace]

Cloud Resource
[cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Service Bus Queue pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2431


<!-- page 2432 -->
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Service Bus Queue - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Service Bus - Queue [cmdb_azure_service_bus_queue]
Field

Description

Enable Batched Operations
[enable_batched_operations]

Indicates whether batched operations are
enabled for the queue.

Enable Partitioning [enable_partitioning]

Indicates whether message partitioning is
enabled for load distribution across multiple
message brokers.

DC Location [location]

The geographic region where the Service Bus
queue is deployed.

Max Message Size In KB
[max_message_size_in_kb]

The maximum allowed size of a single
message in kilobytes (KB).

Max Size In MB [max_size_in_mb]

The maximum storage size of the queue in
megabytes (MB).

Object Id [object_id]

The unique identifier for the Service Bus
queue.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Status [status]

The current status of the Service Bus queue.

Configuration Item [configuration_item]

References the Cloud Messaging Service
[cmdb_ci_cloud_messaging_service] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Service Bus Queue - Extended Inventory(LP) pattern.
Cloud Messaging Service [cmdb_ci_cloud_messaging_service]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographic region where the Service Bus
queue is deployed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2432


<!-- page 2433 -->
Cloud Messaging Service [cmdb_ci_cloud_messaging_service] (continued)
Field

Description

Name [name]

The name of the Service Bus queue.

Object ID [object_id]

The unique identifier for the Service Bus
queue.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Type [type]

Type of resource. The value is set to
Microsoft.ServiceBus/namespaces/queues.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Contains::Contained by

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Cloud Messaging Service
Hosted on::Hosts
[cmdb_ci_cloud_messaging_service]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Service Bus - Queue
References
[cmdb_azure_service_bus_queue]

Cloud Messaging Service
[cmdb_ci_cloud_messaging_service]

Azure Service Bus Topic pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2433


<!-- page 2434 -->
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Service Bus Topic - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Service Bus - Topic [cmdb_azure_service_bus_topic]
Field

Description

Enable Batched Operations
[enable_batched_operations]

Indicates whether batched operations are
enabled for the topic.

Enable Partitioning [enable_partitioning]

Specifies if the topic is partitioned to support
scalability.

DC Location [location]

The geographical region where the topic is
deployed.

Max Message Size In KB
[max_message_size_in_kb]

The maximum size of any message that can be
sent to the topic, measured in kilobytes (KB).

Max Size In MB [max_size_in_mb]

The maximum storage limit for the topic in
megabytes (MB).

Object Id [object_id]

The unique identifier for the topic resource.

Status [status]

The status of the topic resource. For example:
Active or Disabled.

Subscription Count [subscription_count]

The number of active subscriptions
associated with the topic.

Resource Group [resource_group]

Name of the resource group.

Subscription ID [subscription_id]

The subscription ID.

Configuration Item [configuration_item]

References the Cloud Topic
[cmdb_ci_cloud_topic] table.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Service Bus Topic - Extended Inventory(LP) pattern.
Cloud Topic [cmdb_ci_cloud_topic]
Field

Description

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Location [location]

The geographical region where the topic is
deployed.

Name [name]

The name of the topic within the Service Bus
namespace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2434


<!-- page 2435 -->
Cloud Topic [cmdb_ci_cloud_topic] (continued)
Field

Description

Object ID [object_id]

The unique identifier of the resource in
the following format: /subscriptions/
{subscriptionId}/resourceGroups/
{resourceGroupName}/providers/
Microsoft.ServiceBus/namespaces/
{namespaceName}/topics/{topicName}

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Description of the resource or service.

CI relationships
The pattern creates these relationships to support discovery.

CI

Relationship

CI

Cloud Resource
[cmdb_ci_cmp_resource]

Contains::Contained by

Cloud Topic
[cmdb_ci_cloud_topic]

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Topic
[cmdb_ci_cloud_topic]

Cloud Topic
[cmdb_ci_cloud_topic]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Service Bus - Topic
References
[cmdb_azure_service_bus_topic]

Cloud Topic
[cmdb_ci_cloud_topic]

Azure Service Endpoint Policy pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2435


<!-- page 2436 -->
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB tables
when running the Azure - Service Endpoint Policy - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Service Endpoint Policy
[cmdb_azure_service_endpoint_policy_service_endpoint_policy]
Field

Description

Object Id [object_id]

The unique identifier of the Azure resource.

Kind [kind]

The specific kind or stock-keeping unit (SKU)
of the resource.

DC Location [location]

The geographic region where the resource is
deployed.

Resource Group [resource_group]

The name of the resource group containing
the resource.

Subscription Id [subscription_id]

The Globally Unique Identifier (GUID) of the
subscription that owns the resource.

Tenant Id [tenant_id]

The GUID of the Azure AD tenant the resource
belongs to.

Provisioning State [provisioning_state]

The current provisioning status of the
resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Azure Service Endpoint Policy Definition [cmdb_azure_service_endpoint_policy_definition]
Field

Description

Object Id [object_id]

The unique identifier of the Azure resource.

Name [name]

The name assigned to the resource.

Type [type]

Type of resource. The value is set to
microsoft.network/serviceendpointpolicies.

Provisioning State [provisioning_state]

The current provisioning status of the
resource.

Configuration Item [configuration_item]

References the Cloud Resource
[cmdb_ci_cmp_resource] table.

Service [service]

The specific Azure service related to the
resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2436


<!-- page 2437 -->
Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Service Endpoint Policy - Extended Inventory(LP) pattern.
Cloud Resource [cmdb_ci_cmp_resource]
Field

Description

Object ID [object_id]

The unique identifier of the Azure resource.

Name [name]

The name assigned to the resource.

Location [location]

The geographic region where the resource is
deployed.

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Resource type [resource_type]

Type of resource. The value is set to
microsoft.network/serviceendpointpolicies.

CI relationships
The Azure - Service Endpoint Policy - Extended Inventory(LP) pattern creates these relationships
to support Azure Service Endpoint Policy discovery.

CI

Relationship

CI

Azure Service Endpoint
References
Policy Definition
[cmdb_azure_service_endpoint_policy_definition]

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Subnet
[cmdb_ci_cloud_subnet]

Uses::Used by

Cloud Resource
[cmdb_ci_cmp_resource]

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Cloud Resource
[cmdb_ci_cmp_resource]

Cloud Resource
[cmdb_ci_cmp_resource]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Service Endpoint Policy References
Cloud Resource
[cmdb_azure_service_endpoint_policy_service_endpoint_policy][cmdb_ci_cmp_resource]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2437


<!-- page 2438 -->
Azure Virtual Machine Scale Sets (VMSS) Instance discovery
The Discovery and Service Mapping Patterns application uses the Azure - VM Scale Set (LP)
and the Azure VM Instance - Uniform Scale Set patterns to find Azure Virtual Machine Scale Sets
(VMSS). Discovering some of these resources may require updating to the latest version of the
Discovery and Service Mapping Patterns application from the ServiceNow Store.
VMSS let you create and manage a group of load balanced virtual machines (VMs). The number
of VM instances can automatically increase or decrease in response to demand or a defined
schedule. There Uniform Orchestration modes Flexible and achieve.
• VMSS with Flexible Orchestration achieves high availability at scale with identical or multiple
virtual machine types. With Flexible orchestration, Azure provides a unified experience across
the Azure VM ecosystem.
• VMSS with Uniform Orchestration optimized for large-scale stateless workloads with identical
instances. VMSS with Uniform orchestration use a virtual machine profile or template to scale
up to desired capacity. While there is some ability to manage or customize individual virtual
machine instances, Uniform uses identical VM instances.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about VMSS and their versions that you can discover, refer to Detailed information on
products discovered by ITOM Visibility.

Prerequisites
Verify the Azure discovery prerequisites section in Microsoft Azure Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Azure - VM Scale Set (LP) Pattern.
Instance Scale Set [cmdb_ci_instance_scale_set]
Field

Description

Install Status
[install_status]

Install status of the instance scale set. Default value is Installed.

State [state]

Provisioning state of the instance scale set. Possible values are
Available or Terminated.

Object ID [object_id]

A unique identifier for the instance scale set.

Name [name]

Name of the instance scale set.

Discovery populates the data in the CMDB when running the Azure VM Instance - Uniform Scale
Set pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2438


<!-- page 2439 -->
Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Network adapters [nics]

Number of Network Interface Cards (NICs) attached to the virtual
machine (VM) instance.

State [state]

Current state of the instance. For example: On, Off, or
Terminated.

Install Status [install_status] Install status of the instance. Default value is Installed.
Operational status
[operational_status]

Operational status of the instance. Default value is Operational.

Disks [disks]

Number of disks attached to the instance.

Disks size (GB) [disk_size]

Total storage capacity of all disks attached to the VM, in
gigabytes (GB).

Storage Volume [cmdb_ci_storage_volume]
Field

Description

Name [name]

Name or ID for the storage volume.

Object ID [object_id]

A unique identifier, allocated by Microsoft Azure for this
resource.

Install Status [install_status]

Install status of the storage volume. Default value is
Installed.

Operational status
[operational_status]

Operational status of the storage volume. Default value is
Operational.

Cloud Mgmt Network Interface [cmdb_ci_nic]
Field

Description

Name [name]

Name or ID for the network interface.

Object ID [object_id]

A unique identifier, allocated by Microsoft Azure for this
resource.

Install Status [install_status]

Install status of the network interface. Default status is
Installed.

Operational status
[operational_status]

Operational status of the network interface. Default status is
Operational.

VNIC Endpoint [cmdb_ci_endpoint_vnic]
Field

Description

Name [name]

Name or ID for the endpoint.

Object ID [object_id]

A unique identifier, allocated by Microsoft Azure for this resource.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2439


<!-- page 2440 -->
Image [cmdb_ci_os_template]
Field

Description

Name [name]

Name or ID for the image.

Object ID [object_id]

A unique identifier, allocated by Microsoft Azure for this
resource.

Install Status [install_status]

Install status of the image. Default value is Installed.

Operational status
[operational_status]

Operational status of the image. Default value is
operational.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud OS Images,
you may notice an unusually large number of records. To avoid this issue, you can store
the discovered OS images in the Cloud Image [cmdb_ci_cloud_os_image] table. For more
information, see Enable Cloud OS Image discovery.
Hardware Type [cmdb_ci_compute_template]
Field

Description

Name [name]

Name of the hardware type.

Note: When using the Hardware Type [cmdb_ci_compute_template] table to store
the hardware types, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered hardware types in the Cloud Hardware Type
[cmdb_ci_cloud_hardware_type] table. For more information, see Enable the Cloud
Hardware Type class extension.

CI relationships
Discovery creates these relationships to support the VMSS discovery, when running the Azure VM Scale Set (LP) pattern.

CI

Relationship

CI

Resource Group
[cmdb_ci_resource_group]

Contains::Contained
by

Instance Scale Set
[cmdb_ci_instance_scale_set]

Instance Scale Set
[cmdb_ci_instance_scale_set]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Instance Scale Set
[cmdb_ci_instance_scale_set]

Consumes::Consumed Load Balancer Pool
by
[cmdb_ci_lb_pool]

Discovery creates these relationships to support the VMSS discovery, when running the when
running the Azure - VM Scale Set (LP) pattern.

CI

Relationship

CI

Virtual Machine Instance
[cmdb_ci_vm_instance]

Managed by::Manages

Instance Scale Set
[cmdb_ci_instance_scale_set]

Storage Volume
[cmdb_ci_storage_volume]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2440


<!-- page 2441 -->
CI

Relationship

CI

Block Endpoint
[cmdb_ci_endpoint_block]

Implement End Point
Storage Volume
To::Implement End Point From [cmdb_ci_storage_volume]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Use End Point To::Use End
Point From

Block Endpoint
[cmdb_ci_endpoint_block]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Hardware Type
Hosted on::Hosts
[cmdb_ci_compute_template]

Azure Datacenter
[cmdb_ci_azure_datacenter]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Hardware Type
[cmdb_ci_compute_template]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Cloud Hardware Type
[cmdb_ci_cloud_hardware_type]

Cloud Mgmt Network
Interface [cmdb_ci_nic]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Implement End Point
Cloud Mgmt Network Interface
To::Implement End Point From [cmdb_ci_nic]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Use End Point To::Use End
Point From

VNIC Endpoint
[cmdb_ci_endpoint_vnic]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Image [cmdb_ci_os_template]

Image
[cmdb_ci_os_template]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Tags discovery
Both the Azure - VM Scale Set (LP) and the Azure VM Instance - Uniform Scale Set patterns
collect tags and populate them in the Key Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Azure Web Application Firewall Policy pattern-based discovery
Discovery and Service Mapping Patterns finds Azure services on your cloud environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Microsoft Azure discovery prerequisites
For more information, see the prerequisites section in Microsoft Azure Cloud
discovery using patterns.
Enable the relevant pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2441


<!-- page 2442 -->
The pattern for this service is disabled by default. Starting with Visibility Content
version 6.28.0, activating or deactivating a pattern won't be considered a
customization, and it will continue to receive updates. Patterns that were previously
activated or deactivated will reset to the latest predefined version after upgrading
while retaining the last active field value. For more information on enabling patterns,
see Activate a disabled pattern.
Configure the Discovery schedule to support GovCloud
Discovering Azure GovCloud (US) accounts requires using a datacenter URL when
setting up an Azure service account. For more information, see Set up Azure service
accounts.
Discovery and Service Mapping Patterns application populates data in both CMDB and
non-CMDB tables.

Data stored in non-CMDB tables
Discovery and Service Mapping Patterns application populates data in the non-CMDB table
when running the Azure - Web Application Firewall Policy - Extended Inventory(LP) pattern.
You can review the non-CMDB Azure tables by navigating to All > Configuration > Azure. You
can also search the navigation filter for the specific pattern name.
Azure Web Application Firewall - Policy [cmdb_azure_web_application_firewall_policy]
Field

Description

Object Id [object_id]

The unique identifier of the resource.

Kind [kind]

The specific kind or variant of the resource.

DC Location [location]

The Azure region where the resource is
deployed.

Resource Group [resource_group]

The name of the resource group containing
the resource.

Subscription Id [subscription_id]

The subscription ID associated with the
resource.

Tenant Id [tenant_id]

The Azure Active Directory tenant ID
associated with the resource.

Provisioning State [provisioning_state]

The latest provisioning status of the resource.

Configuration Item [configuration_item]

References the Web ACL [cmdb_ci_web_acl]
table.

Policy State [policy_state]

The current state of the policy applied to the
resource.

Data stored in CMDB tables
Discovery and Service Mapping Patterns application populates data in the CMDB when running
the Azure - Web Application Firewall Policy - Extended Inventory(LP) pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2442


<!-- page 2443 -->
Web ACL [cmdb_ci_web_acl]
Field

Description

Object ID [object_id]

The unique identifier of the resource.

Name [name]

The name of the resource.

Location [location]

The Azure region where the resource is
deployed.

Default Action [default_action]

Indicates the effective operation mode of the
web application firewall (WAF) policy. Possible
values are allow and detect.
• allow: policy is running in Prevention mode
and is blocking traffic
• detect: policy is running in Detection mode
and is logging only

Install Status [install_status]

Install status of the resource. Default value is
Installed.

Operational status [operational_status]

Operational status of the resource. Default
value is Operational.

Description [short_description]

Type of resource. The value
is set to microsoft.network/
applicationgatewaywebapplicationfirewallpolicies.

CI relationships
The Azure - Web Application Firewall Policy - Extended Inventory(LP) pattern creates these
relationships to support Azure Web Application Firewall Policy discovery.

CI

Relationship

CI

Cloud Load Balancer
Protected by::Protects
[cmdb_ci_cloud_load_balancer]

Web ACL [cmdb_ci_web_acl]

Resource Group
[cmdb_ci_resource_group]

Contains::Contained by

Web ACL [cmdb_ci_web_acl]

Web ACL [cmdb_ci_web_acl]

Hosted on::Hosts

Azure Datacenter
[cmdb_ci_azure_datacenter]

Azure Web Application
References
Firewall - Policy
[cmdb_azure_web_application_firewall_policy]

Web ACL [cmdb_ci_web_acl]

Azure tag discovery
The pattern collects tags and populates them in the Key Value [cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2443


<!-- page 2444 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag name.

Value [value]

Tag value.

Oracle Cloud Infrastructure (OCI) discovery
ServiceNow Discovery uses the Oracle Cloud Infrastructure (OCI) discovery patterns to provide
real-time elasticity for enterprise applications by combining Oracle autonomous services,
integrated security, and cloud compute. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
Starting with version 1.29.0, Discovery and Service Mapping Patterns supports the discovery of
OCI GovCloud accounts.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the following applications are installed
Verify that the following applications are installed and up to date:
• Cloud Access Interface (starting from version 1.0.0)
• Visibility Content
• CMDB CI Class Models
• Discovery and Service Mapping Patterns
Configure Oracle API credentials
Ensure that your OCI credentials are configured and that your private and public
keys are converted to the RSA format. For more information, see Create Oracle API
credentials.
Create OCI service account
For more information, see Create OCI service accounts.
Create a cloud discovery schedule
To run a cloud discovery at scale, see Create a discovery schedule in Cloud
Discovery Workspace
Create a discovery schedule to run LDCs on.
1. Navigate to Discovery > Discovery Schedules.
2. Click the Cloud Discovery button.
3. In the Provider field, select OCI. Fill in the form to create a new account or select
an existing one. For more information, see Create OCI service accounts.
4. On the Select Datacenters page, filter which LDCs you want to run the discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2444


<!-- page 2445 -->
5. Under the Discover Virtual Machines (optional) page, select if you want to run
VM OS Discovery.
6. When you're finished, navigate to the Create Schedule page and select the
Finish and Run button.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Data collected by Discovery during horizontal discovery
The discovered Oracle configuration data includes the following table and fields.

Field

Description

Cloud Database (cmdb_ci_cloud_database)
name

The name of the database.

object_id

Unique identifier of the database.

operational_status

Operational status of the database.

vendor

The vendor, Oracle.

type

The Oracle database type.

version

Version of the database.

state

State of the database.

comments

The attribute is issued for the delete strategy.

install_status

Install status.

Image (cmdb_ci_os_template)
name

The image name.

object_id

Unique identifier of the image.

version

The version of the guest OS.

guest_os

The name of the guest OS.

Service Account (cmdb_ci_cloud_service_account)
name

The account name.

datacenter_type

Datacenter type.

account_id

Unique identifier of the account.

object_id

Unique identifier of the account (same value as the account id).

discovery_credentials The credentials related to the service account.
is_master_account

true when it is the root compartment. false when it is not the root
compartment.

Network (cmdb_ci_network)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2445


<!-- page 2446 -->
Field

Description

name

The network name.

object_id

Unique identifier of the network.

cidr

The cidr of the network.

domain_name

The domain name.

state

The state of the network.

NIC (cmdb_ci_nic)
name

The NIC name.

object_id

Unique identifier of the NIC.

public_ip

The public IP address.

mac_address

The MAC address.

primary

Set true/false according to the setup.

private_ip

The private ip address.

state

The state of the NIC.

Storage Volume (cmdb_ci_storage_volume)
name

The name of the storage volume.

object_id

Unique identifier of storage volume.

state

The state of the storage volume.

volume_id

Unique identifier of the storage volume (same value as the account id).

size

The storage volume size.

size_bytes

The storage volume size in bytes.

Subnet (cmdb_ci_cloud_subnet)
name

The name of the subnet.

object_id

Unique identifier of subnet.

cidr

The cidr of the subnet.

domain_name

The domain name.

state

The state of the subnet.

Virtual Machine (cmdb_ci_vm_instance)
name

The VM name.

object_id

Unique identifier of VM.

state

The state of the VM.

memory

Memory size.

cpus

Number of CPUs.

Tags are populated to the cmdb_key_value table and related to the relevant cmdb ci resource. In
order to support it, the extension sections were created for the following resources:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2446


<!-- page 2447 -->
• Autonomous DB
• Exadata DB
• Image
• Network
• NIC
• Storage Volume
• Account
• Subnet
• Virtual Machine

CI Relationships
Relationships discovered using the Oracle OCI - Availability Domain (LP) pattern
CI

Relationship

CI

cmdb_ci_oci_datacenter

Contains::Contained by

cmdb_ci_availablity_zone

Relationships discovered using the Oracle OCI - Block (LP) pattern
CI

Relationship

CI

cmdb_ci_vm_instance

Use End Point To::Use End
Point From

cmdb_ci_endpoint_block

cmdb_ci_endpoint_block

Implement End Point
To::Implement End Point From

cmdb_ci_storage_volume

Relationships discovered using the Oracle OCI - Fault Domain (LP) pattern
CI

Relationship

CI

cmdb_ci_oci_datacenter

Contains::Contained by

cmdb_ci_availability_zone

Note: When configuring a Cloud Discovery scheduler for part of the LDCs, the Oracle OCI
- Fault Domain (LP) pattern will not trigger.
Relationships using the Oracle OCI - Image (LP) pattern
CI

Relationship

CI

cmdb_ci_os_template

Hosted on::Hosts

cmdb_ci_oci_datacenter

Relationships discovered using the Oracle OCI - LDC (LP) pattern
CI

Relationship

CI

cmdb_ci_oci_datacenter

Hosted on::Hosts

cmdb_ci_cloud_service_account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2447


<!-- page 2448 -->
Relationships discovered using the Oracle OCI - Network (LP) pattern
CI

Relationship

CI

cmdb_ci_network

Hosted on::Hosts

cmdb_ci_oci_datacenter

Relationships discovered using the Oracle OCI - NIC Attachment (LP) pattern
CI

Relationship

CI

cmdb_ci_vm_instance

Use End Point To::Use End
Point From

cmdb_ci_endpoint_subnet

cmdb_ci_vm_instance

Use End Point To::Use End
Point From

cmdb_ci_endpoint_vnic

cmdb_ci_endpoint_vnic

Implement End Point
To::Implement End Point From

cmdb_ci_nic

cmdb_ci_cloud_subnet

Implement End Point
To::Implement End Point From

cmdb_ci_endpoint_subnet

Relationships discovered using the Oracle OCI - NIC (LP) pattern
CI

Relationship

CI

cmdb_ci_nic

Hosted on::Hosts

cmdb_ci_oci_datacenter

Relationships using the Oracle OCI - Storage Volume (LP) pattern
CI

Relationship

CI

cmdb_ci_availablity_zone

Contains::Contained by

cmdb_ci_storage_volume

cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_oci_datacenter

Relationships discovered using the Oracle OCI - Subnet (LP) pattern
CI

Relationship

CI

cmdb_ci_network

Contains::Contained by

cmdb_ci_cloud_subnet

Relationships using the Oracle OCI - Virtual machine (LP) pattern
CI

Relationship

CI

cmdb_ci_vm_instance

Hosted on::Hosts

cmdb_ci_oci_datacenter

cmdb_ci_vm_instance

Provisioned From::Provisioned cmdb_ci_os_template

cmdb_ci_vm_instance

Provisioned From:Provisioned

cmdb_ci_compute_template

cmdb_ci_vm_instance

DR provided by::Provides DR
for

cmdb_ci_avaliability_zone

cmdb_ci_avaliability_zone

Contains::Contained by

cmdb_ci_vm_instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2448


<!-- page 2449 -->
OpenStack resource discovery
The ServiceNow Discovery application uses OpenStack resource discovery patterns to find
OpenStack resources through REST API calls. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
Discovery uses OpenStack resource discovery patterns to run horizontal discovery.
Starting with the Discovery and Service Mapping Patterns August 2024 store release, OpenStack
resource discovery patterns support both private and public cloud discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
OpenStack requirements
• In the OpenStack Identity service catalog, find the access URL that is used
as the OpenStack identity service endpoint. For example: https://<openstack
dns>:<port>.
• Configure an OpenStack user with permissions to generate a project scope token.
Setting Domain ID, User Name, Project Name, and Password values is required for
generating a token.
MID Server requirements
Deploy and connect a dedicated MID Server for cloud discovery.
The dedicated MID Server must have access to OpenStack and an open port for
each OpenStack service to be discovered.
Credentials
On the ServiceNow AI Platform, create OpenStack credentials for the ServiceNow
cloud service account. Enter the Domain ID, User Name, Project Name, and
Password values you've configured in OpenStack requirements. For more
information, see Create and test your credentials .
Service account
On the ServiceNow AI Platform, configure a ServiceNow cloud service account
using the created OpenStack credentials and the OpenStack datacenter details.
In the Account Id field, provide the Project ID of the OpenStack Project to be
discovered.
Create a discovery schedule
For more information, see Create a discovery schedule in Cloud Discovery
Workspace.
Create an automatic discovery schedule for OpenStack service accounts—for private
cloud only
Create an automatic serverless discovery schedule for OpenStack service accounts
using the OpenStack - Discover Service Accounts pattern. For more information,
see the Auto Cloud discovery schedule for Open stack [KB1638685]
article in the
Now Support Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2449


<!-- page 2450 -->
Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the OpenStack resource discovery
patterns.
Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Object ID
[object_id]

Server UUID.

Name [name]

Server name.

Status [status]

Server status.

Description
(Optional) Server description.
[short_description]
CPUs [cpus]

Number of virtual CPUs (vCPUs) from the Flavor that the VM instance is
provisioned with.

Disks [disks]

Number of all managed volumes by Cinder that are returned from the VM
instance.

Disks size (GB)
[disk_size]

Total amount of all managed volumes by Cinder that are used by the VM
instance measured in gigabytes (GB).

Memory (MB)
[memory]

The ram value from the Flavor that the VM instance is provisioned with,
measured in megabytes (MB).

Network adapters
[nics]

Number of unique interfaces configured in the VM instance.

State [state]

Mapped status value returned for the VM instance. The OpenStack Server
statuses and their related ServiceNow State values are:
• ACTIVE: on
• RESCUED: on
• PAUSED: paused
• SUSPENDED: off
• STOPPED: off
• SOFT_DELETED: terminated
• HARD_DELETED: terminated
• RESIZED: off
• ERROR: error
• INITIALIZED: starting
For any status value not listed, the default value is off.

Cloud Key Pairs [cmdb_ci_cloud_key_pair]
Field

Description

Object ID [object_id]

Keypair UUID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2450


<!-- page 2451 -->
Cloud Key Pairs [cmdb_ci_cloud_key_pair] (continued)
Field

Description

Name [name]

Keypair name that is used to reference it.

Finger print [finger_print]

Keypair fingerprint.

Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
Field

Description

Object ID [object_id]

Load balancer ID.

Name [name]

Human-readable resource name.

Description [short_description]

(Optional) Human-readable resource description.

Install Status [install_status]

Resource provisioning status.

Operational Status [operational_status]

Resource operational status.

Load Balancer Listener [cmdb_ci_lb_listener]
Field

Description

Object ID [object_id]

Listener ID.

Name [name]

Human-readable name of the resource.

Install Status [install_status]

Provisioning status of the resource.

Listener Protocol
[listener_protocol]

Protocol for the resource. One of HTTP, HTTPS, TCP,
TERMINATED_HTTPS, or UDP.

Listener Port [listener_port]

Protocol port number for the resource.

Operational status
[operational_status]

Resource operational status.

Description
[short_description]

(Optional) Human-readable resource description.

Load Balancer Pool [cmdb_ci_lb_pool]
Field

Description

Object ID [object_id]

Pool ID.

Name [name]

Human-readable resource name.

Install Status
[install_status]

Resource provisioning status.

Operational Status
[operational_status]

Resource operational status.

Description
[short_description]

(Optional) Human-readable resource description.

Load Balancing Method
Load balancing algorithm for the pool. One of these values:
[load_balancing_method] LEAST_CONNECTIONS, ROUND_ROBIN, SOURCE_IP, or
SOURCE_IP_PORT.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2451


<!-- page 2452 -->
Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Field

Description

Object ID [object_id]

Pool member ID.

Name [name]

Human-readable resource name.

Install Status [install_status]

Resource provisioning status.

IP address [ip_address]

Back-end member server IP address.

Storage Volume [cmdb_ci_storage_volume]
Field

Description

Object ID [object_id]

Volume UUID.

Name [name]

Volume name.

Status [status]

Volume status.

Description [short_description]

(Optional) Human-readable description.

Storage type [storage_type]

Associated volume type.

Storage Volume Snapshot [cmdb_ci_storage_vol_snapshot]
Field

Description

Object ID [object_id]

Volume UUID.

Name [name]

Volume name.

Status [status]

Volume status.

Description [short_description]

(Optional) Human-readable description.

Image [cmdb_ci_os_template]
Field

Description

Object ID [object_id]

User-defined image UUID.

Name [name]

Image name. The value can be null (the JSON Null data type).

Status [status]

Image status.

Cloud Network [cmdb_ci_network]
Field

Description

Object ID [object_id]

Network ID.

Name [name]

Human-readable network name.

Operational Status
[operational_status]

Network status. Possible values: ACTIVE, DOWN, BUILD, or
ERROR.

Description [short_description]

(Optional) Human-readable description.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2452


<!-- page 2453 -->
Cloud Subnet [cmdb_ci_cloud_subnet]
Field

Description

Object ID [object_id]

Subnet ID.

Name [name]

Human-readable resource name.

DHCP enabled [is_dhcp_enabled]

Whether DHCP is enabled or disabled for the subnet.

Description [short_description]

(Optional) Human-readable description.

Compute Security Group [cmdb_ci_compute_security_group]
Field

Description

Object ID [object_id]

Security group ID.

Name [name]

Human-readable resource name.

Description [short_description]

(Optional) Human-readable description.

Security Group Rule [cmdb_ci_compute_security_group_rule]
Field

Description

Name [name]

This field has the same value as the object_id field.

Object ID
[object_id]

Security group rule ID.

Description
(Optional) Human-readable description.
[short_description]
Ethertype
[ethertype]

Ethertype. Must be IPv4 or IPv6. Addresses represented in CIDR must
match the ingress or egress rules.

Port range max
[port_range_max]

The last port of the range to which the rule applies. This value is the
maximum port number in the range that is matched by the security group
rule.
• If the protocol is TCP, UDP, DCCP, SCTP or UDP-Lite, this value must be
greater than or equal to the port_range_min attribute value.
• If the protocol is ICMP, this value must be an ICMP code.

Port range min
[port_range_min]

The first port of the range to which the rule applies. This value is the
minimum port number in the range that is matched by the security group
rule.
• If the protocol is TCP, UDP, DCCP, SCTP or UDP-Lite, this value must be
less than or equal to the port_range_max attribute value.
• If the protocol is ICMP, this value must be an ICMP type.

OpenStack Domain [cmdb_ci_cloud_openstack_domain]
Field

Description

Object ID [object_id]

Domain ID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2453


<!-- page 2454 -->
OpenStack Domain [cmdb_ci_cloud_openstack_domain] (continued)
Field

Description

Name [name]

Domain name.

Description [short_description]

(Optional) Human-readable description.

Enabled [enabled]

Defines whether the domain is enabled or disabled.
• True - The domain is enabled.
• False - The domain is disabled.

OpenStack Service [cmdb_ci_cloud_openstack_service]
Field

Description

Object ID
[object_id]

Service ID.

Name [name]

Service name.

Description
(Optional) Human-readable description.
[short_description]
Type [type]

Service type. Describes the API implemented by the service. Possible
values: Compute, ec2, identity, image, network, or volume.

Catalog enabled
[enabled]

Defines whether the service and its endpoints appear in the service
catalog.
• True - The service and its endpoints appear in the service catalog.
• False - The service and its endpoints do not appear in the service
catalog.

OpenStack Endpoint [cmdb_ci_cloud_openstack_endpoint]
Field

Description

Object ID [object_id]

Endpoint ID.

Name [name]

Service name.

Interface [interface]

Interface type that describes the visibility of the endpoint. Possible
values:
• Public - Visible by end users on a publicly available network
interface.
• Internal - Visible by end users on an unmetered internal network
interface.
• Admin - Visible by administrative users on a secure network
interface.

Catalog enabled
[enabled]

Defines whether the service and its endpoints appear in the service
catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2454


<!-- page 2455 -->
OpenStack Endpoint [cmdb_ci_cloud_openstack_endpoint] (continued)
Field

Description

• True - The service and its endpoints appear in the service catalog.
• False - The service and its endpoints do not appear in the service
catalog.

Cloud Hardware Type [cmdb_ci_cloud_hardware_type]
Field

Description

Name [name]

The name field of OpenStack Flavor.

Object ID [object_id]

The id field of OpenStack Flavor.

vCPUs [vcpus]

The vcpus field of OpenStack Flavor.

Memory MB [memory_mb]

The ram field of OpenStack Flavor.

Local Storage GB [local_storage_gb]

The disk field of OpenStack Flavor.

The discovered data includes the OpenStack Hypervisor View
[cmdb_ci_openstack_hypervisor_view] table and its fields for private cloud only.
OpenStack Hypervisor View [cmdb_ci_openstack_hypervisor_view] table fields
Field

Description

Name [name]

Concatenated value of hypervisor_type and
hypervisor_hostname fields. For example:
QEMU@host.acmecorp.com.

IP Address [ip_address]

The value of host_ip field.

Hypervisor technology
[hypervisor_technology]

The value of hypervisor_type field.

Object ID [object_id]

The value of id field.

State [state]

The value of state field.

Version [version]

The value of hypervisor_version field.

The Dependency Views map shows all discovered OpenStack resources in your organization
that are available through REST API calls and the relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2455


<!-- page 2456 -->
OpenStack Network Dependency

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2456


<!-- page 2457 -->
OpenStack VM Dependency

CI relationships
The relationships listed in the following table are created to support OpenStack resource
discovery.

CI

Relationship

CI

cmdb_ci_openstack_datacenterHosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_openstack_service
Hosted on::Hosts

cmdb_ci_cloud_service_account

cmdb_ci_cloud_openstack_endpoint
Use endpoint to::Use endpoint cmdb_ci_cloud_openstack_service
from
cmdb_ci_cloud_openstack_endpoint
Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_cloud_openstack_domain
Owns::Owned by

cmdb_ci_cloud_service_account

cmdb_ci_network

Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_network

Contains::Contained by

cmdb_ci_cloud_subnet

cmdb_ci_compute_security_group
Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_compute_security_group
Contains::Contained by

cmdb_ci_compute_security_group_rule

cmdb_ci_cloud_load_balancer Hosted on::Hosts

cmdb_ci_openstack_datacenter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2457


<!-- page 2458 -->
CI

Relationship

CI

cmdb_ci_cloud_load_balancer Contains::Contained by

cmdb_ci_lb_listener

cmdb_ci_lb_pool

Hosted on::Hosts

cmdb_ci_cloud_load_balancer

cmdb_ci_lb_pool

Owns::Owned by

cmdb_ci_lb_pool_member

cmdb_ci_storage_volume

Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_vm_instance

Uses::Used by

cmdb_ci_storage_volume

cmdb_ci_storage_vol_snapshot Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_storage_vol_snapshot Provisioned from::Provisioned

cmdb_ci_storage_volume

cmdb_ci_vm_instance

Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_cloud_key_pair

Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_os_template

Hosted on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_vm_instance

Provisioned from::Provisioned

cmdb_ci_os_template

cmdb_ci_vm_instance

Virtualized by::Virtualizes

cmdb_ci_server

The relationships listed in the following table are created to support OpenStack resource
discovery in private cloud only.

CI

Relationship

CI

cmdb_ci_vm_instance

Registered
on::Has
registered

cmdb_ci_openstack_hypervisor_view

cmdb_ci_openstack_hypervisor_view Hosted
on::Hosts

cmdb_ci_openstack_datacenter

cmdb_ci_openstack_hypervisor_view Uses::Hosts
Used by

cmdb_ci_server

Configuring Pattern Designer and related applications
Install the latest available versions of the ServiceNow applications to use the latest discovery
patterns.
The Pattern Designer (com.snc.pattern.designer) application provides the UI for creating or
customizing discovery patterns. Pattern Designer is automatically installed with Discovery or
Service Mapping. The patterns themselves are released using dedicated pattern applications.
The following user roles have access to Pattern Designer and can perform various actions. Note
that customizing patterns requires basic knowledge of programming.
Pattern Designer users and access
User

Description

PD
user

Has read-only access to Discovery Pattern Log.

PD
Can view, create, edit, and publish patterns.
admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2458


<!-- page 2459 -->
Pattern Designer users and access (continued)
User

Description

PDE
Starting with Pattern Designer Enhancements version 3.9.0, users can view Command
viewer Validation Tasks, Command Validation Tasks Results, and Command List.
The pde_viewer can view the Command Validation Tool modules and related tables,
but doesn't have permissions to modify or edit them.
The pde_viewer role can view the following tables only:
• Command List [pd_command_list]
• Command Validation Task [pd_command_validation]
• Command Validation Task Results [pd_command_validation_results]
• Pattern Shared Library Mapping [pd_pattern_to_shared_library_mapping]
• Temporary Variable Mappings [pd_temp_variable_value_mapping]
PD
MID

Not assigned to a user directly but to the MID Server record or the user under which
the MID Server runs. The role enables the MID Server to interpret and run patternbased probes.

ServiceNow releases all discovery patterns using the following applications:
Discovery and Service Mapping Patterns (sn_itom_pattern)
This application provides the latest versions of discovery patterns the original
version of which ServiceNow released on ServiceNow Store.
Visibility Content (sn_pattern_design)
This application supplies the updated version of the patterns that were part of the
family releases up until Tokyo.
You can install the latest available versions of the pattern applications from the ServiceNow
Store. Alternatively, you can install these applications as plugins on your ServiceNow instance.
Check which plugin contains a required pattern
Since ServiceNow releases discovery patterns using two different plugins, you may need to
check which plugin to install or upgrade.

Before you begin

Role required: service_mapping_admin

About this task

ServiceNow releases all discovery patterns using the following applications:
Discovery and Service Mapping Patterns (sn_itom_pattern)
This application provides the latest versions of discovery patterns the original
version of which ServiceNow released on ServiceNow Store.
Visibility Content (sn_pattern_design)
This application supplies the updated version of the patterns that were part of the
family releases up until Tokyo.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Display the Application column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2459


<!-- page 2460 -->
a. Click Personalize List.
b. In the Personalize List Columns dialog box, select Application under Available, and click the
right arrow.
3. Optional: You can filter out shared libraries to see only patterns in the list.
4. Search for the relevant pattern in the list.
5. Check to which application it belongs.
Global stands for Visibility Content.

Install Discovery and Service Mapping Patterns
You can install the Discovery and Service Mapping Patterns application (sn_itom_pattern) if you
have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Discovery and Service Mapping Patterns
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

Multiple tables are installed with Discovery and Service Mapping Patterns.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Discovery and Service Mapping Patterns application (sn_itom_pattern) using the filter
criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2460


<!-- page 2461 -->
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Install Visibility Content
You can install the Visibility Content application (sn_pattern_design) if you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Visibility Content application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

Multiple tables are installed with Visibility Content.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Visibility Content application (sn_pattern_design) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Password2 encryption for patterns
The Password (two-way encrypted) field type is used to encrypt and decrypt data. The field type
works in accordance with NIST 800-57 guidelines and provides FIPS 140-2-L3 protection.
Password2 is a text field that stores sensitive data with two-way encryption. The two-way
encryption stores the data as a secure encrypted value that can be decrypted within the
ServiceNow AI Platform instance.
From Quebec, Key Management Framework enables you to manage keys used for Password2
fields. However, the implementation of Password2 is required on a ServiceNow AI Platform using
the Rome release or later.

Note: Only newly created records containing Password2 fields are two-way encrypted.
Existing data is not automatically converted to use Password2 encryption.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2461


