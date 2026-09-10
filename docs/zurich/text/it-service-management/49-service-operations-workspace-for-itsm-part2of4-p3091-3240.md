# Zurich IT Service Management — Service Operations Workspace for ITSM

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3091–3240 of 3857 | Part 2 of 4

Sections: Service Operations Workspace for ITSM (p2941); Explore (p2942); Configure (p2960); Customize (p3179); Operate (p3199); Manage (p3271); Optimize (p3389); Reference (p3403)

---

<!-- page 3091 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Service Operations Workspace ITSM Applications
application listing in the
ServiceNow Store for information on dependencies, licensing or subscription requirements,
and release compatibility.
Role required: sn_invest_fwk.sn_investigate_admin or admin

About this task

The Microsoft Endpoint Configuration Manager for Investigation (sn_mecm_adapter) application
enables you to retrieve and display the CI metrics information for the affected CIs with the
ci_computer or ci_server class on the Investigation tab of the Incident record. You can configure
the display of the CI metrics data using the Investigate Framework module, which is installed
along with this application. The CI metrics information of the affected CIs helps you to analyze
and resolve the issue.
The following items are installed with Microsoft Endpoint Configuration Manager for Investigation
(sn_mecm_adapter) application:
• Store applications
• Roles
For more information, see Components installed with Microsoft Endpoint Configuration Manager
for Investigation.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Microsoft Endpoint Configuration Manager for Investigation (sn_mecm_adapter)
application using the filter criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Configuring CI metrics for Microsoft Endpoint Configuration Manager for Investigation
Configure the display of the metrics for Microsoft Endpoint Configuration Manager for
Investigation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3091


<!-- page 3092 -->
You must ensure the following requirements:
• Microsoft Endpoint Configuration Manager for Investigation (sn_mecm_adapter) application
must be installed along with the investigation framework applications. For more information,
see Install Microsoft Endpoint Configuration Manager(MECM) for Investigation and
Components installed with Microsoft Endpoint Configuration Manager for Investigation.
• Microsoft Endpoint Configuration Manager Spoke [sn_ms_epcfgmgr_spk] must be installed
and configured. For more information, see Microsoft Endpoint Configuration Manager spoke
and Microsoft SCCM integration .
• Microsoft Endpoint Configuration Manager server must be logged in using the Microsoft
remote desktop.

Note: You can configure the delay time in milliseconds between two consecutive
Microsoft Endpoint Configuration Manager queries that are submitted to the Microsoft
Endpoint Configuration Manager server to fetch and display the metrics, using the
property Specify the delay in milliseconds between two MECM query submissions.
(sn_mecm_adapter.request_query_delay). The default value is 10000.
Configure system overview - msinfo32 metrics
Configure the system overview - msinfo32 metrics for Microsoft Endpoint Configuration Manager
for Investigation (MECM).

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Create a MECM script with the name createMSInfo32File.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
3. Provide the following code in the script block.
Param(
[Parameter(Mandatory=$True)]
[string]$scriptName
)
$filePath = ".\" + $scriptName + ".txt";
✅invoke msinfo32 and save data into file
msinfo32 /report $filePath;
4. Create a MECM script with the name checkMsInfo32FileExist.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
5. Provide the following code in the script block.
Param(
[Parameter(Mandatory=$True)]
[string]$scriptName
)
$filePath = ".\" + $scriptName + ".txt";
✅check if file exist
$fileExist = Test-Path -Path $filePath;
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3092


<!-- page 3093 -->
✅read msinfo32 data
if($fileExist) {
Write-Host "True"
}else {
Write-Host "False";
}
6. Create a MECM script with the name fetchMsInfo32File.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
7. Provide the following code in the script block.
Param(
[Parameter(Mandatory=$True)]
[string]$scriptName
)
$filePath = ".\" + $scriptName + ".txt";
✅check if file exist
$fileExist = Test-Path -Path $filePath;
✅read msinfo32 data
if($fileExist) {
Get-Content $filePath;
Remove-Item $filePath
}else {
Write-Host "File doesn't exist";
}
8. Retrieve and copy the script GUID.
9. Open the MECM Adapter Configuration [sn_mecm_adapter_config] table.
The MECM Adapter Configuration table displays the list of adapter configurations.
10. From the list of configurations, select and edit System information (msinfo32).
11. In the Action input field, add the script GUID.

12. Click Update.
Configure system overview - dsregcmd metrics
Configure the system overview - dsregcmd metrics for Microsoft Endpoint Configuration
Manager for Investigation (MECM).

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3093


<!-- page 3094 -->
Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Create a MECM script with the name dsregcmd.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
3. Provide the following code in the script block.
dsregcmd /status
4. Retrieve and copy the script GUID.
5. Open the MECM Adapter Configuration [sn_mecm_adapter_config] table.
The MECM Adapter Configuration table displays the list of adapter configurations.
6. From the list of configurations, select and edit System information.
7. In the Action input field, add the script GUID.

8. Click Update.
Configure asset utilization metrics
Configure the display of the asset utilization metrics for Microsoft Endpoint Configuration
Manager for Investigation.

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Select the required CI device, and verify the CMPivot entities and attributes.
For more information, see Verify a CMPivot entity.
3. Configure the Disk Utilization metrics by verifying that the Disk CMPivot entity exists and has
the attributes Size and Free Space.
4. Configure the Memory Utilization metrics.
a. Verify that the Memory CMPivot entity exists and has the attribute TotalPhysicalMemory.
b. Verify that the OS CMPivot entity exists and has the attribute FreePhysicalMemory.
5. Configure the CPU Utilization metrics by verifying that the Processor CMPivot entity exists and
has the attribute LoadPercentage.
If the Processor CMPivot entity doesn’t exist, you must add the entity to the hardware
inventory. For more information, see Extend hardware inventory.
6. Configure the Uptime metrics by verifying that the OperatingSystem CMPivot entity exists and
has the attribute LastBootUpTime.

Result

The asset utilization metrics is displayed on the Investigation tab of the incident record in
Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3094


<!-- page 3095 -->
Configure processes metrics
Configure the top processes by CPU and top processes by memory metrics for Microsoft
Endpoint Configuration Manager for Investigation.

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Create a MECM script with the name GetProcess.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
3. Provide the following code in the script block.
Param(
[Parameter(Mandatory=$True)]
[string]$orderBy,
[Parameter(Mandatory=$True)]
[string]$top
)
$processes = get-process
$Total = 0;
ForEach ($process in $processes) {
$Total += $process.cpu;
}
$processes | Sort-Object $orderBy -Descending | select
processname,id,ws,cpu -First $top | select processname,id,
@{l="mem"; e={$_.ws}}, @{l="cpu"; e={($_.cpu / $Total) *
100}};
4. Retrieve and copy the script GUID.
5. Open the MECM Adapter Configuration [sn_mecm_adapter_config] table.
The MECM Adapter Configuration table displays the list of adapter configurations.
6. From the list of configurations, select and edit Running processes - CPU%.
7. In the Action input field, add the script GUID.

8. Click Save.
9. From the list of configurations, select and edit Running processes - MEM.
10. In the Action input field, add the script GUID.
11. Click Save.

Result

The top processes by CPU and top processes by memory metrics are displayed on the
Investigation tab of the incident record in Service Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3095


<!-- page 3096 -->
Configure services metrics
Configure the services metrics for Microsoft Endpoint Configuration Manager for Investigation
(MECM).

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Select the required CI device, and verify the CMPivot entities and attributes.
For more information, see Verify a CMPivot entity.
3. Configure the services metrics by verifying that the Services CMPivot entity exists and has the
attributes Name, DisplayName, State, and ProcessId.

Result

The services metrics are displayed on the Investigation tab of the incident record in Service
Operations Workspace.
Configure logged in users metrics
Configure the display of the logged in users metrics for Microsoft Endpoint Configuration
Manager for Investigation.

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Select the required CI device, and verify the CMPivot entities and attributes.
For more information, see Verify a CMPivot entity.
3. Verify that the LogonSession CMPivot entity exists and has the attributes LogonId,
LogonType, and StartTime.
4. Verify that the LoggedOnUser CMPivot entity exists and has the attributes Antecedent and
Dependent.

Note: If either the LogonSession or LoggedOnUser CMPivot entities aren’t available,
you must add them to the hardware inventory. For more information, see Extend hardware
inventory.

Result

The logged in users metrics is displayed on the Investigation tab of the incident record in
Service Operations Workspace.
Configure Installed application metrics
Configure the display of the installed application metrics for Microsoft Endpoint Configuration
Manager for Investigation.

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3096


<!-- page 3097 -->
Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Select the required CI device, and verify the CMPivot entities and attributes.
For more information, see Verify a CMPivot entity.
3. Verify that the InstalledSoftware CMPivot entity exists and has the attributes ProductName,
ProductVersion, and Publisher.

Note: If the InstalledSoftware CMPivot entity isn’t available, you must add the entity to
the hardware inventory. For more information, see Extend hardware inventory.

Result

The installed application metrics is displayed on the Investigation tab of the incident record in
Service Operations Workspace.
Configure remedial action - Restart Service
Configure the Restart Service remedial action for Microsoft Endpoint Configuration Manager for
Investigation (MECM).

Before you begin

Role required: sn_cimaf.sn_cimaf_admin or sn_reacf.sn_remedial_action_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Create a MECM script with the name RestartService.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
3. Provide the following code in the script block.
Param(
[Parameter(Mandatory=$True)]
[string]$service_name
)
Restart-Service -Force -Name $service_name -PassThru
4. Retrieve and copy the script GUID.
5. Open the MECM Action Configuration [sn_mecm_action_config] table.
The MECM Action Configuration table displays the list of action configurations.
6. From the list of configurations, select and edit Restart service using name.
7. In the Action input field, add the script GUID.

8. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3097


<!-- page 3098 -->
Configure remedial actions - End Process
Configure the End Process remedial action for Microsoft Endpoint Configuration Manager for
Investigation (MECM).

Before you begin

Role required: sn_cimaf.sn_cimaf_admin or sn_reacf.sn_remedial_action_admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. Create a MECM script with the name EndProcess.
For more information, see Create a script in Microsoft Endpoint Configuration Manager.
3. Provide the following code in the script block.
Param(
[Parameter(Mandatory=$True)]
[string]$process_id
)
Get-Process -Id $process_id | Stop-Process -Force -PassThru
4. Retrieve and copy the script GUID.
5. Open the MECM Action Configuration [sn_mecm_action_config] table.
The MECM Action Configuration table displays the list of action configurations.
6. From the list of configurations, select and edit End Process.
7. In the Action input field, add the script GUID.

8. Click Save.
Create a script in Microsoft Endpoint Configuration Manager
Create a script in the Microsoft Endpoint Configuration Manager to configure the display of the
processes metrics on the Investigation tab of the Incident record.

Before you begin

The Microsoft Endpoint Configuration Manager server must be logged in using the Microsoft
Remote Desktop.
Role required: admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. On the Microsoft Endpoint Configuration Manager, select Software Library.
3. On the Software Library section, select Scripts and click Create Script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3098


<!-- page 3099 -->
Alternatively, you can also right-click Scripts and select Create

Script.
4. Specify Script name.
5. Add the script on the script field (block).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3099


<!-- page 3100 -->
6. Click Next.
7. Click Next & Close.
A script record is created with Approval State as Waiting for Approval.
8. Select the script record.
9. Select the Approve/Deny option and then click Approve to approve the script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3100


<!-- page 3101 -->
Alternatively, you can also right-click on the created script
record and select the Approve/Deny option and then click

Approve.
10. Get the script GUID.
a. Open power shell console using Connect via Windows PowerShell ISE.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3101


<!-- page 3102 -->
b. Get the script GUID by running the command Get-CMScript -ScriptName
'GetProcess' | Select ScriptGuid.

Extend hardware inventory
Extend the hardware inventory to add the CMPivot entity on the CMPivot entity list in the
Microsoft Endpoint Configuration Manager.

Before you begin

The Microsoft Endpoint Configuration Manager server must be logged in using the Microsoft
Remote Desktop.
Role required: admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. On the Microsoft Endpoint Configuration Manager, select Administration.
3. On the Administration section, click Client Settings.
4. Double-click the Default Client Settings that is displayed on the right pane of the window.
The Default Settings pop-up window is displayed.
5. On the Default Settings window, select Hardware Inventory.
6. Click Set Classes.
A Hardware Inventory Classes pop-up window containing the list of Hardware Inventory
Classes is displayed.
7. On the Hardware Inventory Classes window, select the entity and required attributes from the
list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3102


<!-- page 3103 -->
8. Click OK.

Result

The added hardware inventory is displayed in the CMPivot entity list to verify the required
attributes. For more information on verifying the CMPivot entity and the required attributes, see
Verify a CMPivot entity.
Verify a CMPivot entity
Verify a CMPivot entity and its attributes to configure the display of the CI metrics information on
the Investigation tab of the Incident record.

Before you begin

The Microsoft Endpoint Configuration Manager server must be logged in using the Microsoft
Remote Desktop.
Role required: admin

Procedure
1. Open the Microsoft Endpoint Configuration Manager.
2. On the Microsoft Endpoint Configuration Manager, select Assets and Compliance.
3. On the Assets and Compliance section, select Devices.
The list of devices are displayed on the right pane of the window.
4. Select the required CI device from the list.

Note: The selected CI device must be Active.
In case the required CMPivot entity isn’t displayed on the list, extend the hardware
inventory to add the CMPivot entity to the list. For more information, see Extend hardware
inventory.
5. Click Start CMPivot.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3103


<!-- page 3104 -->
Alternatively, you can also right-click on the device and select Start CMPivot.

6. Verify the CMPivot entity and attributes.

Configure a metric definition
Configure a metric definition to create or modify the existing base system CI metrics displayed
on the Investigation tab.

Before you begin

Role required: sn_cimaf.sn_cimaf_admin

Procedure
1. Navigate to All > Metrics and CI Actions Framework > Administration > Metric Definitions.
These following existing metric definition tables are displayed:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3104


<!-- page 3105 -->
◦ Asset usage
◦ Installed Applications
◦ Logged-in users
◦ Running processes
◦ Services
◦ System Information (dsregcmd)
◦ System Information (msinfo32)
◦ System overview
2. Create a metric definition record.
You can also select an existing metric definition record to modify the record.
a. Select New.
b. On the Metric definition form, fill in the fields.
Metric definition form
Field

Description

Name

Name of the metric.

Active

Option to activate the metric definition.

CI Class

Particular CI class for which the metric is
applicable.

Description

Description of the metric definition.

Schema

High-level structure in which the metrics
retrieved from the provider are stored in the
metric table.

c. Select Submit.
3. On the Adapter Configuration related list, create a record.
Adapter configuration for the metric definition enables you to define the provider and the
query, as well as transform flows or scripts.
a. Select New.
You can also select an existing adapter configuration record to modify the record.
b. On the Adapter Configuration form, fill in the fields.
Adapter Configuration form
Field

Description

Name

Name of the adapter configuration.

Metric Definition

Metric definition for which the adapter
configuration is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3105


<!-- page 3106 -->
Field

Description

Provider

Provider for metrics, such as Agent
Client Collector or Microsoft Endpoint
Configuration Manager for Investigation.

Order

Sequence order in which the adapter
configuration record applies to the
metric definition when there are multiple
configurations available.

Note: The first applicable adapter
configuration that is based on the
Order value is only considered for
fetching the metrics.
Duplicate request time limit (seconds)

Sets the number of seconds to prevent
duplicate metric requests when one is
already in progress.

Query
Query Action

Type of action that is used to retrieve the
metric data from the provider. The value can
be a flow or script.

Query Flow/script

Flow or script that is used to retrieve the
metric from the provider.

Note: In case no flow or script is
defined, the default query flow of the
provider is considered.
Transform
Transform Action

Type of action that is used to transform
the metric data, which is retrieved by the
provider, to output. The value can be a flow
or script.

Transform Flow/script

Flow or script that is used to transform
the metric data, which is retrieved by the
provider, to output.

Note: In case no flow or script is
defined, the default transform flow of
the provider is considered.

c. Select Submit.
4. On the Provider Specific Adapter Configuration related list, create a record.
Provider Specific Adapter Configuration table enables you to define and configure adapter
configuration, such as query or command, for a specific provider, such as Agent Client
Collector (ACC) or Microsoft Endpoint Configuration Manager (MECM) for Investigation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3106


<!-- page 3107 -->
a. Select New.
You can also select an existing provider specific adapter configuration record to modify the
record.
A list of specific provider action configuration table is displayed, such as ACC Action
Configuration and MECM Action Configuration.
b. Select the provider for which you want to create an adapter configuration.
c. On the Provider Specific Adapter Configuration form, fill in the fields.
Provider Specific Adapter Configuration
Field

Option

Name

Name of the provider specific adapter
configuration.

Adapter Configuration

Adapter configuration for which the provider
specific adapter configuration is created.

Active

Option to activate the configuration.

Check Definition

Check definition that is used for the
execution and handling the output of the
command or query. For example, app-cimetrics-acc-adapter.osquery.

Note: This is applicable only if the
provider is Agent Client Collector for
Investigation.
Query/Command

Query or command that the provider runs on
the end machine.

Note: This is applicable only if the
provider is Agent Client Collector for
Investigation.
Action Input

Input parameters required by flow action.

Note: This field is applicable
only if the provider is Microsoft
Endpoint Configuration Manager for
Investigation.
Flow Action

MECM spoke flow action to perform the read
operation on the MECM device.

Note: This field is applicable
only if the provider is Microsoft
Endpoint Configuration Manager for
Investigation.
Output Flow Action

MECM spoke flow action to look up the read
operation response from the MECM server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3107


<!-- page 3108 -->
Field

Option

Note: This field is applicable
only if the provider is Microsoft
Endpoint Configuration Manager for
Investigation.

d. Select Submit.
5. On the Adapter Applicability Rule related list, create a rule.
Adapter Applicability Rule table enables you to configure which CIs apply to the selected
adapter configuration.
a. Select New.
You can also select an existing adapter applicability rule record to modify the record.
b. On the Adapter Applicability Rule form, fill in the fields.
Adapter Applicability Rule form
Field

Description

Adapter Configuration

Adapter configuration that applies to the
adapter applicability rule.

CI Conditions
CI Class

CI class that applies the adapter
configuration.

Allow matching CI class extension

Option to apply the configurations to the
child of a CI class.

CI conditions

Condition builder to configure which CIs
apply to the adapter configuration.

c. Select Submit.

What to do next

After the new metric definition is created, perform the UI configuration for displaying the metric
definition on the Investigate tab of the incident record page. You must get the sys_id of the
metric definition and add it to the sn_sow.SOWInvestigateConfig script. You can also
customize the display of the metric definition, such as the labels, units, and threshold values. For
more information, see Customize the Investigate tab.
Configure CI Actions
Configure the CI Action Framework to add a new CI action or modify an existing one.

Before you begin

Role required: sn_cimaf.sn_cimaf_admin or sn_cimaf.sn_cimaf_execution_admin

Procedure
1. Navigate to All > Metrics and CI Actions Framework > Administration > Actions.
This table contains the list of all CI actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3108


<!-- page 3109 -->
2. Create a CI Action.
a. Select New to create a record.
You can also select an existing action record to modify the record.
b. On the Action form, fill in the fields.
Action form
Field

Description

Name

Name of the CI action.

CI Class

CI class for which the CI action
is applicable, such as computer
[cmdb_ci_computer].

Active

Option to activate the CI action.

Description

Brief description of the CI action.

c. Select Submit.
3. On the Action Role related list, add a role.
The Action Role related list contains the list of roles required to access and execute the CI
actions.
a. Select New.
b. Choose a Role.
c. Select Submit.
4. On the User Criteria Action Inclusion related list, add a user criteria.
The User Criteria Action Inclusion related list contains the list of user criteria that are allowed to
execute the CI action.
a. Select New.
b. Choose a User Criteria.
c. Select Submit.
5. On the User Criteria Action Exclusion related list, add a user criteria.
The User Criteria Action Exclusion related list contains the list of user criteria that aren’t
permitted to execute the CI action.
a. Select New.
b. Choose a User Criteria.
c. Select Submit.
6. On the Action Configuration related list, create a record.
The Action Configuration related list contains a list of action configurations applicable to CI.
You can create multiple configurations for a CI action based on different providers or CI class.
a. Select New to create a record.
You can also select an existing action record to modify the action configuration record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3109


<!-- page 3110 -->
b. On the Action Configuration form, fill in the fields.
Action Configuration form
Field

Description

Name

Name of the action configuration for the CI
action.

Provider

Provider for which you want to create the
action configuration.

CI Class

CI class applicable to the action
configuration.

Allow matching CI Class extension

Option to apply the configuration to the
child of CI class, such as device or server.

CI Condition

Condition builder to configure the CIs where
the action configuration is applicable.

Action Type

Action type that is used to execute the CI
action. It can be a flow or a script.

Action execution flow

A flow that is used to execute the CI action.

Order

Sequence in which the configuration
is applicable in case there are multiple
configurations available for a CI action.

Note: The first applicable adapter
configuration that is based on the
Order value is only considered for
executing the CI action.
Duplicate request time limit (seconds)

Sets the number of seconds to prevent the
execution of duplicate action requests when
one with the same parameters is already in
progress.

c. Select Submit.
7. On the Action Configuration Step related list, create or modify a record.
The Action Configuration Step related list contains the list of steps applicable for the action
configuration.
a. Select New to create a record.
You can also select an existing record to modify the steps record.
A list of provider-specific action configuration table is displayed, such as Agent Client
Collector (ACC) Action Configuration and Microsoft Endpoint Configuration Manager
(MECM) Action Configuration.
b. Select the provider for which you want to create an adapter configuration.
For example, ACC Action Configuration for Agent Client Collector for Investigation.
c. On the Action configuration step form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3110


<!-- page 3111 -->
Action configuration step form
Field

Description

Name

Name of the step that you want to create for
the action configuration.

Active

Option to activate the action configuration
step.

Sequence

Step sequence that is executed if multiple
steps exist for an action configuration
record.

Check definition

Check definition that is used for the
execution and handling the output of the
command. For example, remedial-action.

Note: This is applicable only if the
provider is Agent Client Collector for
Investigation.
Command

Command that is executed.

Note: This field is applicable only if
the provider is Agent Client Collector
for Investigation.
Action Input

Input parameters required by flow action.

Note: This field is applicable
only if the provider is Microsoft
Endpoint Configuration Manager for
Investigation.
Flow Action

MECM spoke flow action to perform the
write operation on the MECM device.

Note: This field is applicable
only if the provider is Microsoft
Endpoint Configuration Manager for
Investigation.
Output Flow Action

MECM spoke flow action to look up the write
operation response from the MECM server.

Note: This field is applicable
only if the provider is Microsoft
Endpoint Configuration Manager for
Investigation.
Validate

Option to validate the command.

Validation script

Script that is run to check if the command
has a valid execution and output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3111


<!-- page 3112 -->
Field

Description

Note: This field is visible only if the
Validate option is selected.
Run

Values for how and when the command
must be validated. You can select the
following values:
▪ Once: Validation must be run once.
▪ Poll: Validation must be run more than
once.

Note: This field is visible only if the
Validate option is selected.
Polling count

Maximum number of times the validation is
run for the command.

Note: This field is visible only if Run
field is set to Poll.
Polling interval

Time interval in which the validation must be
rerun for the command execution.

Note: This field is visible only if Run
field is set to Poll.

8. On the Action Parameter related list, create a record.
The Action Parameter related list contains the list of parameters required to execute the CI
action.
a. Select New to create a record.
You can also select an existing record to modify the parameter record.
b. On the Action Parameter form, fill in the fields.
Action Parameter form
Field

Description

Type

Type of the parameter, such as integer or
reference.

Note: If you select reference, you
must also specify the reference table.
Label

Name of the parameter.

Mandatory

Option to mark the applicability of the
parameter as required.

Active

Option to activate the action parameter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3112


<!-- page 3113 -->
Field

Description

Default value
Default value

Default value of the parameter.

Choice list specification
Choices

Type of choice list that must be applicable
for the parameter.

Note: This field is enabled only if the
Type field is set to Choice list.

c. Select Submit.

What to do next

You must configure the Remedial Actions Framework. For more information, see Configure the
Remedial Actions Framework.
Configure the Remedial Actions Framework
Configure the Remedial Actions Framework to add a new remedial action or modify an existing
one.

Before you begin

Role required: sn_reacf.sn_remedial_action_admin or
sn_reacf.sn_remedial_action_execution_admin

Procedure
1. Navigate to All > Remedial Actions Framework > Administration > Remedial Actions.
This table contains the list of the remedial actions available at the base system.
2. Create a remedial action.
a. Select New to create a record.
You can also select an existing action record to modify the action record.
b. On the Remedial Action form, fill in the fields.
Remedial Action form
Field

Description

Name

Name of the remedial action.

Action

Action that is performed. You must select a
table name and a record in that table.

Note: You must select the
action table that is defined for the
Applicability field of the Remedial
Action Type record.
Type

Type of the remedial action or flow, such as
CI action and standard change.

Description

Brief description of the remedial action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3113


<!-- page 3114 -->
Field

Description

Active

Option to activate the remedial action.

Target Table

Table for which the remedial action is
applicable.

Match Target Extensions

Option to apply the remedial action to the
child of the target table.

Target Conditions

Condition builder to configure the
applicable remedial action for the target
records.

c. Select Submit.
3. On the Remedial Action Parameters related list, add a parameter to the remedial action.
The Remedial Action Parameters related list contains the list of parameters, such as Process
ID and Assigned to, required to execute the remedial actions.
a. Select New.
b. On the Remedial Action Parameters form, fill in the fields.
Remedial Action Parameter form
Field

Description

Type

Type of parameter, such as integer, boolean,
or reference.

Note: If you select reference, you
must also specify the reference table.
Label

Name of the parameter.

Mandatory

Option to mark the parameter as required.

Active

Option to activate the parameter.

Consider for concurrency check

Option to determine whether the parameter
should be considered for the duplicate
check of the remedial action.

Default Value
Default value

Default value of the parameter.

Note: If this value isn’t defined,
the default value that is specified in
the CI Actions Framework tables is
considered.
List specification
Choices

Type of list that must be applicable for the
parameter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3114


<!-- page 3115 -->
Field

Description

Note: This field is enabled only if the
Type field is set to Choice list.

c. Select Submit.
4. On the Remedial Action Roles related list, add a role.
Remedial Action Roles contains the list of roles required to access and execute the remedial
actions.
a. Select New.
b. Choose a Role.
c. Select Submit.
5. On the User Criteria Action Inclusions related list, add a user criteria.
The User Criteria Action Inclusion related list contains the list of user criteria that are permitted
to execute the remedial action.
a. Select New.
b. Choose a User Criteria.
c. Select Submit.
6. On the User Criteria Action Exclusions related list, add a user criteria.
The User Criteria Action Exclusion related list contains the list of user criteria that aren’t
permitted to execute the remedial action.
a. Select New.
b. Choose a User Criteria.
c. Select Submit.
7. Navigate to All > Remedial Actions Framework > Administration > Remedial Action Types.
This table contains the list of remedial action types, such as CI action and standard change.
8. Create a remedial action type.
a. Select New.
b. On the Remedial Action Type form, fill in the fields.
Remedial Action Type
Field

Description

Name

Name of the remedial action type.

Applicability

List of Action tables where the remedial
action type is applicable.

Processor

Script include that is used for the
implementation of the extension point
RemedialActionProvider to execute
the remedial action.

Allow concurrent execution

Option to allow duplicate concurrent
execution of remedial actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3115


<!-- page 3116 -->
Field

Description

Note: If the Consider for

concurrency check option is set
to false for all the parameters, then
the duplicate actions are allowed by
default.

c. Select Submit.
9. Navigate to All > Remedial Actions Framework > Administration > Remedial Action Origin.
This table contains the list of applications where you can use the Remedial Actions Framework.
10. Add an application.
a. Select New.
b. Add the name of an application that you want to use for the Remedial Actions Framework.
c. Select Submit.

What to do next

When a Remedial Action Type is created, you must create an implementation or do the
necessary changes in the existing implementation of the RemedialActionProvider scripted
extension point. To view and use the new or modified remedial actions, you must configure
the Investigate UI to display the remedial actions. For more information, see Customize the
Investigate tab.
Setting up Service Desk assisted Password Reset in Service Operations Workspace
The Password Reset application provides a mechanism for end users to either unlock the
account or reset their password with the help of service desk support. This feature enables a
secure and an efficient password management system. The users must reach out to the service
desk agents to update their login credentials.
Before you configure the password reset, you must define the password reset process. For more
information, see Plan your Password Reset processes .
The password reset feature is available in the base system. Alternatively, you can customize the
password reset process to meet your organization's needs.
Assign the Password Reset Service Desk role to the user
Assign the password reset service desk agent (password_reset_service_desk) role to the users
to work on the incidents or interactions related to the password reset issues.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Password reset agents card, select Configure.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3116


<!-- page 3117 -->
A new tab containing the list of users who have the service desk assisted password reset
role(password_reset_service_desk) is displayed.
4. Select New.
5. On the form, fill in the fields.
Password Reset service desk role
Field

Description

User

Users whom the password reset role
(password_reset_service_desk) must be assigned.

Role

Password reset service desk role to be assigned.

6. Select Submit.
Create credential store for Password Reset in Service Operations Workspace
Create a password reset credential store record to configure access to your credential store
server while a user is changing or resetting a password.

About this task

In addition to host connection information, you can specify the password hints that users should
see, restrictions on password reuse, the allowed number of failed reset attempts, and other
settings.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Credential stores card, select Configure.
The default credential store is displayed.
4. On the form, fill in the fields.
Credential store
Field

Description

Name

Name of the credential store for service desk assisted
password reset.

Description

Detailed information about the credential store.

Type

Type of credential store that you are connecting to. A
ServiceNow credential store type is a template that provides
the required set of capabilities for a particular kind of
credential store.
Credential stores inherit the functionality of the credential
store type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3117


<!-- page 3118 -->
Field

Description

Auto generate password

Script include that generates a temporary password for use
during the reset process.
If you select the Enforce history policy check box, then you
must specify a value for Auto-generate password that is
compliant with the password policy.

Child Alias

Child aliases are associated with the base alias. After
creating a connection and credential alias, you can create a
child alias to configure multiple connections for a password
reset credential store.
When a password reset request is made, the flow checks
whether there are child alias connections at the process
level. If the child alias is configured at the credential store
level, the flow picks the aliases connections and proceeds
with the request.

Enable password policy
Enable password strength

See Enable password policies on your instance
Select the check box to:
◦ Option to display the text box for the strength rule script so
that you can update the script.
◦ Display the graphical password strength bar to the user
while the user changes or resets the password.

Password policy

Default password policy.

Enforce history policy

Option to ensure that the users don’t reuse passwords. For
example, you might configure the history policy to not allow
the user to reuse any of the previous 10 passwords. Follow
this procedure to use the feature:
a. Select the Enforce history policy check box.
b. In the Password Reset Credential Store Parameters
related list, create a password_history_limit
parameter.
c. Set the value of the parameter to the number of previous
passwords that cannot be used (maximum 10). The default
value of 0 (zero) enables use of any previous password.

5. Select Submit.
6. Select Test Connection.
You must test the connection to a credential store after you configure a new credential store.
Create password reset process in Service Operations Workspace
Create configure credentials, verification methods and settings, and enrollment settings to
create a password reset process.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3118


<!-- page 3119 -->
Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Password reset process card, select Configure.
The default password process is displayed.
4. To create a new password reset process, select New.
5. On the form, fill in the fields.
Password reset process
Field

Description

Name

Name of the password reset process

Description

Detailed information about the credential store.

Credential store

Credential store that contains user credentials and
information.

Password reset

Option to apply the password reset process to a specific
group or all users.

Enable account unlock

Option to unlock the account for all the users.

Apply to all users

Option to apply the password reset process to all the users.
You can also select a specific group by deselecting this
option, and add a group from Groups related list.

6. Select Submit.
7. Select the created password reset process.
8. On the Password Reset Details tab, configure the following settings.
Password Reset details
Field

Minimum verifications

Description

Number of verifications that a user must
successfully submit to reset the password.
If the number exceeds the number of
required verifications, then the user must
submit additional verifications to match the
number specified for Minimum verifications.

Allow user to choose from optional
verifications

Option to enable a user on the Verifications
page during the process of resetting the
password.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3119


<!-- page 3120 -->
Field

Description

The choice of optional verifications appears
only if the Minimum verifications setting
is greater than the number of mandatory
verifications.
Auto-generate password

Option to auto-generate a new password for
the user.
When this check box is selected, you must
select the Email/SMS password or Display
password check box, or both.

User must reset password

Option to reset the user password
immediately after logging in with the autogenerated password.

Note: This check box is available only
when the Auto-generate password
check box is selected.
Display password

Option to display the new password on the
screen.

Note: Note: This check box is available

only when the Auto-generate password
check box is selected.
Email/SMS password

Option to send an email or SMS the new
password to the user.

Note: Note: This check box is available

only when the Auto-generate password
check box is selected.
9. Right-click on the form header, and select Save.
10. For Password Reset, enter the required fields in the Enrollment Reminder tab.
11. Save your changes on the Password Reset Process form.
12. Optional: From the Password Reset Process Groups related list, select the user groups that
use the process.
(Optional) The Password Reset Process Groups related list appears only if the Apply to all
users check box is not selected.
13. Select the Active check box to enable the Password Reset process.
14. Right-click on the form header, and select Save.
For more information on password reset process, see Configure your Password Reset
process .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3120


<!-- page 3121 -->
Configure the verification methods for service desk process in Service Operations Workspace
Create and edit verification methods to ensure they align with service desk processes, and
map each verification to a specific process. Upon mapping the processes, integrate them with
UXF routes to complete an end-to-end flow for resetting a password in Service Operations
Workspace.
Create verification settings
Create a verification type in the base system to authenticate the user credentials while resetting
the password.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Verification Settings card, select Configure for Verification(s).
The default password reset verifications are displayed.
4. Select New to create a new password reset verification method.
5. On the form, fill in the fields.
Password verification settings
Field

Description

Name

Name for the password verification method.

Description

Detailed information of the password verification method.

Label

Option to provide a label for the verification method.

Type

Verification types available in the base system.
Password Reset supports the following types.
◦ Personal Data Confirmation Verification
◦ Personal Data Verification
◦ Security Question Verification
◦ SMS Code Verification
◦ Email code verification

Password Reset Verification
Parameters

Parameters used by a verification to configure specific
behaviors, like number of questions required to enroll,
request expiration time, and columns used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3121


<!-- page 3122 -->
Field

Description

Set parameters for any behavior that should be different from
the value that is specified in the Password Reset properties.
6. Select Submit.
Map the password reset process
Map the password reset process to verify the identity of the user requesting a password reset.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Verification Settings card, select Process mapping for Verification(s).
The default process mappings are displayed.
4. Select New to create a new process mapping.
5. On the form, fill in the fields.
Process mapping
Field

Description

Process

Option to select the process for password reset verification.

Verification

Option to select the verification method.

6. Select Submit.
Map the UXF routes
Create a route for the verification method to map the verification process.

About this task

The administrator can customize the verification page at the specified route. The UI page should
be configured with a verification type that allows the service desk agent to verify the identity of
the user requesting a password reset.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3122


<!-- page 3123 -->
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Verification Settings card, select UXF routes mapping.
The default UXF routes are displayed.
4. Select New to create a new UXF route.
5. On the form, fill in the fields.
UXF routes
Field

Description

Order

Order of the UXF route

Workspace

Option where the UXF route will be applicable to. If there
is no value in this field, the system picks the Workspace as
Service Operations Workspace.

Verification type

Verification type to authenticate the user during the
password reset process.

Route

Path for the code to reach the destination.

6. Select Submit.
Configure the password policies
Create a password policy to ensure that all passwords are strong and secure.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Password policies card, select Configure.
The default password policy is displayed.
4. Select New to create a new password policy.
5. On the form, fill in the fields.
Password policy
Field

Description

Name

Name of the password policy.

Password Strength Preset

Default password strength.

Minimum Password Length

Minimum number of characters for a password.

Maximum Password Length

Maximum number of characters for a password.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3123


<!-- page 3124 -->
Field

Description

Excluded Special Characters

List of special characters not to be included in a password.

Disallow User Data

Option to exclude the user related data from the password.

Sequence Length Threshold

Maximum number of sequential characters allowed in the
password.

Repetition Length Threshold

Maximum number of times a character can be repeated in
the password.

6. Select Submit.
Configure the session properties
Configure the password reset properties based on the requirement.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Overview.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Service Desk Assisted Password
Reset card.
◦ In the Configurations tab, select Service Desk Assisted Password Reset card.
3. On the Session properties card, select Configure.
4. On the form, fill in the fields.
Password reset session properties
Field

Description

Password Reset Global Properties
Email template for enrollment reminder
Template to use for the email messages that
emails. The instance can send email
remind users to enroll for the password reset
reminders to users who are not yet enrolled in process.
the Password Reset process.
Workflow polling frequency (frequency,
in milliseconds, that the application polls
the password reset/change workflow for
completion)

Time period in milliseconds between checks
on status of the Password Reset workflow.
◦ Type: integer
◦ Default value: 500

Workflow expiration (time, in milliseconds,
before the password reset/change workflow
expires)

Maximum wait time in milliseconds for
the workflow to complete. The workflow is
triggered during the password reset request
when the user clicks Submit.
◦ Type: integer
◦ Default value: 90000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3124


<!-- page 3125 -->
Field

Description

Password Reset Request Properties
Number of unsuccessful attempts allowed for
Number of password reset attempts a
resetting/changing password
user is allowed before they are locked out
for a period determined by the value in
max_attempt_window.
◦ Type: integer
◦ Default value: 3 (attempts)
Number of minutes a user needs to wait
to reset/change password after the last
successful reset/change

Time period that users are blocked or
prevented from changing their passwords
after trying the maximum number of times.
◦ Type: integer
◦ Default value: 1440 (minutes)

Number of minutes a user needs to wait to
start a reset request after the last successful
unlock account.

Time period that a user must wait after
successfully resetting the password to reset
the password again.
◦ Type: integer
◦ Default value: 1440 (minutes)

Number of minutes before a password reset
request expires

Time period during which a user must
perform the Password Reset process.
◦ Type: integer
◦ Default value: 10 (minutes)

Maximum number of times that a user can
receive "Reset Password" link via email, in a
span of 24 hours. The upper limit is 5.

Maximum number of times a user can receive
emails containing a link for resetting a
password in a duration of 24 hours.

Password Reset Security Question Properties
Number of security questions required during Number of security questions that are
the password reset request
displayed on the Verify page while a user is
attempting to reset the password. The user
must answer all questions correctly to verify
identity.
Number of security questions required during Number of questions that a user must provide
enrollment
answers to while enrolling for the Password
Reset process.
Minimum length requirement for security
answers

Minimum number of alphanumeric characters
that the user must enter in the answer text
box for any security question.

Password Reset SMS Code Properties
Maximum number of SMS codes sent for
verification per day

Maximum number of SMS codes that are sent
to a user within one 24-hour period. The 24-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3125


<!-- page 3126 -->
Field

Description

hour period begins when a user clicks Send
Code.
Number of minutes before the user can
attempt to send another SMS code for
verification

Time that must pass before another SMS
code can be sent to a user.

Number of digits in the SMS code sent to the
user

Number of characters required for a user to
reset their password.

Number of minutes before the SMS code
expires

Time, in minutes, until the SMS code sent to
the user expires.

Use Notify for SMS code notification for
enrollment and verification

Support for SMS channel used for notifying
users for password reset enrollment and
verification.

5. Select Save.
Setting up Recommendation Framework in Service Operations Workspace
You can enable an agent working on an incident to view predictions provided by
Recommendation Framework.
Recommendation Framework is now deprecated and no longer supported or available for
new activation. Recommended Actions for ITSM feature provides the latest experience for this
functionality. To get the advanced version, you must install the Advanced Recommended actions
for ITSM (com.snc.uib.sow_itsm_ra_advanced) plugin and you must procure ITSM Pro package
subscription.

Note: The best practice to get the advanced version is to install the Task Intelligence for
ITSM (com.snc.itsm_ml_task) plugin and procure the ITSM Pro package subscription. For
more information, see Exploring Recommended Actions for ITSM in Service Operations
Workspace.
You must ensure that the following requirements are met:
• Install the Service Operations Workspace ITSM Applications (sn_sow_itsm_cont) application
from ServiceNow Store.
For information about this installation, see Getting started with
Service Operations Workspace for ITSM. With this installation, the following Recommendation
Framework applications are also installed.
Recommendation Framework store applications
Application

Description

Recommendation
Framework (sn_rf)

Provides the framework for dynamic and contextual
recommendations in a configurable workspace.

Recommendations for
Incident Management
(sn_sow_incident_rf)

Provides configurations, for example, recommendation
rules, to predict recommendations for an incident in Service
Operations Workspace.

• Install the Predictive Intelligence for Incident plugin (com.snc.incident.ml) to install the
Relevant problems solution definition. For information about this plugin installation, see
Request Predictive Intelligence for Incident.
• Install the Predictive Intelligence for Major Incident Management plugin
(com.snc.incident.mim.ml_solution) to install the following IT Service Management solution
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3126


<!-- page 3127 -->
definitions. For information about this plugin installation, see Request Predictive Intelligence
for Major Incident Management.
• Install the Predictive Intelligence for Incident Management plugin
(com.snc.incident.ml_solution) to install the following IT Service Management solution
definitions. For information about this plugin installation, see Request Predictive Intelligence
for Incident Management.
◦ Similar Knowledge Articles
◦ Similar Open Incidents
◦ Incident Service
◦ Incident Configuration Item
◦ Incident Assignment
◦ Similar Resolved Incidents
• Train solution definitions to predict recommendations for an incident. For information about
training solution definitions, see Predictive Intelligence .
Configure Recommendation Framework for an incident in Service Operations Workspace
Enable recommendations at field level or from the contextual sidebar for an incident in Service
Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Recommendation Framework > Administration > Recommendation
Properties.
2. From the Recommendation Properties page, configure the recommendation framework
settings.
Recommendation Framework properties
Property

Description

Activate/Deactivate Recommendation Rule
Assignment
group
recommendation
for Incident

Enables the field-level recommendation for the Assignment group field
of an incident.

Configuration
item
recommendation
for Incident

Enables the field-level recommendation for the Configuration item field
of an incident.

Knowledge
articles for
Incident

Enables the Knowledge articles card when you access
recommendations from the sidebar.

Propose major
incident for
Incident

Enables the Propose major incident card when you access
recommendations from the sidebar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3127


<!-- page 3128 -->
Property

Description

Relevant
problems for
Incident

Enables the Relevant problems card when you access
recommendations from the sidebar.

Service
recommendation
for Incident

Enables the field-level recommendation for the Service field of an
incident.

Similar major
incidents for
Incident

Enables the Similar major incidents card when you access
recommendations from the sidebar.

Similar open
incidents for
Incident

Enables the Similar open incidents card when you access
recommendations from the sidebar.

Similar resolved
incidents for
Incident

Enables the Similar resolved incidents card when you access
recommendations from the sidebar.

Set threshold value for field level stamping
Assignment
group
recommendation
for Assignment
group

Threshold value for auto-populating a recommendation in the
Assignment group field. When the prediction value is greater than or
equal to the specified threshold value, the recommendation is autopopulated as the field value.

Configuration
item
recommendation
for Configuration
item

Threshold value for auto-populating a recommendation in the
Configuration item field. When the prediction value is greater than or
equal to the specified threshold value, the recommendation is autopopulated as the field value.

Service
recommendation
for Service

Threshold value for auto-populating a recommendation in the Service
field. When the prediction value is greater than or equal to the specified
threshold value, the recommendation is auto-populated as the field
value.

For information on recommendation rules, see Recommendation rules for an incident in
Service Operations Workspace.
3. Click Save.
Setting up Recommended Actions for ITSM
You can set up Recommended Actions for ITSM to apply real-time actionable recommendations
for speeding up the triaging process and resolving issues quickly across various records in the
Service Operations Workspace.
The standard version of Recommended Actions for ITSM is provided as a part of the Service
Operations Workspace application.
The Advanced Recommended actions for ITSM (sn_sow_itsm_ra_adv) plugin is included with the
ITSM Pro package subscription.
For more information, see Configuring Recommended Actions for ITSM in Service Operations
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3128


<!-- page 3129 -->
Setting up AI Search in Service Operations Workspace for ITSM
Intelligent query features enable you to quickly find the answers that you require. The Next
Experience Unified Navigation search field enables you to search multiple record types and
switch between global search results and results from the workspace applications that you can
access.
For information about AI Search, see AI Search

.

For information about installing and configuring AI Search in Next Experience, see Install AI
Search for Next Experience .
The following configurations are added for the AI Search experience in Service Operations
Workspace.
• A search application configuration, [AIS]. For information about search application
configurations, see Search application configurations . To modify the card layout of the AI
Search results, you can modify its EVAM definition, AI Search for Next Experience. Search
for and add an EVAM configuration bundle. For information about the EVAM definition, see
Configuring EVAM definition .
• A search profile. For information about search profiles, see AI search profiles

.

Note:
◦ AI Search experience is available in Service Operations Workspace starting in version
1.3.
◦ AI Search for Service Operations Workspace version 1.3 is compatible with the SR
- PlatformX - Search - AI Search for Next Experience Bundle - v2.0. For all upgrade
scenarios, use the Guided Setup for Zing to AI Search Migration module and ensure
that the following conditions are met:
▪ New search sources should be indexed.
▪ The search profile should be published.
▪ AI Search should be enabled.
For information about using Guided Setup for Zing to AI Search Migration, see
Configuring AI Search for Next Experience .
◦ Ensure that the search engine is set to AI Search. To set the AI Search, ensure that the
globalSearchDataConfigId UX page property value is set to the sys_id of the AI
Search, 6fcaa8d770a45110f877edb72a2fbd2f.
• Genius results display the most relevant information and actions for a search query using
Genius Result cards. The genius result cards appear alongside the regular search results. For
more information about genius results, see Genius Results . By default, Service Operations
Workspace supports the Q&A genius result configuration. If it isn’t active, ensure the following:
◦ Ensure that the version of AI Search for Next Experience is 3.0 or later.
◦ Ensure that the Q&A genius result configuration is in an Active state. For more information
about the Q&A genius result configurations, see Q&A Genius Results .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3129


<!-- page 3130 -->
AI Search experience in Service Operations Workspace

You can customize the AI Search experience by adding a data source, editing a search profile,
and so on, by using the AI Search Guided Setup. For information on using this guided setup, see
Configuring AI Search .
Install Universal Request for Service Operations Workspace
You can install the Universal Request for Service Operations Workspace application
(com.snc.universal_request) if you have the admin role.The application includes demo data and
®
installs related ServiceNow Store applications and plugins if they aren’t already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Universal Request:
• Plugins
• Store applications
• Roles
For more information, see Universal Request in Service Operations Workspace reference.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Universal Request application (com.snc.universal_request) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you’re displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3130


<!-- page 3131 -->
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Install Universal Task for Service Operations Workspace
You can install the Universal Task application (sn_uni_task) if you have the admin role.The
®
application includes demo data and installs related ServiceNow Store applications and plugins
if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Universal Task:
• Plugins
• Store applications
• Roles
For more information, see Universal Task in Service Operations Workspace reference.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Universal Task application (sn_uni_task) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3131


<!-- page 3132 -->
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Admin Center in Service Operations Workspace for ITSM
The Admin Center provides centralized control of the instance to admins. It provides effortless,
quick access to manage all customizations in Service Operations Workspace (SOW) for IT
Service Management (ITSM), and additional plugins that extend the Service Operations
Workspace for ITSM capabilities.
The Admin Center provides a single page where an admin can access all platform capabilities,
applications, plugins, and help. It consists of the following tabs:
• Overview: Provides access to all customizations available in Service Operations Workspace
for ITSM.
• Configurations: Provides access to page-related customizations available in Service
Operations Workspace for ITSM. For example, the landing page, incident record page, change
management page.
• Learning: Provides access to learning resources to assist the admins in gaining a deeper
understanding of SOW configuration. These resources are designed to provide users with the
necessary knowledge and skills to effectively configure and manage ITSM.
Manage configurations in Service Operations Workspace for ITSM
From a single page, quickly access and manage the customizations in Service Operations
Workspace (SOW) for ITSM, access additional plugins that extend the Service Operations
Workspace for ITSM capabilities, and access ServiceNow help.

Before you begin

Role required: sn_sow_admin.sn_sow_admin and sn_sow_itsm_admin.sow_admin_user, admin,
change_manager

About this task

The Admin Center consists of the following tabs:
• Overview: Provides access to all customizations available in Service Operations Workspace
for ITSM.
• Configurations: Provides access to page-related customizations available in Service
Operations Workspace for ITSM. For example, the landing page, incident record page, and
modern change management page.
• Learning: Provides access to learning resources to assist the admins in gaining a deeper
understanding of SOW configuration. These resources are designed to provide users with the
necessary knowledge and skills to effectively configure and manage ITSM.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. Optional: If not already installed, from the Configure ITSM Core section, install applications
such as Incident Management.
3. Select any of the following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3132


<!-- page 3133 -->
Option

Description

Mi­
grate
configu­
rations
and
cus­
tomiza­
tions
On the Overview tab, from the Initial Setup section, select the Migrate from ITSM
from
Agent Workspace to SOW option. For information about this migration utility, see
ITSM
Migration from ITSM Agent Workspace to Service Operations Workspace for ITSM.
Agent
Work­
space
to
SOW
for
ITSM
a. On the Overview tab, from the Initial Setup section, select the Configure the
landing page option.
b. To modify the landing page redirection properties, do the following steps.
i. Select Landing Page Configurations > Landing page redirection.
ii. For the required property, select Configure. For information about these prop­
erties, see Redirect non-admin users to Service Operations Workspace.
iii. Edit the property and select Update.
c. To configure landing page sections, do the following steps.
i. Select Landing Page Configurations > Landing page.
Config­
ure the
landing
page

ii. If available, select Configure beside the following landing page options to con­
figure them and use the toggle switch beside the options to modify the visibili­
ty.
▪ Greeting message that is displayed as a header.
▪ For tier 1 and tier 2 agents, the default list view visibility for donuts. Collaps­
ing the list view reduces the page load time and it can be expanded by se­
lecting any donut card.
▪ For tier 1 and tier 2 agents, customizations for various landing page sections
such as Overview (donut cards), Announcements, Quick Links, and Upcom­
ing, and also the visibility for a few of these sections.
▪ For tier 1 agents, visibility of the Getting started section that provides an
overview of key features in Service Operations Workspace.
For information about landing page customizations, see Customizing Service
Operations Workspace for ITSM to align with your requirements.

Config­ a. On the Overview tab, from the Initial Setup section, select the Configure the
ure the
contextual side panel option. The Contextual side panel configurations page is
avail­
displayed.
abili­
ty and b. To configure the availability of a tab for all applicable pages in SOW for ITSM, do
the following steps.
order
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3133


<!-- page 3134 -->
Option

Description

of con­
i. Select the associated app route for the required tab.
textu­
ii. From the More Actions drop-down, select Activate or Deactivate.
al side
panel
c. To modify the order of a tab for all applicable pages in SOW for ITSM, edit the Or­
tabs for
der field for the associated app route.
record
pages
Note: Ensure that the user's scope is set to that of the app route.
a. On the Configurations tab, select the Incident Management option.
b. Select Incident record and then select Configure to configure any of the follow­
ing tabs:
▪ Overview: Configure any of the following options for the Overview tab.
▪ Tab visibility for tier 1 agents: Configure the visibility settings to display the
Overview tab for the tier-1 agents. You can also configure the user criteria to
include or exclude users with other roles and user groups.

Note:
▪ By default, the Overview tab is displayed for the tier-1 agents.
▪ When you choose to hide the Overview tab for the tier-1 agents, the
Details tab opens by default.
▪ This option is available only if the

glide.ux.user_criteria_enabled property is true. For
more information, see

Con­
figure
the in­
cident
record
page

.

▪ Summary: Configure the fields layout, UI elements and the visible data con­
tent on the Summary section of the Overview tab.
▪ Impact: Configure the fields layout, UI elements and the visible data content
on the Impact section of the Overview tab.
▪ Cause: Configure the fields layout, UI elements and the visible data content
on the Cause section of the Overview tab.
▪ Resolution: Configure the fields layout, UI elements and the visible data con­
tent on the Resolution section of the Overview tab.
▪ Details: Configure any of the following options for the Details tab.
▪ Record: Provides further details on the incident record. Configure the fields
layout, UI elements, and the visible data content of the Details tab using
form builder.
▪ New record: This layout appears when an agent creates an incident record.
Configure the fields layout, UI elements, and the visible data content of the
Details tab using form builder.
▪ Response templates: Create and configure response templates for incidents.
Response templates are used as reusable messages that you can copy and
paste in the required areas such as email or chat for a quick response. To
use the response template feature, the users must have the sn_templated_s­
nip.template_snippet_reader role. The number of the response templates cre­
ated for the incident table is displayed in this section. For more information on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3134


<!-- page 3135 -->
Option

Description

defining and configuring the response templates for incident tables in Service
Operations Workspace, see
.
▪ Incident management properties: Configure the incident features using the in­
cident management properties. For more information on configuring incident
management properties, see Incident Management properties.
For more information about configuring the field layout, UI elements and the visible
data content using form builder, see
.
For information about incident record page customizations, see Customize the inci­
dent record page.
a. On the Configurations tab, select the Major Incident Management option.
b. Configure any of the following options:
Con­
figure
the Ma­
jor In­
cident
Man­
age­
ment
fea­
tures

▪ Major incident manager role
▪ Major incident trigger rules
▪ Communication templates
▪ Communication plans
▪ Playbook
▪ Email notifications
▪ Timeline configurations for post incident report.
For more information on the configurations of features in Major Incident Manage­
ment in Admin Center, see Configuring Major Incident Management in Service Op­
erations Workspace.

Config­ a. On the Configurations tab, select the Problem Management option.
ure the
b. Configure the following options.
Prob­
▪ Problem record: choose whether to enable the overview tab, and configure the
lem
problem record UI elements and the visible data content. For more information,
Man­
see
age­
ment
▪ Problem task record: configure the problem task record UI elements and the
fea­
visible data content. For more information, see Customize forms within a form
tures
a. On the Configurations tab, select the Change Management option.
b. Configure the following options.
Config­
ure the
Change
Man­
age­
ment
fea­
tures

▪ Modern change adoption: Contains widgets which navigates to the configu­
ration pages for change models, change approval policies, risk and success
scores, and automating DevOps changes.
▪ Change models: Create optimized change state models with policy-based au­
tomation capabilities that are fit-for-purpose to increase change efficiency and
velocity. Create change models, change model condition types, and change
flows through this section.
▪ For information on creating a change model, see Create a Change model.
▪ For information on creating change model condition types, see Create prede­
fined transition condition types.
▪ For information on configuring flows, see

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3135


<!-- page 3136 -->
Option

Description

▪ Change approval policies: Create change approval policies to streamline your
approval process. Ensure that changes gain the approvals needed to drive
stability and compliance, without compromising on change velocity. Create
change approval policies and definitions through this section.
▪ For information on creating change approval policies, see Create change ap­
proval policies.
▪ For information on creating approval definitions, see Create approval defini­
tions.
▪ Risk and success scores: Use data-driven risk capabilities (risk conditions,
risk calculations, and ML-based risk intelligence) to take the subjectivity out of
risk and have automatic, data-driven determinations. Create risk conditions,
change success score ratings, success probability definitions, risk assess­
ments, and calculated risk score through this section.
▪ For information on creating risk conditions, see Risk conditions and calcula­
tion.
▪ For information on creating change success score ratings, see Change suc­
cess score.
▪ For information on creating success probability definitions, see Success
Probability definitions.
▪ For information on creating risk assessments, see Risk assessment.
▪ For information on calculated risk score, see Calculated Risk Score.

Note: You can also navigate to the Change Success Dashboard to see
trends in resolution efficiency for a team, change type, or change model
over time based on the parameters used to calculate the overall success
score. For more information, see Exploring ITSM Success Dashboard indi­
cators.
▪ Automate DevOps changes: Automate DevOps changes with DevOps Change
Velocity. Connect and configure tools from your DevOps toolchain with our De­
vOps data model to drive enhanced DevOps change traceability. Automatical­
ly create changes from CI/CD pipeline executions with relevant DevOps data
attached and leverage that data to drive full change approval automation. For
more information, see DevOps Change Velocity.
▪ Change record: Configure the change record UI elements and the visible da­
ta content. For more information, see Customize forms within a form compo­
.
▪ Change task record: Configure the change task record UI elements and the visi­
ble data content. For more information, see Customize forms within a form com­
.
a. On the Configurations tab, from the SOW configurations section, navigate to
Con­
the On-call Scheduling tile and select Configure.
figure
the On- b. Configure any of the following options through a guided experience to improve
Call
the productivity of group managers and on-call agents.
Sched­
▪ On-call user groups and preferences. For information about these preferences,
uling
see Configure preferences for a user group.
fea­
tures
▪ On-call templates
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3136


<!-- page 3137 -->
Option

Description

▪ Schedule templates. For information about on-call schedules, see Configure
or update an On-Call schedule and Update a schedule entry.
▪ Group templates. For information about group templates, see Create a group
template to simplify configuring schedules and Create a shift template to sim­
plify configuring shifts.
▪ Escalation policy templates. For information about escalation policy, see Cre­
ate an escalation policy.
▪ Contact preference templates. For information about contact preferences,
see Configure my availability and contact preferences.
▪ On-call trigger rule table configuration. For information about creating and con­
figuring trigger rule table config, see Configure a table for escalation trigger
rules.
▪ On-call properties. For information about these properties, see System proper­
ties for On-Call Scheduling.
c. Update the configuration and mark it complete, or skip the configuration.

Note: You can restart a skipped configuration.
a. On the Configurations tab, select the Service Reliability Management option.
Config­
ure the
Service
Reliabil­
ity Man­
age­
ment
sec­
tions

b. Configure any of the following options:
▪ Assign and import
▪ Governance and Autonomy
▪ Integrations

Note: This option isn’t available for the SOW admin role. For more informa­
tion on the various roles in the Admin Center, see Admin Center in Service
Operations Workspace for ITSM.
For information about Service Reliability Management configurations, see Service
.
a. On the Configurations tab, from the SOW configurations section, navigate to
the Notify tile and select Configure.

Config­
Configure the following options:
ure the b.
Noti­
▪ Configure your provider preferences.
fy fea­
▪ Configure Notify properties
tures

For more information on configuring Notify, refer Configuring Notify in Service Op­
erations Workspace.
Migrate the existing charts to PAR dashboard in Service Operations Workspace for ITSM
You can migrate the common customizations and configurations of the existing dashboard to
the Performance Analytics dashboard(PAR dashboard) using the on-screen migration utility.
With this migration, you won't have to re-do the customizations for the PAR dashboard in Service
Operations Workspace for ITSM to view the data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3137


<!-- page 3138 -->
Before you begin

Ensure that the scope is set as Service Operations Workspace ITSM Common before you
perform the migration.

Note: If you haven't customized the landing page, the system will be automatically
migrated to the PAR dashboard. Once migrated, you can leverage the configuration options
and features provided by the PAR dashboard.
The modifications made by overriding the sys_ux_client_script_include
methods for SowIncidentLandingPageUtilsSNC and
SOWLandingPageTier2UtilsSNC are considered for migration. These
changes are applied to SowIncidentLandingPageUtils for Tier 1 and
SOWLandingPageTier2Utils for Tier 2 dashboards. If you've created the scripts
to override the methods in the SNC version, you must copy those changes to the
corresponding non-SNC scripts.
Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. Select Initial setup > Landing page.
3. Select Learn more on the alert message that displays.
4. Select Preview migration to preview the chart that will be migrated.

The preview of the dashboard containing the customized charts opens in a new tab. Once you
preview the dashboard, the label is updated from Not previewed to Previewed.
5. Select Migrate to configurable charts.
On the confirmation dialog box, select Yes, migrate to migrate the charts to the PAR
dashboard.
Upon successfully migration, the label is updated as Complete. You can view the updated
charts in the PAR dashboard in the SOW landing page.

Note: You can perform the migration only once.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3138


<!-- page 3139 -->
Configuring Service Operations Workspace for ITSM to improve your
experience
Besides the configurations that are part of the essential setup for implementing Service
Operations Workspace for ITSM, you can still improve your Service Operations Workspace for
ITSM experience with a few configurations.
Assign the service desk agent role to the user in Service Operations Workspace
Assign the service desk agent role to users to enable them to manage incidents, fulfill service
requests, and offer user support.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, do one of the following:
◦ In the Overview tab, select the Configure button in the Initial setup section.
◦ In the Configurations tab, select Initial setup > Service desk agent role.
The Service Desk Agents page displays the following tabs:
◦ Service Desk Agents: List of users who have the service desk agent role.
◦ Available groups and users: List of all available users in the system.
3. Select the Available groups and users tab.
4. Select a group to assign all the users in the group with the service desk agent role.
Select a user to assign the service desk agent role.
5. Select Assign service desk agent role.

Result

The selected users are assigned with a service desk agent role.
Reorder the navigation pane modules in Service Operations Workspace for ITSM
Quickly access the navigation pane modules in Service Operations Workspace for ITSM. For
example, Home, List, Inbox, and so on.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. On the Service Operations Workspace page, select Settings at the top.
4. On the Experience Settings: Service Operations Workspace page, navigate to the Side
navigation section.
This section displays all modules left navigation pane modules in Service Operations
Workspace for ITSM.
5. Drag the modules in the required order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3139


<!-- page 3140 -->
Configure the inbox in Service Operations Workspace
Enable an agent to receive and respond to chat conversations initiated from Service Portal.

Before you begin

Role required: admin

Procedure
1. Install the Advanced Work Assignment plugin (com.glide.awa).
2. Install the Agent Chat plugin (com.glide.interaction.awa).
3. Configure the Agent Chat Queue.
For example, to add agent groups who can handle the incoming chat conversations. For
information about configuring queues, see Work item queues
and Set up Agent Chat

.

Enable automatic assignment of interactions to an agent
Automatically accept chat conversations for an agent without having to accept or reject them in
the inbox.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Advanced Work Assignment > Settings > Assignment Rules.
2. Select the Chat - Most Capacity assignment rule.
For information about AWA assignment rules, see Configure agent assignment rules

.

3. In the Auto-assign handling related list, perform the following tasks.
a. Select the Enable auto-assign work items check box.
b. From the Display options list, select the required value.
▪ Inbox card: Accepts the interactions and adds them to the agent inbox. Agent can open
the accepted interaction from the inbox.
▪ Inbox card and workspace tab: Accepts the interactions and opens a tab for each
accepted interaction.
4. Click Update.
Configure alerts in Service Operations Workspace
Configure the alert and notification messages in Service Operations Workspace (SOW) using
UI Builder to automatically dismiss within a specified time and automatically expand the alert
notification content.

Before you begin

The UI Builder bundle must be installed or updated to version 28.1.
Role required: sn_sow_admin.sn_sow_admin or admin

About this task

If you don't have the UI Builder application updated to version 28.1, you can still configure the
alert notifications by navigating to All > Now Experience Framework > Experiences and then
select Service Operations Workspace from the list of UX applications. You can then select the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3140


<!-- page 3141 -->
alert_auto_dismiss_config UX page property and customize the script in the Value field to
configure the alert notifications.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. In the Experiences tab, from the application list, search and select Service Operations
Workspace.
3. Select View experience settings.
4. In the Configure alerts section, fill in the following fields:
Auto-dismiss alerts
Alert status

Auto-dismiss

Timeout (Seconds)

Critical

Select the check box to
automatically dismiss the
critical alerts.

Specify the time in seconds
within which the critical alert
is dismissed automatically.

High

Moderate

Note: By default, this

Note: By default, this

check box is cleared.

field is empty.

Select the check box to
automatically dismiss the
high alerts.

Specify the time in seconds
within which the high alert is
dismissed automatically.

Note: By default, this

Note: By default, this

check box is cleared.

field is empty.

Select the check box to
automatically dismiss the
moderate alerts.

Note: By default, this
check box is cleared.

Specify the time in
seconds within which the
moderate alert is dismissed
automatically.

Note: By default, this
field is empty.

Warning

Info

Select the check box to
automatically dismiss the
warning alerts.

Specify the time in seconds
within which the warning alert
is dismissed automatically.

Note: By default, this

Note: By default, this

check box is cleared.

field is empty.

Select the check box to
Specify the time in seconds
automatically dismiss the info within which the info
notification messages.
notification message is
dismissed automatically.
Note: By default, this
Note: By default, this
check box is selected.
field is set to three
seconds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3141


<!-- page 3142 -->
Alert status

Auto-dismiss

Timeout (Seconds)

Positive

Select the check box to
automatically dismiss
the positive or success
notification messages.

Specify the time in seconds
within which the positive or
success notification message
is dismissed automatically.

Low

Note: By default, this

Note: By default, this

check box is selected.

field is set to three
seconds.

Select the check box to
automatically dismiss the low
notification messages.

Specify the time in seconds
within which the low
notification message is
dismissed automatically.

Note: By default, this
check box is selected.

Note: By default, this
field is set to three
seconds.

Note: The Timeout (Seconds) field is enabled only if the Auto-dismiss check box is
selected for the specific alert status such as Critical, Moderate and so on.
Display options
Field

Description

Show time label

Select the check box to display the time label
along with the visual time indicator when alert
notification is automatically dismissed within
the set auto-dismiss time.

Note: By default, this check box is
cleared.
Expand alert content by default

Select the check box to automatically expand
the alert content in the alert notification
message.

Note: By default, this check box is
selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3142


<!-- page 3143 -->
Note: You can view the Configure alerts section only if you have updated UI Builder
application to version 28.1 (Zurich).
5. Select Save.
Configure the list page in Service Operations Workspace for ITSM
Configure the fuzzyCount property to modify how the number of records is displayed on the
Service Operations Workspace (SOW) list page. Configuring the fuzzyCount property helps
improve the system performance.

About this task
The input of the fuzzyCount property is JSON key value pair. The property applies to any new
list component used across SOW pages where record count limit input for the component isn't
defined.
The fuzzyCount property applies to all SOW list including related list and Multi Record
Associator (MRA) list in the SOW records pages.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the SOW Admin Center page, navigate to Initial setup > SOW properties.
3. On the SOW properties page, in the Improve page load speed for list view pages in SOW tile,
select Configure.
The fuzzyCount UX property page opens on a separate tab.
Alternatively, you can also access the fuzzyCount UX property page by navigating to
All > Now Experience Framework > Experiences. From the list of UX applications, select
Service Operations Workspace and then from the UX Page Properties related list, select the
fuzzyCount property.
4. On the UX Page Property page, edit the Value field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3143


<!-- page 3144 -->
fuzzyCount
Value

Description

{"default":-1}.

Displays the count of the total number of
records in a list. The fuzzyCount UX property
is not applied to the SOW list page.

{"default":<integer>}.

Displays the count of the number of records
in a list as <integer+>.
For example, if the incident has 124 records, if
you configure the value of the property as 10,
the system displays the count of incidents as
10+.

{"default":<integer>, "incident": <integer1>}.

Displays the count of the number of records
in a list as <integer+>. You can also set the
count of the records to be displayed for a
specific table or record type such as incident.
For example, if the incident has 14 records,
if you configure the incident value in the
property as 10 and default value as 20, the
system displays the count of incident records
as 10+ and for the non incident list, the count
is displayed based on the default value
defined in the property which is 20+.

5. Select Update.
Configuring record pages in Service Operations Workspace for ITSM
To align with your record page requirements, you can configure the data available in record
pages in Service Operations Workspace for ITSM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3144


<!-- page 3145 -->
To know about the record page configurations that are part of essential setup for implementing
Service Operations Workspace for ITSM, Record page configurations in Service Operations
Workspace for ITSM.

Note: Selecting any empty reference field such as Configuration item, Service offering

and Service in SOW displays only the recent selection values instead of automatic
searching and displaying the results of the field values available in the system. This change
increases the overall performance of the reference fields. This change is applicable only
to reference fields with no field values. By default, this change is enabled. To revert this
change, set the Reference search on click (ref_search_on_click) UX page property
to set to true.
Configure a record page tab in Service Operations Workspace
Configure the display order of a record page tab in Service Operations Workspace.

Before you begin

Role required: workspace_admin, sn_sow_admin.sn_sow_admin, ui_builder_admin, or admin

About this task

The record pages (incident, problem, change, and so on) in Service Operations Workspace have
multiple tabs. Few tabs such as the Overview tab of the incident record page are specific to a
record page. Few other tabs are common across multiple record pages in multiple workspaces,
for example, the Details tab. The Details tab is associated with incident, change, problem, and
other record pages in multiple workspaces.
When you modify the order of a common tab in multiple record pages and workspaces, the
changes are applicable in all those records and workspaces.

Procedure
1. From the All menu, navigate to sys_ux_app_route.list.
2. From the UX App Routes list, select the tab record that you want to modify.
◦ To modify the order of a common tab. For example, the Details tab, select Record Details
Tab. Any changes that you make are applicable to the Details tab in all associated record
pages in multiple workspaces.
◦ To modify the order of a record page-specific tab. For example, the Overview tab of the
incident record page in Service Operations Workspace, select Overview whose App
Configuration is Service Operations Workspace and Parent macroponent is Record Page
Tabs. Any changes made are applicable only to the Overview tab of the incident record
page in Service Operations Workspace.
3. On the UX App Route form, modify the Order field.
If the UX App Route form doesn’t contain the Order field, add the Order field to the form. For
more information about adding a field to the form, see Show or hide fields on a form .
4. Select Update.
Configure a task record form in Service Operations Workspace
Configure a task record form in Service Operations Workspace by modifying the form layout or
related lists from the classic ServiceNow AI Platform user interface.

Before you begin

Role required: sn_sow_admin.sn_sow_admin and form_admin, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3145


<!-- page 3146 -->
About this task

A task record, for example, problem or incident, has the following editable views in Service
Operations Workspace.
• The view while creating the record.
• The Details tab view after the record is saved.

Procedure
1. Open a task record, for example, in an incident or problem, in the classic ServiceNow AI
Platform user interface.
2. Perform any of the following actions.
Option

Description

Edit the form view that appears while creat­
ing a record

Select the additional actions icon ( ) on the
header and navigate to View > Service Oper­
ations Workspace New Record.

Select the additional actions icon ( ) on the
Edit the form view that appears after saving
header and navigate to View > Service Oper­
the record
ations Workspace.
3. On the task record form, for example, in an incident form, select the additional actions icon
( ) and perform any of the following actions.
Option

Description

Edit fields

Navigate to Configure > Form Layout.

Edit related lists

Navigate to Configure > Related Lists.

4. Move the required fields and related lists from the Available list to the Selected list.
5. Select Save.
Define and customize activity stream tags
Define and customize the activity stream tags for the record pages in Service Operations
Workspace. The tags helps in filtering the activity from the activity streams as required.

Before you begin

Role required: sn_sow_admin.sn_sow_admin or admin

Procedure
1. Navigate to All > Now Experience Framework > Experiences.
2. Search and select Service Operations Workspace.
3. On the Service Operations Workspace UX registry record, from the UX Page Properties related
list, select activityStreamProps.
By default, the activity stream UX page property record contains no tag information.
4. Edit the activity stream UX page property record.
5. Enter the following tag information in the Value field to define and customize your tags.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3146


<!-- page 3147 -->
◦ Color - Color of the tag.
◦ Icon - Icon type of the tag.
◦ Labels - Label name of the tag.
◦ Tables - Table to which the tag is applied such as incident or interaction.
For more information on how to use the correct values to customize the tags, see Configure
tags for the Activity stream .
6. Select Update.
Configure the Assign or Resolve dialog box for an incident or change request in Service
Operations Workspace
Customize the fields displayed in the Assign and Resolve dialog box for an incident in Service
Operations Workspace. Customize the fields displayed in the Assign dialog box for a change
request in Service Operations Workspace.

Before you begin

Role required: admin

About this task

Important:
• For an incident, you can customize the fields in the Assign and Resolve dialog boxes.
• For a change request, you can customize the fields in the Assign box.
• Only the fields that are configured in the Service Operations Workspace view can be
added to the Resolve or Assign dialog boxes.
• Any pre-configured client scripts and UI policies configured for the customized fields are
also applicable on the Resolve or Assign dialog boxes.
• The fields in the Assign, Reassign and Resolve dialog boxes do not support field
decorators.

Procedure
1. Configure the Assign dialog box.
a. Open an incident or change request in Core UI.
b. On the incident form or the change request form, select the additional actions icon (
the header.

) on

c. Navigate to View > SOW Assign Modal.
The record is opened in the SOW Assign Modal view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3147


<!-- page 3148 -->
d. Select the additional actions icon (

) on the header.

e. Navigate to Configure > Form Layout.
f. Move the required fields from the Available list to the Selected list.
g. Select Save.
2. Configure the Resolve dialog box.
a. Open an incident in Core UI.
b. On the incident form, select the additional actions icon (

) on the header.

c. Navigate to View > SOW Incident Resolve Modal.
The record is opened in the SOW Incident Resolve Modal view.
d. Select the additional actions icon (

) on the header.

e. Navigate to Configure > Form Layout.
f. Move the required fields from the Available list to the Selected list.
g. Select Save.
Configure the experts On-call panel for an incident
Configure the Experts on-call panel for an incident.

Before you begin

Role required: admin
To configure the Experts On-call panel, ensure that you have added an implementation for the
sn_sow_on_call.ExpertsOnCallTabConfig extension point.

Note:
• Incident table extension point implementation is added by default. To customize it, edit
the script to include ExpertsOnCallTabConfigForIncident.
• Example: If you want to display only the assignment group in the Experts On-call panel,
then update the getRecommendedFieldWatchList in the script.

About this task

To add Experts On-call for Problem table, follow the steps:

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. Select and open the sn_sow_on_call.ExpertsOnCallTabConfig extension point.
3. Select Create implementation from the related links section.
4. Modify the Script as required:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3148


<!-- page 3149 -->
Extension point APIs
Method

Inputs

Return

getTableName

None

String – Table name for
which an extension point is
implemented

getRecommendedFieldWatchList
None

Array – List of fields that you
want to show on the Experts
On-call recommended
groups panel.
For example:

[“assignment_group”,
“cmdb_ci”]
getRecommendedGroups

◦ recordGr – GlideRecord
reference

Array – List of objects
containing recommended
group, sys_id, and the
respective message.

◦ fieldWatchList – Object
containing all the fields and
For example: [ { :
their respective values.

"Recommended based
on assignment
{ "assignment_group": group" } ]
<assignment_group_sys_id> }
For example:

isExpertOnCallTabSupported
None

Boolean – return true to
enable the Expert On-call for
this table.

5. Select Update.
Create a task type for problem or change in Service Operations Workspace
Configure a task type that can be used during problem or change creation.

Before you begin

Role required: admin

About this task

If you extend problem task or change task to add your own task type, you can set the child of
problem or change task as the target table. Depending on the default values you set in the child
of problem task or change task, you need not pass any values.
For information about creating a change task, see Create a change task in Service Operations
Workspace.
For information about creating a problem task, see Create a problem task in Service Operations
Workspace.

Procedure
1. In the navigation filter, enter sn_sow_interceptor_record_type_selector.list.
2. From the Record Type Selectors list, select New.
3. On the Record Type Selector form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3149


<!-- page 3150 -->
Record Type Selector form
Field

Description

Applies to

Table that the task type applies to. Select Problem task [problem_task] or
Change Task [change_task].

Order

Order of the task type in the Create problem task or Create change task dialog
box.

Application Scope of the application.
Active

Option for enabling the task type.

Title

Card title that is displayed in the Create problem task or Create change task
dialog box.

Description Card description.
Target
table

Table where the record should be created when using this task type.

Note: This field is not displayed if the table selected in the Applies to
field does not have any child tables.

Values

Default values that are populated when creating a record using this task type.

Configuring Standard Record Page in Service Operations Workspace
Configure individual record pages to display information and help them to update the
customization easily.
A Standard Record Page (SRP) is the basic format in which records appear in the Service
Operations Workspace. These record pages have containers, components, modals, and other
layouts that display the record information.
Service Operations Workspace contains incidents, cases, and tasks that an agent requires
for daily work. SRP provides a basic structure that displays record information, such as a
communication interface and suggestions for resolution. It provides the following constructs that
help in customization:
• Presets: Presets are the pre-configured mappings inside the record pages. When you add
a new component to the record page, the presets associated with the component are also
added to the record page. You can configure presets to components by selecting the
lock
icon of a configuration. A copy or duplicate of the component contains these preset values.
• Controllers: Controllers are the base scripts that help implement a record page's functionality.
When you create a copy or duplicate of the record page, SRP establishes a reference to the
original controller. You can’t modify the base functionality of the record page. However, you can
modify the record page using the scripts and states according to your requirements.

Note:
• If you are on a version prior to 4.0, you can change the Incident record page using
Record SNC in the UI Builder.
• ServiceNow doesn’t recommend customizing the Incident record page using methods
such as Record SNC or SRP Record. So, no support is provided for record page
customizations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3150


<!-- page 3151 -->
Adding Declarative Actions on the Standard Record Page
Adding declarative actions on the Incident page and the tabs inside the incident record page
using the Standard Record Page (SRP) in the Service Operations Workspace.

Before you begin

Role required: admin

About this task

Declarative actions help you to modify the list actions, related list actions, and field decorators
available in the Service Operations Workspace. For more information about creating declarative
actions and how to use them, see Declarative actions .
Along with the declarative actions customizations, the SRP or Standard Record Page also
modifies the add-on events in the Incident records and the tabs inside the records.

Procedure
1. Navigate to All > sys_ux_addon_event_mapping.list.
2. From the UX Add-on Event Mappings list, go to the required event mapping.
You can add two types of declarative actions mappings.
◦ Declarative action mappings without using the parent macroponent. This option uses the
controllers for the mappings.
◦ Declarative action mapping using the source element ID and the parent macroponent. This
option doesn’t use the controllers.
For example, to modify the form declarative action to create a change, go to the Form
Create Change task for which the Parent Macroponent is empty. Similarly, you can add the
declarative action for inline tabs inside an incident. For example, to add a declarative action
to add a change request to the Related Records list, go to SOW Related list Add Change
Request for which the Parent Macroponent is empty.

Note: To add declarative action to page collection tabs such as Overview, add Handled
events in the UI Builder. Map this event to the event in the UX Add-on Event Mappings list
using the Source element ID.
3. Add the following information to modify the action.

Field

Description

Source Component

The component emits the source event. For
example, the Action bar.

Source Declarative Action

Declarative actions used as the source event

Controller

A controller that handles the target event. For
example, Form.

Target Event

Handled event that the mapping in Target
Payload mapping targets

Target Payload Mapping

The binding of the container and the type of
the event

Custom Modal Migration in Standard Record Page
Modify the modal containers inside a record page in the Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3151


<!-- page 3152 -->
Before you begin

Role required: admin

About this task

Standard Record Page (SRP) provides options to modify the different modals used inside Service
Operations Workspace. You can duplicate the modals in the page collection and modify them
according to your requirement.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Under the Experiences list, select Service Operations Workspace.
3. Under the Pages and Variants section, under Record, select SRP Record.

Note: If you are on a version prior to 4.0, you can navigate from Record SNC in UI
Builder to modify the Overview tab of an Incident record page.

4. From the left of the UI Builder, navigate to Modals and popovers > Modals, and select Modal
Container (Viewport).
5. From the right of the UI Builder, navigate to Configs > Page collection.
There are two options available under Page collections.
◦ Record Page Modals: Select this option to modify modals across all experiences.
◦ SOW Record Page Modals: Select this option to modify the modals used in Service
Operations Workspace.
6. Select the

icon to open the variants provided.

7. Select the
icon to create a page or to add a new variant to a page.
For more information about creating a page and variant, see Learn UI Builder by example
Modify the Record Page in the Service Operations Workspace using the Standard Record
Page
Configure the order number and screen conditions of a record page using the Standard Record
Page (SRP) in the Service Operations Workspace.

Before you begin

Role required: admin

About this task

Every record page contains an order number, which can be active or inactive. A default record
page must be active and have the lowest order number. Service Operations Workspace displays
the record with the lowest active order number as the default record page.
SRP also provides ways to add screen condition mappings when a page appears.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Under the Experiences list, select Service Operations Workspace.
3. Under the Pages and Variants section, under Record, select SRP Record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3152


<!-- page 3153 -->
Note: If you are on a version prior to 4.0, you can navigate from Record SNC in UI
Builder to modify a record page.

4. Under Contents, in the Body level, select Main Tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3153


<!-- page 3154 -->
Main tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3154


<!-- page 3155 -->
5. If the new copy is in a different application scope, select Edit in original scope before editing.

6. From the right of the page, navigate to Config > Tabs.
SRP record has four types of tabs for customization.
◦ Page Collection: Contains the pages and variants associated with the record page.
◦ Inline tabs: Inline tabs and the Page collection tab contain the code related to a page.
◦ Related List: Contains the details of the records associated with the record. The related list is
a static tab, and you can’t modify the order of this tab.
◦ Repeater tabs: Contains the details of the tabs that recur throughout the page. The repeater
tab is a static tab, and you can’t modify the order of this tab.
These tabs help in changing of the page layout. For example, if you want to add a tab that
appears before the Details tab, you can change the SOW - Record tabs left. Similarly, to add a
tab after the Details tab, you can modify the SOW - Record tabs middle.
7. To modify and view the pages and variants inside each tab, select the

.

8. Under the Pages and Variants list, select the required page.
For example, inside the Page collection tab, select Incident Overview SNC.

Note: The data, events, and mappings in the Config and Events tabs can’t be modified.
9. From the top of the page, select the

open menu icon.

10. To modify the order of the record, perform the following steps.

a. Select the Settings tab

.

b. To modify the display order of the record, edit the Order value.
The variant with the lowest order is considered the default configuration.
11. To modify the variant ordering, perform the following steps.
a. Navigate to Developer > Open variant collection record.
b. Under the UX Screens list, modify the Order field.
The default variant has the lowest order value.
c. Select Update.
12. To modify the Screen Conditions of the record page, perform the following steps.
a. Navigate to Developer > Open variant record.
The conditions of the screen appear in the Screen Condition field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3155


<!-- page 3156 -->
b. To modify or add a new UX Screen condition, navigate to the UX Screens conditions list.
c. Select the screen condition.
d. Enable the Scripted Condition field.
e. Modify the Script and Parameter Mapping fields to set the screen conditions
according to your requirements.
f. Select Update.
Configure the Agent Assist tab in Service Operations Workspace using the Standard Record
Page
Enable or disable the Agent Assist tab in the contextual side panel for the required record type
using the Standard Record Page (SRP) in Service Operations Workspace.

Before you begin

Role required: admin

Note: Admin should be in Global Domain to edit the table configurations of Agent Assist in
Service Operations Workspace.

About this task

Add or remove a record table from the screen condition, update the sys_id for the record, and
update the script conditions to enable or disable the Agent Assist tab for that table.

Important: If you are on a version prior to 4.0, see Configure the Agent Assist tab in
Service Operations Workspace.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Page Collections list, select SOW Sidebar tabs top.

Note: The SOW Sidebar tabs top Page collection is used in the Service Operations
Workspace SRP record page.
3. From the Pages and variants list in the Record section, select Agent Assist SNC.
4. Select Settings to switch to the Settings mode.

5. To update the Script Conditions, do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3156


<!-- page 3157 -->
a. Select the Scripted Screen Conditions icon (

) to open the script conditions.

b. Under Active column, select True.
c. If you want to enable the Agent Assist tab for a record table, add the required script to the
Script field and select Update.
d. If you want to disable the Agent Assist tab for a record table, remove the script from the
Script field and select Update.
6. To update the Screen Conditions and sys_id, do the following:
a. From the Open records drop-down list, select Variant record.
b. On the UX Screen form, edit the Screen Condition field and add the record tables where you
want the tab to appear.
For example, you could add the following code for the interaction record.
controller.sowrecordctrl.table=incident^ORcontroller.sowrecor
dctrl.table=problem^ORcontroller.sowrecordctrl.table=problem_
task^ORcontroller.sowrecordctrl.table=change_request^ORcontro
ller.sowrecordctrl.table=change_task^ORcontroller.sowrecordct
rl.table=kb_knowledge^ORcontroller.sowrecordctrl.table=intera
ction
c. If you want to enable the Agent Assist tab, add the relevant sys_id of the table configuration
in Macroponent Configuration.
For more information, see Edit the table configuration for Agent Assist in Service Operations
Workspace using the Standard Record Page.
d. If you want to disable the Agent Assist tab, remove the sys_id of the relevant table
configuration in Macroponent Configuration.

e. Select Update.
Edit the table configuration for Agent Assist in Service Operations Workspace using the
Standard Record Page
Edit the table configuration for Agent Assist to see the required search results in the Agent Assist
tab using Standard Record Page (SRP) in Service Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3157


<!-- page 3158 -->
Before you begin

Role required: admin

About this task

Update the table configuration using to get the required search results.
To create a table configuration, see Configure table for a contextual search

.

Important: If you are on version which is prior to 4.0, Edit the table configuration for
Agent Assist in Service Operations Workspace.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Page Collections list, select SOW Sidebar tabs top.

Note: The SOW Sidebar tabs top Page collection is used in Service Operations
Workspace SRP record page.
3. From the Pages and variants list in the Record section, select Agent Assist SNC.
4. Select Settings to switch to the Settings mode.

5. From the Open records drop-down list, select Variant record.
6. In the UX screen form, add the property and sys ID in the Macroponent Configuration tab.
a. Enter the new table name and the sys_id of the required table

configuration.

Note: To copy the sys_id, navigate to Table Configuration > Copy_sysid.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3158


<!-- page 3159 -->
b. Select Update.

Note: To enable or disable Agent Assist tab, see Configure the Agent Assist tab in
Service Operations Workspace using the Standard Record Page.
Configure the task record information in the MS Teams Import tab
Customize the task record fields displayed when you view or import a Microsoft Teams chat
conversation.

Before you begin

Role required: admin

About this task

When you view or import a Microsoft Teams chat conversation for a task record, the record
details are displayed in the Details section of the MS Teams Import tab. These details are
configured in the Script field of an implementation corresponding to the task record in the
sn_tcm_collab_hook.MSTeamsTaskInfoCardHandler extension point.
For information about collaborating on a task record using Microsoft Teams chat, see Collaborate
on a task record using Microsoft Teams in Service Operations Workspace.
MS Teams Import tab

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. From the Extension Points list, select sn_tcm_collab_hook.MSTeamsTaskInfoCardHandler.
3. From the Implementations related list, select an implementation associated with the task
record and modify the Script field.
4. Edit the Script field.
5. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3159


<!-- page 3160 -->
Specify the refresh duration for user presence in Service Operations Workspace
Define the duration after which the user presence should be refreshed for all collaboration
channels in Service Operations Workspace.

Before you begin

Role required: admin

About this task
The sn_sow_collab.user_presence_refresh_duration property specifies
the refresh duration of user presence for all collaboration channels in Service Operations
Workspace. However, if the user presence refresh duration is also defined for an individual
collaboration channel, then the maximum of these two values is considered for that channel.
For example, consider the following scenario where the user presence refresh duration is
defined individually for Microsoft Teams and also for all collaboration channels in Service
Operations Workspace.
• The

sn_tcm_collab_hook.teams.presence_status_cache_invalidate_duration
property value is set to 240 secs. For information about defining the user presence refresh
duration for Microsoft Teams, see Configure cache duration for the user presence status .

• The sn_sow_collab.user_presence_refresh_duration property value is set to
180 secs.
In this case, the value specified for the

sn_tcm_collab_hook.teams.presence_status_cache_invalidate_duration
property is considered to refresh the user presence in Microsoft Teams.

Procedure
1. From the All menu, navigate to sys_properties.list.
2. Select the sn_sow_collab.user_presence_refresh_duration property.
3. In the Value field, specify the duration after which you want the user presence to refresh.
4. Click Update.
Configuring Interaction Management in Service Operations Workspace
Configure the features of Interaction Management to manage the interactions in Service
Operations Workspace.
Configure the duration to view the requester's activities for an interaction in Service
Operations Workspace
Configure the duration to display requester’s history, consisting of tasks, interactions, and assets.
These details are displayed in the Requester Information side panel of Interaction Management
record

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. Select Configure of Interaction Management from the ITSM core configurations section.
3. Enter the number of days to fetch the data in Days to display data section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3160


<!-- page 3161 -->
Maximum limit is 7 days.
4. Select Update.
Hide the inbox in Service Operations Workspace
Hide the inbox automatically when a work item, like a chat or call, is accepted. If disabled, the
inbox will remain visible even after accepting a work item.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. Select Configure of Interaction Management from the ITSM core configurations section.
3. Toggle the Hide inbox when work item is accepted option.
Automatically close an interaction in Service Operations Workspace
Automatically close the interaction when an incident linked is closed in Service Operations
Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. Select Interaction Management.
3. Toggle the Close Interaction when linked Incident is resolved option.

Result

The interaction record will be automatically closed in the Service Operations Workspace once
the linked incident is closed.
Configure the display of requester related records in an interaction
For an interaction, ensure that related records of a requester are displayed as intended for
Service Operations Workspace.

Before you begin

Role required: admin
View the order of the My Requests - Requested item predicate EVAM view config.

About this task

The records related to a requester are displayed when an agent views the requester information
in an interaction. For information about agent actions on an interaction, see Work on an
interaction in Service Operations Workspace.

Procedure
1. Navigate to All > Entity View Action Mapper (EVAM) > View Definitions > View
Configurations.
2. From the list of EVAM View Configs, select SOW Related Tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3161


<!-- page 3162 -->
3. Edit the order such that it is less than that of the My Requests - Requested item predicate
EVAM view config.
4. Click Update.
ITSM Configurable Workspace chat session tabs in SOW
Use visual indicators on chat session tabs, such as colors and icons, to alert agents about
unread messages and SLA threshold timers.
The chat session tabs feature helps agents to manage multiple interactions efficiently.
Agents can use visual indicators to reduce the risk of threshold timer breaches, improve chat
prioritization, and optimize response times. This feature enables agents to multitask effectively
while maintaining service level commitments.
The chat session tabs feature introduces a color-coded system for chat session tabs in
Configurable Workspace based on configured Service Level Agreement (SLA) thresholds.
Additional visual indicators alert agents about unread messages, chat status, and unsaved
changes. These visual cues help agents to prioritize their interactions by tracking chat duration
and alerting them when conversations require immediate attention.

Key features
Chat session tabs provide the following key features.
Chat session tab features
Feature

Description

Real-time duration tracking for chat sessions

This feature actively tracks the duration of a
chat and alerts the agent when predefined
SLA thresholds are reached.
• The timer begins when a customer sends
a message to an agent and the tab for that
chat interaction is inactive.
• The inactive tab cycles through different
colors to alert the agent to the unread
message and the approaching SLA
thresholds.
• The timer resets once the agent engages
with the tab.

Tab colors

This feature uses tab colors to indicate the
status of a chat with one or more unread
messages.
• Inactive tabs display a purple background
color to indicate that a message has been
received.
• Tab colors shift to yellow and then to red to
highlight critical wait times.
For more information, see Tab colors.

Unread message counters

Inactive tabs display a counter that shows the
number of unread chat messages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3162


<!-- page 3163 -->
Chat session tab features (continued)
Feature

Description

For more information, see Unread message
counters.
Tab messages

Messages on the chat session tabs appear
after the customer name and notify the agent
of the following chat conditions:
• Chat is in wrap-up
• Chat has ended
Agents see the appropriate message on the
tab depending on the condition of the chat.

Unsaved changes indicator

A gray circle on a chat session tab indicates
that there are unsaved changes on the tab.
The circle disappears once the changes are
saved.

Benefits
The chat session tabs feature provides the following benefits.
• Improved prioritization: Agents can visually track the SLA status of each chat by glancing at the
tab color and use that information to prioritize customer responses.
• Agent multitasking: Tab color changes and real time notifications help agents to handle
multiple interactions simultaneously, minimizing the risk of missing crucial chats.
• Agent productivity: The system helps agents respond more efficiently by highlighting
conversations based on urgency, improving customer engagement and satisfaction.

Tab colors
The chat session tabs feature uses tab background colors to provide information at a glance.
Colors indicate the status of inactive chat session tabs that have one or more unread messages.
• Tabs display a purple background color to indicate that a message has been received.
• Tab colors transition to yellow and then to red to highlight chats that have reached SLA
thresholds.
Administrators can configure threshold levels for chat sessions that set timer values and tab
background colors for the thresholds. Agents see different colors in the chat session tabs based
on the threshold timer value.

Note: Default values are provided for the SLA threshold timers. For more information
about changing these values, see Configure chat session tabs in SOW.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3163


<!-- page 3164 -->
Chat session tab colors
Tab color

Example

Description

White

Indicates the active tab. This is the tab where
the agent is currently working.

Purple

Indicates an inactive tab that has one or more
unread messages from a customer.
The chat duration timer begins when the
first message is received. The tab remains
purple for 0-30 seconds (default value), at
which point the timer reaches the warning SLA
threshold level.
• The inactive tab cycles through different
colors to alert the agent about the unread
message and the approaching SLA
thresholds.
• The timer resets once the agent engages
with the tab.

Yellow

Indicates an inactive tab with unread
messages that has reached the warning SLA
threshold level.
The tab remains yellow for 30-60 seconds
(default value), at which point the timer
reaches the critical SLA threshold level. The
tab also includes a warning icon.
See SLA threshold timers for more information.

Red

Indicates an inactive tab with unread
messages that has reached the critical SLA
threshold level.
The tab remains red until the agent selects it
and restarts the timer. The tab also includes a
critical icon.
See SLA threshold timers for more information.

SLA threshold timers
Administrators can configure warning and critical SLA threshold timers for inactive chat session
tabs. If an agent leaves a customer’s chat unanswered beyond the length of time defined in
these threshold timers, the system changes the tab color.
The chat session tabs feature includes the following default SLA threshold timer settings. For
more information about changing these values, see Configure chat session tabs in SOW.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3164


<!-- page 3165 -->
Chat session tab SLA threshold levels
Threshold timer

Description

Warning of SLA breach

The chat duration timer begins when the first
chat message is received from a customer and
the agent is away from the chat interaction.
After 30 seconds (default value), the chat
session tab turns yellow and displays
a warning icon to alert the agent of an
impending SLA breach. The tab remains
yellow 30–60 seconds.

Critical SLA breach

After 1 minute (default value), the chat session
tab turns red and displays a critical icon to
alert the agent of an impending SLA breach.
The tab remains red until the agent selects it
and restarts the timer.

Unread message counters
Each inactive tab includes a counter that displays the number of unread chat messages. This
counter appears as a red square that displays the number of unread messages.

Note: The unread messages counter is displayed on inactive tabs of any background
color.
When a chat message is received, the counter updates to display the total number of unread
messages. After selecting the tab, an agent can see the unread messages in the chat window.
Selecting an inactive tab clears the tab color and resets the unread messages counter. The
threshold timer and counter restart when the agent navigates away from the tab.

Viewing unread messages
When an agent selects an inactive tab and returns to a chat conversation, they can see
the unread messages in the chat window. This window uses a separator between the older
messages and the unread messages and displays the time when the first unread message was
sent. This separator appears if there’s a time difference greater than 30 seconds between the
first new message and the last seen message.

Maximum number of tabs
An agent can have a maximum of 10 tabs open at one time. If an agent attempts to open
additional tabs, the system displays a message that advises closing one or more tabs before
opening a new tab.

Transferring chats
There are two ways to transfer a chat from one agent to another: manual transfer and automatic
transfer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3165


<!-- page 3166 -->
Chat session tabs for transferred chats
Transfer type

Description

Manual transfer

When an agent manually transfers a chat to another agent and
the new agent accepts the chat:
• The unread messages counter isn’t displayed on the chat
session tab.
• The separator isn’t displayed between new and older
messages. The interaction is treated as new for the receiving
agent.
• The new agent experiences the tab color changes as
configured by the admin when new messages arrive from
the customer.
• The new agent sees the unread messages counter update
when new messages arrive.

Automatic transfer

When a chat is automatically transferred to another agent or to
a queue:
• The unread messages counter isn’t displayed on the chat
session tab. All messages in the chat are in an unread state
for the new agent.
• The separator isn’t displayed between new and older
messages. The interaction is treated as new for the receiving
agent.
• The new agent experiences the tab color changes as
configured by the admin when new messages arrive from
the customer.
• The new agent sees the unread messages counter update
when new messages arrive.

If a chat is transferred to a queue, SLA threshold timers and tab colors are applicable to the next
agent who picks up the case.
When an agent seeks help from a colleague or manager using the Agent Whisper
feature,
the SLA threshold timers and tab behavior are applicable only for the owner agent and not for
anyone else participating in the interaction.

Configuring the chat session tabs feature
Users with the administrator role can enable the chat sessions tab feature and configure SLA
threshold timers for chat sessions from the SOW admin center.
When this feature is enabled, chat session tabs display colors to indicate the chat status. These
colors are determined by SLA threshold timers that alert agents of impending SLA breaches. This
feature includes two SLA threshold timers with default settings:
• Warning of SLA breach
• Critical SLA breach
For more information, see Configure chat session tabs in SOW.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3166


<!-- page 3167 -->
Configure chat session tabs in SOW
Enable the chat session tabs feature and configure values for the chat SLA threshold timers in
the SOW admin center.

Before you begin

Role required: admin

About this task

Enable the ITSM Configurable Workspace chat session tabs in SOW feature and select the
workspace that the feature applies to. You can also select values for two different chat SLA
threshold timers that alert agents about unread messages in inactive chats. These timers alert
agents by changing the tab colors of the inactive chats. For more information to change the tab
colors, see tab colors.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. Select Configure on Interaction Management from the ITSM core configurations section.
3. Turn on the information sessions tabs option by rotating the Information session tabs toggle
counterclockwise.
4. In the Information session tabs section, do the following:
a. Timer for warning of SLA breach: Enter the value in the field for the tab color to turn from
purple to yellow.
Select the length of the timer for the warning of an SLA breach. This timer changes the tab
color to yellow when it reaches the selected duration. The default setting is 30 seconds after
the first new message is received.
b. Timer for critical SLA breach: Enter the value for the timer for the tab color to turn from
yellow to red.
Select the length of the timer for a critical SLA breach. This timer changes the tab color to
red when it reaches the selected duration. The default setting is two minutes after the first
new message is received.
5. Select Save.
ITSM voice interaction record page
The ITSM voice interaction record page provides a component that customers can use for
integration with Contact Center as a Service (CCaaS) providers and an interface that agents can
use to handle customer phone calls.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3167


<!-- page 3168 -->
ITSM voice interaction record page

The ITSM voice interaction record page enables CCaaS providers to display native voice
integrations in CSM Configurable Workspace. Using CCaaS call controls integrated in the page,
agents can do the following:
• Accept calls directly from the agent inbox.
• Manage call transfers and conferences.
• Place calls on hold and on mute.
For more information about the integration with CCaaS providers, see the following topics:
• Interaction Controls Component
• OpenFrame configuration

Page structure
The ITSM voice interaction record page is made up of two different pages:
• ITSM voice interaction record page
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

Note: Live call transcript requires additional configuration.
The CSM voice interaction record page includes the following components:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3168


<!-- page 3169 -->
• Interaction form
• Action bar
• contextual side panel component

Plugin
The CSM voice interaction record page template and page variant are included with the CSM
Configurable Workspace application (com.snc.uib.itsm_agent_workspace).
The CSM voice interaction record page template and page variant are available to users when
the Interaction Controls Component plugin (com.app_interaction_control) is installed.
The Interaction Controls Component plugin has the following dependencies:
• com.app_openframe_store
• com.sn_component_workspace_openframe

ITSM voice interaction record template
The ITSM voice interaction record template enables customers to create voice interaction record
page variants and customize them as needed. This template includes customizable views for
different CCaaS providers as well as real-time updates and notifications.
Record pages and page variants created with this template enable agents to manage phone
calls with customers and external users and to display information that helps agents to resolve
issues. Use this template to customize and extend ITSM functionality around phone interaction
management. Additionally, you can configure a CCaaS provider to integrate features such as call
transcript.

ITSM voice interaction record page variant
The ITSM voice interaction record page variant is included with the ITSM Configurable
Workspace plugin and has a dependency on the Interaction Controls Component plugin. This
page variant is available for users with the interaction controls enabled. For more information,
see OpenFrame configuration.
This page variant includes the following settings.
CSM voice interaction record page variant settings
Setting

Description

Active

Enabling the Active check box makes the page variant
available to the selected audience. The ITSM voice interaction
record page variant is inactive by default.
The active setting combined with the page order determines
the page that SOW uses to display record information. For
more information, see Set record page order .

Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the ITSM voice interaction record page
variant is -2000.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3169


<!-- page 3170 -->
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
• itsm.interactionRecordValid = true: Checks if the
interaction record is available in the database.
• itsm.interactionType = phone: Checks if the Type field on
the interaction record is set to phone.
• itsm.interactiveControlsEnabled = true: Queries the
OpenFrame configuration record and checks the following:
◦ The Enable interaction controls field is enabled.
◦ The user belongs to the group selected in the User Group
field.
If all of these conditions are met, the system displays the CSM
voice interaction record page variant.

Audience

The audience determines who can see the page variant. The
CSM voice interaction record page does not have a defined
audience.
For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select ITSM voice interaction record
page.
4. Select Settings at the top of the page.

ITSM voice interaction record page components
The ITSM voice interaction record page includes the following components.

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

3170


<!-- page 3171 -->
Component

Description

Action bar

The action bar contains the actions available to users while
working on phone interaction records.
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
For more information, see CSM voice interaction record
page .

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

Interaction Controls Component (ICC)
The Interaction Controls Component appears at the top of the left panel of the CSM voice
interaction record page. This component enables CCaaS providers to display native voice
integrations. Agents can then use the component to manage customer calls directly from their
inbox.
The CSM voice interaction record page with the ICC component is displayed when the following
conditions are met:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3171


<!-- page 3172 -->
• The interaction is of type phone.
• The Enable interaction controls field on the OpenFrame Configuration record is enabled.
• The agent belongs to the User Group selected on the OpenFrame Configuration record.
◦ If a user group is selected on the configuration record, only agents belonging to that group
can see the CSM voice interaction record page.
◦ If no group is selected, all agents can see the CSM voice interaction record page.
For more information about the integration with CCaaS providers, see the following topics:
• Interaction Controls Component
• OpenFrame configuration

Customer History component
The Customer History component appears below the Interaction Controls Component in the left
panel. This component is included with the Customer Central
plugin, which is activated as part
of the SOW application.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3172


<!-- page 3173 -->
Live call transcript
The Customer History component can be configured to display a Call Transcript tab, which
shows the live call transcript.
• This tab displays the text of the call transcript when a conversation record is present for the
interaction.
• This tab displays the following text when a conversation record is not present for the
interaction record: Call transcript not available yet.
The Call transcript tab is visible to users if configured in the provider application associated with
the interaction.

Action bar component
The action bar component contains the actions available to users while working on phone
interaction records.

Note: The specific actions available are determined by factors such as the user role and
other attributes.
• Create: Create records related to the interaction.
◦ Create Case: Creates a new Case record in a sub tab and adds the record to the Related
Tasks and Open Cases related lists.
◦ Create Incident: Creates a new Incident record in a sub tab and adds the record to the
Related Tasks related list.
◦ Create Request: Creates a new Request record in a sub tab and adds the record to the
Related Tasks related list.
◦ Create Problem: Creates a new Problem record in a sub tab and adds the record to the
Related Tasks related list.
◦ Create Consumer: Creates a new Consumer record in a sub tab and adds the record to the
Consumers list.
• Save: Saves changes to the interaction record.
• More Actions: Perform additional actions such as starting a discussion and associating a
record.
◦ Discuss: Opens a pop-up window to start a Sidebar discussion.
◦ Associate Record: Opens a new record in a sub tab that the agent can use to link a record to
the current interaction. This new record is displayed in the Related Tasks related list.
The ITSM voice interaction record page supports actions from the following Customer Service
Management and CSM Configurable Workspace plugins:
• Customer Service (com.sn_customerservice)
• CSM/FSM Configurable WS Foundation (com.snc.uib.cwf_workspace)
• CSM Configurable Workspace (com.snc.uib.csm_agent_workspace)
• CSM Workspace (com.snc.agent_workspace.csm
• Major Issue Management (com.sn_majorissue_mgt)
• Customer Service with Service Management (com.sn_cs_sm)
• Customer Service with Request Management (com.sn_cs_sm_request)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3173


<!-- page 3174 -->
• Time Recording for Customer Service (com.snc.csm_time_recording)
• Omni-Experience Standard Feature Set
If you are using any additional plugins, you need to add the actions from those plugins to the
CSM voice interaction record page action bar. For more information, see the configuration steps
in Configure the Front-line case page action bar .

Contextual side panel component
The ITSM voice interaction record page includes the contextual side panel component, which
provides agents with the following functionality.
ITSM voice interaction record page tabs in the contextual side panel
Tab

Description

Recommended Actions

The Recommended Actions tab includes AI search in
Recommended Actions
functionality. Agents can use AI
search to find relevant resources or resolutions for customer
issues.
The search feature displays an initial set of search results
based on the text in the interaction short description. This
initial set of results includes knowledge articles. Agents can
also enter different search keywords and repeat the search.
From the list of search results, agents can select a source to
see search results of that type.
Depending on the source type, agents can do the following:
• Open an article in full view in a sub tab.
• Flag an article.
• Mark an article as helpful.
• Order a catalog item.
For more information, see Use AI search in Recommended
Actions to resolve cases .

Note: Using Recommended Actions in the contextual
side panel requires the Configuring Recommended
Actions
application (sn_cs_nb_action) which is
included with the CSM Configurable Workspace
application.
Related Lists

The Related Lists tab provides access the interaction related
lists.
The ITSM voice interaction record page incorporates related
list functionality into the contextual side panel. These lists
appear in an accordion format that agents can expand and
collapse as needed.
An indicator displays the number of records available in a
related list. When expanded, the records in a related list are
displayed in card format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3174


<!-- page 3175 -->
ITSM voice interaction record page tabs in the contextual side panel (continued)
Tab

Description

The ITSM voice interaction record page includes the following
related lists:
• Related Tasks
• Recent Interactions
• Open Cases
Attachments

The Attachments tab provides access to case-related
attachments. From this tab, agents can view and download
attachments.

Templates

The Templates tab provides access to available form templates
which enable agents to automatically populate fields on new
records. Agents can manually apply a template when creating
a new record such as an incident or change.

OpenFrame configuration
The ITSM voice interaction record page variant is included with the SOW application
(com.snc.uib.itsm_agent_workspace). This page variant is available to users when:
• The Interaction Controls Component plugin (com.app_interaction_control) is installed.
• Interaction controls in the OpenFrame configuration are enabled.
Complete the following steps to enable interaction controls:
1. Navigate to All > OpenFrame > Configurations.
2. Select a configuration record. For example, select CTI.
3. Select the Enable interaction controls check box to enable interaction controls for
OpenFrame.
4. Select a group from the available User Group column and move it to the Selected column. This
is the group of users to whom the OpenFrame configuration applies.
5. Unlock the URL field, and add a third-party URL.
You can get this URL from your contact center provider admin.
6. Select Update.
When the following conditions are met, the agent sees the CSM voice interaction record page
with the Interaction Controls Component and the Customer History tab component.
• The interaction is of type phone.
• The Enable interaction controls field on the OpenFrame Configuration record is enabled.
• The agent belongs to the User Group selected on the OpenFrame Configuration record.
The agent can switch between phone interactions and chat interactions. If an interaction is of
type chat, the agent sees the CSM default record page.
Configuring Notify in Service Operations Workspace
Configure the Notify properties and Microsoft Teams guided setup for initiating a conference call
in Service Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3175


<!-- page 3176 -->
Configure a provider for Notify in Service Operations Workspace
Configure a conference provider to be used as a choice for initiating a conference call.

Before you begin

Role required: notify_admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Notify, and then select Notify Configurations.
3. Select Configure against Configure your provider preferences.
4. Select New.
5. On the form, fill in the fields.
Provider selector fields
Field

Description

Name

Name of the provider you’re adding.

Order

Order in which the provider appears when
multiple providers are configured.

Source table

The table to which this provider must be
added.

Condition

Conditions on the source table based on
which provider selectors are applied.

Active

Indicates whether the provider is active.

Catch-all

Selects this provider if no other Provider
Selector matches.

Manual selection

Disables the automatic selection of this
provider, for example, if in a communication
plan you want to use this provider only as a
forced communication channel.

6. Select Submit.
7. In the Provider Selector Choices section, select New.
8. Search for the conference provider or the Notify group that contains the phone numbers for
initiating a conference.
For sending SMS, search for the Notify group that contains the phone numbers.
9. Select Submit.
Configure Notify properties for SOW
Manage the Notify application properties to configure the meeting capabilities in SOW.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3176


<!-- page 3177 -->
Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Notify, and then select Notify Configurations.
3. Select Configure against Review/Configure Notify properties.
4. On the form, fill the fields.
Notify properties
Field

Description

Enable Notify integration for Task table and
its extensions. Entering phone number in
'glide.notify.task.phone_number' property is
equivalent to setting this to true.

Option to enable Notify integration for Task
table and extensions.
Select the check box.

Notify phone number used for sending SMS
Option to provide the phone number to
and starting conference calls from any record be used for sending SMS and making
that belongs to the task table or table that
conference calls.
extends task table. Number must be entered
in E.164 compliant format.(Deprecated)
If the instance is accessible on public
internet using some other name, which can
happen if the instance is within a private
network and is accessible via a reverse
proxy from outside. In that case the public
name needs to be provided here. e.g. https://
some_public_domain.com

Option to provide the public name for your
instance.

Should confirmation SMSs for opt-in/out
requests be saved into notify_message table
for tracking purpose.

Option to opt-in or out to save the
confirmation SMS message in
notify_message table.

Enable Notify integration for Incident
Communications Management.
Entering phone number in
'com.snc.iam.notify_number' property is
equivalent to setting this to true.
The Notify number to use for sending SMSs and starting conference calls for Incident
Communications Management. Note that for
making conference calls, this number needs
to have a group configured with conference
call workflows.

Option to use Notify Webex Connector for
incident and major incident-related records.
Select the check box.
Option to provide the phone number to
be used for sending SMS and making
conference calls.

Specify a valid Notify Number with voice
Option to provide the phone number to
capability. This will enable On-Call integration be used for sending SMS and making
with Notify which allows On-Call users to
conference calls.
directly call people on rosters from the
browser.
Specify a valid Notify Number with voice
Option to provide the phone number to
capability. This will enable a specific Major
be used for sending SMS and making
Incident Management integration with Notify conference calls.
which allows Workbench users to directly call
people from the browser.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3177


<!-- page 3178 -->
Field

Description

Maximum SMS message length

1600

5. Select Save.
Configure Notify connector for Microsoft Teams from Service Operations Workspace
Configure your ServiceNow instance with Notify connector for Microsoft Teams application from
Service Operations Workspace using the guided setup to enable making calls using Microsoft
Teams.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Notify, and then select Microsoft Teams Guided Setup.
Review the sections Pre-published apps and Self-configured apps to consider for setup in your
environment.
3. Select Configure against Pre-published apps.
Use guided setup to step through the configuration. Guided setup assists you with performing
the configuration in a sequential process. Guided setup organizes configuration activities into
categories and helps you track your progress.
4. Select Start to begin the guided setup for pre-published apps.
Once you have installed the required plugins and store apps, perform the activities outlined
in the Install Azure Apps and Authorize Notify Connector section. After that, move on to
complete the tasks in the Configuration Steps section.
Enable Computer Telephony Integration providers to interact with the Service Operations
Workspace
Enable an agent (with the sn_openframe_user role) to receive inbound calls and place outbound
calls using the Computer Telephony Integration (CTI) interface.

Before you begin

Enable the following plugins.
• com.snc.notify
• com.snc.cti
• com.sn_openframe
For more information about installing and enabling a plugin, see Activate a plugin

.

Role required: admin

About this task

The CTI integration helps an agent call a user using the phone number in the user profile and
contact cards. The ServiceNow application uses the OpenFrame API when an agent initiates a
®
call. The OpenFrame API helps the ServiceNow AI Platform communicate with the connectors,
such as an Amazon connector, already configured in the application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3178


<!-- page 3179 -->
For more information about CTI integration, see Integrating with Computer Telephony Integration
(CTI) .
For more information on the various OpenFrame APIs, see openFrameAPI - Client

.

Procedure
1. From the All > sys_properties.list.
2. Open the sn_sow.default_call_from_contact_page property.
3. In the Value field, specify CTI.
4. Select Update.

Customizing Service Operations Workspace for ITSM to align with
your requirements
You can align with your organization's individual requirements by customizing Service
Operations Workspace.

Important: To prevent customizations from being overwritten by system upgrades, the
upgrade process automatically skips changes to objects that have been customized.

Create a copy of the Service Operations Workspace landing page
Make visual styling changes to the sub pages in the Service Operations Workspace landing
page.

Before you begin

Role required: admin or ui_builder_admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. Under Pages and Variants section, under Home, point to Service desk landing page SNC, and
select

.

4. Select Duplicate variant

.

◦ A copy of the Service Operations Workspace landing page, along with its subpages, is
created under the Variants section.
◦ The copy of the landing page is created in the scope of the current logged-in user.
5. To edit the page or any of its subpages, customize its components.
For information about components, see Work with components .

Customize Service Operations Workspace landing page
Modify the landing page of the Service Operations Workspace to ensure that the customers
can view the page that they use regularly. To customize the data displayed in sub pages of the
landing page that is available in the base system. For any visual styling changes, you need to
create a copy of that landing page and edit it.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3179


<!-- page 3180 -->
Procedure
1. Navigate to All > Now Experience Framework > Experiences.
2. From the UX Applications list, select Service Operations Workspace.
3. For the Admin Panel field, select the

icon.

4. Select Open Record.
5. On the UX App Configuration Service Operations Workspace page, edit the Landing Path field
to modify the landing page.
To redirect the user to the Service Operations Workspace home page, enter the value home.
To redirect the user to the Service Operations Workspace list page, enter the value list.

Customize the incident record page
You can customize the Overview tab and the contextual side panel for an incident.
Customize the Overview tab for an incident
Modify the Overview tab of an incident record page to display the summary and other
information of the incident for an agent.

Before you begin

The demo data should be installed.
Role required: workspace_admin, ui_builder_admin, sn_sow_inc.sn_incident_sow_admin or
admin

About this task

You can customize which fields are displayed on the various sections, such as Summary,
Cause, and Resolution, in the Overview tab. Customize the fields by configuring the SOWIncident-Overview view on the Incident form using the form layout or form design feature in the
ServiceNow AI Platform.

Note: You must only configure the fields on the SOW-Incident-Overview view that are
also available on the Service Operation Workspace view on the Incident form in the
ServiceNow AI Platform.

For advanced customization of the Overview tab with SRP record, use the following procedure.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. In the Pages and Variants section under Record, select SRP Record.

Note: If you're on a version prior to 4.0, you must navigate from Record SNC in UI
Builder to customize the Overview tab of an Incident record page.
4. Under Contents in the Body level, select Main Tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3180


<!-- page 3181 -->
Main Tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3181


<!-- page 3182 -->
If the new copy is in a different application scope, select Edit in original scope before you start
editing.
5. In the Config section under Tabs, point to the Page Collection SOW - Record tabs left tab and
select the Edit content icon (

).

6. Under Overview, point to the Incident Overview SNC variant and select the options icon (

).

7. Select the duplicate variant icon ( ).
The Variant creation page is displayed.
8. Enter the Name as Incident Overview SNC Copy.
An error is displayed for the Conditions field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3182


<!-- page 3183 -->
9. Resolve this error by performing the following steps:
a. Close the Variant creation page.
b. Under Overview, point to the Incident Overview SNC variant, select the options icon (
then select View settings.

),

c. Select Open records, then select Variant record.
The Incident Overview SNC record is displayed.
d. Edit the record, copy, and store the information from the Screen Condition field, then remove
the information.
You use the information from the Screen Condition field in the later steps.
e. Select Save and close the record.
f. Repeat steps 6 through 9.
No error is displayed for the Conditions field.
g. Open the Incident Overview SNC record again.
h. Edit the record and paste the Screen Condition information copied previously.
i. Select Save and close the record.
10. On the Variant creation page, select the Settings tab.
If the new copy is in a different application scope, select Edit in original scope before you start
editing.
11. Edit the Order value to modify the display order of the variants,
The variant with the lowest number is the default configuration.
12. Optional: Add the criteria to display a page or tab in Variant conditions.
13. Select Save.
14. Select the Editor tab to start editing the page components for customizing the Overview tab.
a. Select the Body level of the Content tree next to the main page area of UI Builder.
b. Edit the page by configuring components as required.
For more information on working with pages, see Work with pages

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3183


<!-- page 3184 -->
Customize the Investigation tab for an incident
Modify the Investigation tab of an incident record page.

Before you begin

The demo data should be installed.
Role required: workspace_admin, sn_sow_inc.sn_incident_sow_admin, ui_builder_admin, or
admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. In the Pages and Variants section under Record, select SRP Record.

Note: If you are on a version prior to 4.0, you must navigate from Record SNC in UI
Builder to customize the Investigation tab of an Incident record page.
4. Under Contents in the Body level, select Main Tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3184


<!-- page 3185 -->
Main Tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3185


<!-- page 3186 -->
5. If the new copy is in a different application scope, select the Edit in original scope button
before you start editing.
6. In the Config section under Tabs, point to the Page Collection SOW - Record tabs left tab and
select the Edit content (

) icon.

7. Under Investigation, point to SOW Investigate SNC variant and select the options (

) icon.

8. Select the Duplicate variant icon ( ).
The Variant creation page is displayed.
9. Enter the Name as SOW Investigate SNC copy.
An error is displayed for the Conditions field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3186


<!-- page 3187 -->
10. To resolve this error, perform the following steps:
a. Close the Variant creation page.
b. Under Investigation, point to SOW Investigate SNC variant, select the options icon (
and then select View settings.

),

c. Select Open records and then select Variant record.
SOW Investigate SNC record is displayed.
d. Edit the record, copy and store the information from the Screen Condition field, and then
remove the information.
You use the information from the Screen Condition field in the later steps.
e. Select Save.
f. Repeat the steps from Step 6 to Step 9.
No error is displayed for the Conditions field.
g. Open the SOW Investigate SNC record again.
h. Edit the record and paste the Screen Condition information copied previously.
i. Select Save and close the record.
11. On the Variant creation page, select the Settings tab.
12. If the new copy is in a different application scope, select Edit in original scope before you start
editing.
13. To modify the display order of the variants, edit the Order value.
The variant with the lowest number is the default configuration.
14. Optional: Add the criteria to display a page or tab in Variant conditions.
15. Select Save.
16. Select the Editor tab to start editing the page components for customizing the Investigation
tab.
a. Select the Body level of the Content tree to the left of the main page area of UI Builder.
b. Edit the page by configuring components as required.
For more information on working with pages, see Work with pages

.

Customize the Remedial action playbook for an incident
Customize the Remedial action playbook displayed on the contextual side panel of an incident
record page.

Before you begin

The demo data should be installed.
Role required: workspace_admin, ui_builder_admin, sn_sow_inc.sn_incident_sow_admin or
admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3187


<!-- page 3188 -->
Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. In the Pages and Variants section under Record, select SRP Record.

Note: If you are on a version prior to 4.0, you must navigate from Record SNC in UI
Builder to customize the remedial action playbook.
4. Under Contents in the Body level, select Tab sidebar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3188


<!-- page 3189 -->
Tab sidebar

5. If the new copy is in a different application scope, select the Edit in original scope button
before you start editing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3189


<!-- page 3190 -->
6. In the Config section under Tabs, point to the Page Collection SOW - Sidebar tabs top tab and
select the Edit content (

) icon.

7. Under Playbook, point to Playbook SNC variant and select the options icon (

).

8. Select the Duplicate variant icon ( ).
The Variant creation page is displayed.
9. Enter the Name as Playbook SNC copy.
An error is displayed for the Conditions field.

10. To resolve this error, perform the following steps:
a. Close the Variant creation page.
b. Under Playbook, point to Playbook SNC variant, select the options icon (
select View settings.

), and then

c. Select Open records and then select Variant record.
Playbook SNC record is displayed.
d. Edit the record, copy and store the information from the Screen Condition field, and then
remove the information.
You use the information from the Screen Condition field in the later steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3190


<!-- page 3191 -->
e. Select Save.
f. Repeat the steps from Step 6 to Step 9.
No error is displayed for the Conditions field.
g. Open the Playbook SNC record again.
h. Edit the record and paste the Screen Condition information copied previously.
i. Select Save and close the record.
11. On the Variant creation page, select the Settings tab.
12. If the new copy is in a different application scope, select the Edit in original scope button
before you start editing.
13. To modify the display order of the variants, edit the Order value.
The variant with the lowest number is the default configuration.
14. Optional: Add the criteria to display a page or tab in Variant conditions.
15. Select Save.
16. Select the Editor tab to start editing the page components for customizing the remedial action
playbook .
a. Select the Body level of the Content tree to the left of the main page area of UI Builder.
b. Edit the page by configuring components as required.
For information on working with pages, see Work with pages

.

Customize the incident record information in the contextual side panel
Modify the incident record information displayed on the contextual side panel of an incident
record page.

Before you begin

The demo data should be installed.
Role required: workspace_admin, sn_sow_inc.sn_incident_sow_admin, ui_builder_admin, or
admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. In the Pages and Variants section under Record, select SRP Record.

Note: If you're on a version prior to 4.0, you must navigate from Record SNC in UI
Builder to customize the incident record information.
4. Under Contents, in the Body level, select Tab sidebar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3191


<!-- page 3192 -->
Tab sidebar

If the new copy is in a different application scope, select Edit in original scope before you start
editing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3192


<!-- page 3193 -->
5. In the Config section under Tabs, point to the Page Collection SOW - Sidebar tabs top tab and
select the edit content icon (

).

6. Under Record Information, point to the Record Information SNC variant and select the
options icon (

).

7. Select the duplicate variant icon ( ).
The Variant creation page is displayed.
8. Enter the Name as Record Information SNC copy.
An error is displayed for the Conditions field.

9. To resolve this error, perform the following steps:
a. Close the Variant creation page.
b. Under Record Information, point to the Record Information SNC variant, select the options
icon (

), and then select View settings.

c. Select Open records then select Variant record.
The Record Information SNC record is displayed.
d. Edit the record, copy and store the information in the Screen Condition field, and then
remove the information.
You use the information from the Screen Condition field in the later steps.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3193


<!-- page 3194 -->
e. Select Save.
f. Repeat steps 6 to 9.
No error is displayed for the Conditions field.
g. Open the Record Information SNC record again.
h. Edit the record and paste the Screen Condition information copied previously.
i. Select Save and close the record.
10. On the Variant creation page, select the Settings tab.
If the new copy is in a different application scope, select Edit in original scope before you start
editing.
11. Edit the Order value to modify the display order of the variants.
The variant with the lowest number is considered as the default configuration.
12. Optional: Add the criteria to display a page or tab in Variant conditions.
13. Select Save.
14. Select the Editor tab to start editing the page components for customizing the incident
information in the contextual side panel.
a. Select the Body level of the Content tree next to the main page area of UI Builder.
b. Edit the page by configuring components as required.
For information on working with pages, see Work with pages

.

Customize the display of service level agreements for an incident
Configure the display of service level agreement (SLA) information in the incident record page.

Before you begin

Role required: admin
The following SLA timer configurations display the response and resolution SLA for an incident.
• Incident Response
• Incident Resolution
You should configure SLA timer configuration mappings for these timer configurations. For
information on how you can configure these mappings, see Configure the SLA timer.

Procedure
1. Navigate to System Definition > Script Includes.
2. From the Script Includes list, select SOWIncidentInfo.
3. In the Script field, modify the display information for SLAs.
getSLAConfig: function() {
var config = [{
"configId": "af871ab3532730102d05ddeeff7b124f",
"slaTimerLabel": gs.getMessage("Response SLA"),
"timeLabel": gs.getMessage("Time to respond")
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3194


<!-- page 3195 -->
{
"configId": "aca7d6b3532730102d05ddeeff7b12ec",
"slaTimerLabel": gs.getMessage("Resolution
SLA"),
"timeLabel": gs.getMessage("Time to resolve")
}
];
return config;
},
For information about how the SLA information is displayed for an incident, see View service
level agreement information for an incident.
Enable inline editing for lists in Service Operations Workspace
Enable quick updates for field values in a list in Service Operations Workspace.

Before you begin

Role required: admin

About this task

If the Hardware Asset Management Professional plugin (com.sn_hamp) is installed, you should
enable inline list editing to specify asset actions for a configuration item (CI) from the Affected CI
related list of an incident.

Procedure
1. From the All menu, navigate to sys_properties.list.
2. For the glide.lists.inline_editing_enabled property, set the Value field to
true.
3. Click Update.
Customize the Investigate tab
Customize on how the CI related metrics information is displayed on the Investigate tab of the
Incident record.

Before you begin

Role required: script_include_admin

About this task

Use this task to customize and configure the Investigate tab of the Incident record to do the
following:
• Add, remove or customize the view of the CI metrics information on the Investigate tab. For
example, remove Asset Utilization metrics or add a new metric to the Investigation tab.
• Modify the threshold (warning or critical) values of the metrics.
• Modify the label names of the metrics.
• Change the units in which the metric values are displayed.
• Add or remove rows and columns from the metric information cards.
• Add, remove or rename the remedial action labels.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3195


<!-- page 3196 -->
Procedure
1. Navigate to All > System Definition > Script Includes.
2. From the script Include list, select sn_sow.SOWInvestigateConfigSNC.
3. Copy the required function from the Script field.
4. From the Script Includes list, select sn_sow.SOWInvestigateConfig.
For example, refer the screen shot for sn_sow.SOWInvestigateConfig script include record.

5. In the Script field, paste the required function and edit to customize the UI elements that are
displayed on the different sections of the Investigate tab.
The sn_sow.SOWInvestigateConfigSNC script include record contains
the configuration that is required to render the Investigate tab UI. Use this script
include record as a reference to override the configuration as required, using the
sn_sow.SOWInvestigateConfig script include record.
6. Click Save.
7. From the Script Includes list, select the provider specific script include SNC record.
◦ sn_acc_adapter.AccTransformUtilsSNC for Agent Client Collector for Investigation (ACC).
◦ sn_mecm_adapter.MecmTransformUtilsSNC for Microsoft Endpoint Configuration Manager
for Investigation (MECM).
8. Copy the required function from the Script field.
9. From the Script Includes list, select the provider specific script include record.
◦ sn_acc_adapter.AccTransformUtils for Agent Client Collector for Investigation (ACC).
◦ sn_mecm_adapter.MecmTransformUtils for Microsoft Endpoint Configuration Manager for
Investigation (MECM).
For example, refer the screen shot for sn_acc_adapter.AccTransformUtils script include record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3196


<!-- page 3197 -->
10. In the Script field, paste and edit the script to configure the display of the metrics information
on the customized UI of the Investigate tab.
The sn_acc_adapter.AccTransformUtilsSNC script include record contains the
configuration such as which data to store and how much data must be displayed on the
Investigate tab UI. Use this script include record as a reference to override the configuration as
required, using the sn_acc_adapter.AccTransformUtils script include record.
11. Click Save.

What to do next

On the Investigate tab of the Incident record in the Service Operations Workspace, click the
get latest metrics icon (
) to refresh and view the customizations. For more information, see
Incident Management in Service Operations Workspace.
Configure the collection rules for the Investigate tab
Configure the collection rules and map the rules to the metric definitions in the Investigate
Framework module. This configuration enables you to define when the CI related metrics
information is automatically retrieved on the Investigate tab of the Incident record.

Before you begin

Agent Client Collector for Investigation (sn_acc_adapter) and Investigation Framework
(sn_invest_fwk) must be installed on the instance to view the Investigate Framework module. For
more information, see Install Agent Client Collector for Investigation.
The Agent Client Collector framework (sn_agent) plugin must be installed on the instance, and
Agent Client Collector must be installed to the affected CI. These installations are required to
view the Investigate tab on the Incident record and the CI related metrics information displayed
on the Investigate tab of the Incident record. For more information on the Agent Client Collector
framework plugin and the installation, see Agent Client Collector Framework
and Agent Client
Collector installation .
Role required: sn_cimaf.sn_cimaf_admin or sn_invest_fwk.sn_investigate_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3197


<!-- page 3198 -->
Procedure
1. Navigate to All > Metrics and CI Actions Framework > Administration > Collection Rules.
2. Click New.
3. On the form, fill in the fields.
Trigger conditions are conditions under which the collection rule is activated. These conditions
trigger the automatic retrieval of the CI related metrics information on the Investigate tab of the
Incident record.
Collection Rule form
Field

Description

Name

Name of the collection rule.

Active

Option to activate the collection rule. This
option is selected by default.

Trigger Conditions
Source table

Table where the collection rule is applicable.
For this task, select Incident.

CI field

Type of CI applicable to the source table. For
this task, select Configuration item.

Table conditions

Condition builder to define the criteria for the
fields related to the incidents under which
the collection rule is triggered.

CI class

Class of the affected CI associated with the
incident.

CI conditions

Condition builder to define the criteria for
the fields related to the CI under which the
collection rule is triggered.

Allow matching CI extensions

Option to enable the selection of the child
CI classes associated with the selected
CI class. For example, if the CI class is set
as cmbi_ci_computer, and if the Allow
matching CI extensions option is selected,
then you can select CI classes such as the
cmbi_ci_computer server that is a child CI of
cmbi_ci_computer.

4. Click Submit.
The collection rule is created.
5. Click the collection rule record.
6. On the Collection Rule Metric Associations related list, click New.
Use the Collection Rule Metric Associations related list to associate and map the collection
rule with the metric definition (information).
7. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3198


<!-- page 3199 -->
Collection Rule Metric Associations form
Field

Description

Collection rule

Collection rule that you want to map with the
metric definition.

Metric definition

Metric definition that you want to map with
the collection rule. Metric definition is the
CI related metrics information for which you
want to implement the collection rule.

Note: You can configure multiple collection rules with multiple metric definitions.
8. Click Submit.

Result

The collection rule is created and mapped to the metric definition. When the collection rule is
triggered, the mapped metric definition is retrieved and displayed on the Investigate tab of the
Incident record. The configured collection rule is triggered only when the Configuration Item
field is modified on the Incident record.

Operating IT services in your organization
You can leverage a few Service Operations Workspace integrations to start operating IT
services in your organization and set a path for your organization's performance and process
improvements.

An agent's journey when starting the operation of IT services
• An agent can start the day by looking at an overview of assignments, outages, service
announcements, and assignments in Service Operations Workspace to prioritize work based
on service level agreements (SLAs), priority level, and urgency.
• The agent can look at the incoming interactions and resolve it through existing help resources.
• If more help is required, the agent can create an incident from the interaction based on the
issue reported. Since the agent has access to related incidents and recent interactions, better
and faster support can be provided. Agent also has access to all related information from the
incident record page.
Related topics
Managing IT services in your organization
Optimizing IT services in your organization

Play a guided tour in Service Operations Workspace
Use the guided tours in Service Operations Workspace for ITSM through a sequence of
interactive steps that guide you through a specific concept or process.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3199


<!-- page 3200 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select an application such as Interaction, Incident, Problem.
3. Select a record.
4. Select Help icon, and then select Help articles tab.
The Help articles tab contains the list of help articles available on the page. The Take a tour
option is available below the list of help articles.
5. Select Take a tour.

Add a user-specific quick link on the ITSM landing page
Refer to a URL quickly from the Service Operations Workspace landing page.

Before you begin
Role required: itil

Procedure
1. Navigate to the Service Operations Workspace landing page.
2. Under the Quick links section, select add quick link (

).

3. In the URL field, specify the URL that you want to refer to.
4. In the Display text field, specify the text that you want to display for the URL.
5. Select Add.

Create a list in Service Operations Workspace
Create a list or use an existing list to create a list.

Before you begin
Role required: itil

Procedure
1. From the primary navigation in Service Operations Workspace, select the List menu and select
the My Lists tab.
2. Select Add new list.
3. To create a different version of the existing list, perform the following steps.
a. In the New List dialog box, select the Start from existing tab.
b. Specify the required details.
4. To create your own list, perform the following steps.
a. In the New List dialog box, select the Create your own tab.
b. Specify the required details.
5. Select Create.

Live Agent chat in Service Operations Workspace
Service Operations Workspace enables agents to work on any incident created using Live Agent
chat.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3200


<!-- page 3201 -->
An application admin can integrate the Live Agent into the ServiceNow application by installing
the com.glide.interaction.awa plugin. For more information about installing and enabling a plugin,
see Activate a plugin .
After the plugin installation, an inbox icon
Workspace window.

appears in the sidebar of the Service Operations

By default, the status of the agent is Offline. To start the communication, the agent must modify
the status to Available.
When the customer reports an incident through Live Agent (for example, through the Service
Portal), an incident is created automatically in the Inbox. The agent can then work on the incident
by selecting Accept and chat with the user simultaneously to resolve the issue.

Once the agent accepts the chat, the Inbox is hidden, allowing the agent to focus on resolving
the incident.

For more information about Live Agent chat integration, see Move from Connect Support to
Advanced Work Assignment and Agent Chat .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3201


<!-- page 3202 -->
Interaction Management in Service Operations Workspace
Interactions are a centralized location for all communication channels in Service Operations
Workspace. You can respond to an incoming chat, phone, walk-up, or messaging interactions
faster.

Details tab
This tab displays the detailed information of an interaction. For information about fields in this
section, see Create an interaction in Service Operations Workspace.
From the Compose section, you can add work notes for the interaction.
For information about how you can configure fields in this tab, see Configure a task record form in
Service Operations Workspace.

Related records tab
This tab provides a list view of the records associated with the interaction, for example, tasks
related to this interaction, incidents related to the requester, and tasks related to the requester.
You can add a record, create a record, or remove it from the interaction.

Contextual side panel
From this section, you can view record information, requester information, add attachments, and
create templates for reuse.
For information about Interaction Management, see Interaction Management

.

Create an interaction in Service Operations Workspace
Track an interaction that is a centralized location for all communication channels. Each
interaction represents a request for assistance through a communication channel, for example, a
phone call or a chat.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3202


<!-- page 3203 -->
Before you begin

Role required: itil or admin

Procedure
1. Perform one of the following actions to start creating an interaction.
Option

Description

From the List menu in the primary naviga­
tion

a. From the primary navigation, click the list
icon ( ).
b. Click the add icon (

) next to the List tab.

c. Click New Interaction.
a. Navigate to a list of interactions.

Note: Following lists are available for
interactions:
▪ Assigned to me

From an interaction list

▪ Active
▪ All
b. Click New.
2. On the form, fill the fields in the Details tab.
Create New Interaction form
Field

Description

Number

Auto-generated identification number for the interaction.

Type

Mode through which the interaction started. For example, chat, phone, or
walk-up.

State

State of the interaction.

Opened for

Name of the user starting the interaction.

Assigned to

User to whom the interaction is assigned to.

Short
description

Detailed description of the interaction

Work notes

Work notes related to the interaction.

Note: If the Now Assist plugin isn't activated, you must enter the values for Opened for,
and Short description fields to create an interaction.
3. Click Save.
Work on an interaction in Service Operations Workspace
Work on customer conversations to resolve issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3203


<!-- page 3204 -->
Before you begin

Role required: itil or admin

Procedure
1. Open an interaction.
2. Perform any of the following actions on the interaction record page.
Option

Description

Click Create incident.
Create incident

Note: If you create an incident from an
interaction, it will be auto-assigned to
the user to whom the interaction is as­
signed.
From the Create incident drop-down, select
Create change.

Create change

Note: You can only create a change re­
quest of the pre-approved change type.

Complete

Click Complete to mark the state of the inter­
action as Closed Complete and end the ac­
tive conversation with the user.
From the Complete drop-down, select Aban­
don.

Abandon

Create request

This action marks the state of the interaction
as Closed Abandoned and ends the active
conversation with the user.
From the Create incident drop-down, select
Create request. For more information, see
Create a catalog request in Service Opera­
tions Workspace.
From the Create incident drop-down, select
Create problem.

Note: This option is avail­
Create problem

View record information

able only when the Allow Prob­
lem creation from Interaction
(glide.problem.interaction.allow_create)
problem property is activated from Prob­
lem > Problem Properties.
The related records of a requester are dis­
played as intended for Service Operations
Workspace. You can access the Assigned as­
sets, Recent interactions, and Recent tasks
of the requester.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3204


<!-- page 3205 -->
Option

Description

Note:
If the type is Walk-up, you can view the
walk-up summary of the interaction
record.
You can now view the device health of the
user's assets to provide a resolution to the
user. Select Assigned assets > View device
health. This option is available only if the DEX
plugin[sn_dex] is installed and DEX monitor­
ing is enabled for the asset. For more informa­
tion on Digital End-User Experience, refer Digi­
tal End-User Experience.
Copy the record page URL to easily access
the record

Select the more actions icon (
Copy URL.

) and select

a. From the contextual side panel, click the
agent assist icon (

Attach a record that helps in quick resolu­
tion of the interaction

).

b. Search for a resource and perform the re­
quired action, for example, find a relevant
knowledge base article and attach a link to
it to work notes.

Note: The agent assist icon is avail­
able only for users with the following
roles: itil or interaction_agent.
For information on configuring additional
search resources, see Configure search re­
sources for an interaction in Service Opera­
tions Workspace for ITSM.
From the contextual side panel, click the at­

Add attachments

tachments icon (
). Alternatively, you can
drag and drop the attachment into the Active
Chat window of the interaction.

Note: The added attachments are dis­

played in the activity stream in the Com­
pose section.
From the contextual side panel, click the tem­
Create templates for reuse

plates icon ( ) and create a template or
reuse an existing one.

Collaborate using Microsoft Teams from an interaction record in Service Operations
Workspace
You can initiate a chat or make conference calls using Microsoft Teams to communicate with
stakeholders to resolve the issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3205


<!-- page 3206 -->
Before you begin

Role required: itil or admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Interactions > Open.
4. Select the interaction record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select Start Microsoft Teams chat.
7. In the Start Microsoft Teams chat dialog box, specify the participants.
8. To start a chat conversation, perform the following actions.
a. In the Collaborate panel, click the plus sign (+), and select Start Microsoft Teams chat.
b. In the Start Microsoft Teams chat dialog box, specify the participants.
c. Optional: To specify more chat options, click Show more chat options and specify a client.
(Optional) You can choose Microsoft Teams application or the Microsoft Teams web
application.
d. Click Start Chat.
▪ A chat conversation is initiated in Microsoft Teams.
▪ All automatic chats are automatically imported to the Collaborate panel.
9. To view a chat conversation, click the more options icon (

) on the chat and select View chat.

10. To import a chat conversation, perform one of the following actions.
Option

Description

a. Click the plus sign (+) and select Import Mi­
crosoft Teams chat.
Import a chat from any conversation

b. Under the Choose a conversation to view
details section, select a conversation that
you want to import.
c. Select the chat and click Import.
a. From the conversation that you are a mem­
ber of, click the more options icon (
select View chat.

Import a chat from a conversation in which
you are a member

) and

b. Click the filter chat messages icon ( )
and select the type of messages you want
to view.
c. Select the required messages and click Im­
port.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3206


<!-- page 3207 -->
Associate an interaction with a task record
Associating a record to an interaction leverages data to streamline processes, enhance the
customer experience, and improve resolution time.

Before you begin

Role required: itil or admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Interactions > Open.
4. Select the interaction record.
5. Select More Actions (

) icon, and then select Associate record.

A modal is displayed with the list of records.

6. Select the record that must be associated to the interaction.
You can select multiple records at once.
7. Select Associate.
The selected records are associated with the interaction.
Interaction wrap up with modeless dialog in Service Operations Workspace
Interaction wrap up provides agents with dedicated time after each call or chat to finalize
interaction details. Agents can use this time to wrap up their work before starting a new
conversation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3207


<!-- page 3208 -->
When interaction wrap up is enabled, an interaction record moves from the Work In Progress
state to the Wrap Up state at the end of a customer conversation. This configurable period of time
enables agents to complete tasks such as posting work notes and updating record information
before moving on to assist other customers.
While in the Wrap Up state, an agent’s capacity is not reduced until the state of the interaction
moves to Closed Complete.

Wrap-up modeless dialog
When wrap-up codes are enabled in the Interaction Wrap Up Configuration record, the modeless
dialog is shown during the wrap-up period.

Note: To use the wrap-up modeless dialog, the interaction record must be assigned to the
current user, and the user must have the interaction_admin role.

Wrap up timer

Time left before the modeless dialog closes.
If the timer expires before submitting, wrapup data is saved with the default code and no
notes.
The background color changes as the
seconds count down, depending on the
duration of time remaining (100% to 50% is
green, 50% to 25% is yellow, 25% to 0% is red).

Wrap up code

Select a wrap-up code relating to how the
interaction was resolved.

Notes

Enter additional information about the
interaction.

When the wrap up submission is complete, the data is saved in a segment record and the state
of the interaction changes to Closed Complete.

Wrap-up segment record
Interaction wrap-up data is stored in segment records in the Interaction Wrap Up Segment
[interaction_wrap_up_segment] table. Segments can include multiple wrap-ups per interaction.
For example, when one agent transfers an interaction to another agent, each agent can complete
a wrap-up for the same interaction record.

Interaction wrap up configuration
System administrators can access Interaction wrap up configuration to:
• Create wrap-up codes (in the Interaction Wrap Up Codes table)
• Configure wrap-up timer and wrap-up codes (in the Interaction Wrap Up Configuration record)
◦ Configure the display and duration of the wrap-up timer
◦ Enable wrap-up codes, set a default, and select the codes available to agents in the
modeless dialog
For more information, see the following topics:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3208


<!-- page 3209 -->
• Create an interaction wrap-up configuration
• Create interaction wrap up codes
• Enable interaction wrap up codes

Incident Management in Service Operations Workspace
You can create and manage your incidents in Service Operations Workspace.
https://player.vimeo.com/video/1107393958?
h=1a16a78807&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Tabs of an incident record page in Service Operations Workspace

Overview tab
This tab displays the following information about an incident:
• Summary
• Impact
• Cause
• Resolution
From the Compose section, you can add comments and work notes for the incident.
The Overview tab displays the field information along with the field labels, including when you're
in read mode.
For more information on the fields displayed on the Overview tab, see View and update incident
information on the Overview tab in SOW.
You can customize the display of the information on the Overview tab. For more information, see
Customize the Overview tab for an incident.

Investigation tab
This tab enables you to investigate any affected CIs with the ci_computer or ci_server
class associated with the incidents. The tab displays the metrics information of the associated
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3209


<!-- page 3210 -->
primary CI or any affected CI that is selected, which helps you to analyze and resolve the issue.
You can use the various remedial actions on this tab to resolve the CI-related issues.
By default, the tab displays metrics information of the primary affected CI associated with
the incident. But you can also select and view the information for any affected CI with the
ci_computer or ci_server class that is associated with the incident. For information about
how you can set up Investigation Framework, see Setting up Investigation Framework in Service
Operations Workspace.

Note:
• The tab is visible only if the Agent Client Collector (ACC) or Microsoft Endpoint
Configuration Manager (MECM) adapters are installed and configured.
• The tab displays the metrics information for the CI only in the following conditions:
◦ Agent Client Collector or Microsoft Endpoint Configuration Manager (MECM) is
installed for the associated CI. This helps to retrieve the metrics data for the CI.
◦ The associated CI class is a CMDB CI computer.
• This feature supports only the macOS, Windows, and Linux operating systems.
You can also customize the display of the metrics information on this tab. For more information,
see Customize the Investigate tab.
For more information on the metrics displayed on this tab, see Features of the Investigation tab.

Communicate tab
This tab displays all the communication tasks and options that enable you to communicate with
the stakeholders in the various phases of an incident. This tab is available only if any of the
following conditions are met:
• For a major incident - The Major Incident Management (sn-sow-mim) plugin is active and
configured in Admin Center, for Service Operations Workspace. For more information, see
Setting up Major Incident Management in Service Operations Workspace.
• For Incident – The Task Communications Management and Incident Communications
Management applications are installed, active, and configured in the instance and you select
the New Communication option from the More Actions ( ) icon of the Incident record page.
For more information, see Task Communications Management
and Incident Communications
Management.
For more information on the features of the Communicate tab, see Communicating with
stakeholders about incidents and major incidents in SOW.

Post incident report tab
This tab enables you to generate, configure, publish, and export a post incident report for a
major incident after it's resolved. The post incident report enables you to review the cause
and resolution of the major incident and also identify potential process gaps. Based on this
information, you can take preventive measures to avoid the issue in the future or to handle the
major incident in a better way. This tab is available only if the following conditions are met:
• Major Incident Management is active and configured in Admin Center for Service Operations
Workspace. For more information, see Setting up Major Incident Management in Service
Operations Workspace.
• The major incident is in the Resolved state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3210


<!-- page 3211 -->
For more information on the features of the Post incident report tab, see Review and update a
post incident report.

Details tab
This tab displays detailed information about the incident. For example, the short description,
assignment details, and related records. For more information on how you can configure fields in
this tab, see Configure a task record form in Service Operations Workspace.

Related records tab
This tab provides a list view of the records associated with the incident. For example, task SLAs
and affected CIs.

Contextual side panel
From this section, you can view record information and recommendations, collaborate using
Microsoft Teams, and reach out to experts on-call to resolve incidents quickly.
For more information about Incident Management, see Incident Management.
Create an incident in Service Operations Workspace
Track the investigation, possible solutions, and resolution of a problem for a customer.

Before you begin

Role required: itil or admin

Procedure
1. Perform one of the following actions to start creating an incident.
Option

From the List menu

Description

a. From the primary navigation, click the list
icon ( ).
b. Click the add icon (

) next to the List tab.

c. Click New Incident.
a. Navigate to a list of incidents.

Note: Following lists are available for
incidents:
▪ Assigned to me
From an incident list

▪ Unassigned
▪ Open
▪ Resolved
▪ All
b. Click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3211


<!-- page 3212 -->
Option

Description

a. Open an interaction.
From an interaction

b. From the record page, select Create inci­
dent.

2. On the form, fill the fields in the Details tab.
Create New Incident form
Field

Description

Incident
Short description
Description
Number

Caller

Location
Channel

State

Impact

Urgency

Priority

Brief description of the incident.
Detailed explanation of the incident.
Auto-generated unique number to identify
the incident record.
User who contacted you with an issue. Begin
typing the first name of the caller to select
from a list of matching names, or look up and
select the user.
Location of the caller.
Mode of communication taken by the user to
create the incident.
Different states through which the incident
proceeds during its life cycle.
The effect of an incident, problem, or change
on the business processes.
How long the resolution can be delayed
until an incident, problem, or change has a
significant business impact.
How quickly the service desk should address
the task. Priority is based on impact and
urgency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3212


<!-- page 3213 -->
Field

Description

Impact
Service

Business service that is affected.

Configuration item

Configuration item that is affected.

Service Offering

Consists of one or more service
commitments that uniquely define the level of
service in terms of availability, scope, pricing,
and packaging options. Service offering
enables you to receive different features
and their levels of performance for a given
service.

Business impact

Impact of the incident.

Assignment
Assignment group

Group to work on this incident. If you do not
provide a value, the incident is automatically
assigned based on assignment rules.

Assigned to

The user to work on this incident.

Note: If the Assignment group

changes, the Assigned to field is
cleared.
Notes
Additional comments (Customer visible)

More information about the issue as needed.
All users who can view incidents can also see
additional comments.

Work notes

Information about how to resolve the incident
or steps taken to resolve it, if applicable.

Related Records
Parent Incident

Associated parent incident that makes the
current incident a child incident.

Note: When the parent incident is
resolved, the child incident is also
marked as resolved.
Problem

Any related problem record.

Change Request

Any related change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3213


<!-- page 3214 -->
Field

Description

Caused by Change

Associated change request that prompted
the creation of the incident.

3. Click Save.
View and update incident information on the Overview tab in SOW
View and update the incident information, such as summary, impact, cause, and resolution, from
the Overview tab. This incident information helps you analyze the issue and resolve the incident
quickly.

Before you begin

An incident must be created. For more information, see Create an incident in Service Operations
Workspace.
Role required: itil or service_desk_agent or incident_read

About this task

Review the incident information on the Overview tab. If necessary, you can edit or add
information.

Procedure
1. On an incident record, select the Overview tab.
2. On the Summary section, add or edit the information as needed.
a. Select the Edit summary (

) icon to edit the fields.

b. On the form, fill in the details.
Incident summary
Field

Description

Short description

Brief description of the incident.

Description

Detailed explanation on the incident.

Number

The unique system-generated incident
number. This is a read-only field.

Priority

How quickly the service desk should
address the task. The Priority field is
calculated based on the Impact and
Urgency fields.

Opened

The date and time when the incident was
created. This is a read-only field.

Impact

Level of impact that the incident has on the
business. Possible values:
▪ 1-High
▪ 2-Medium
▪ 3-Low

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3214


<!-- page 3215 -->
Field

Description

Note: When you modify the value in

the Impact and Urgency fields and
save the record, a Record update popup window is displayed where you
must enter the Work notes information
to proceed further.
Urgency

Level of urgency the incident requires to be
resolved. Possible values:
▪ 1-High
▪ 2-Medium
▪ 3-Low

Note: When you modify the value in

the Impact and Urgency fields and
save the record, a Record update popup window is displayed where you
must enter the Work notes information
to proceed further.
State

Different states through which the incident
proceeds during its life cycle. Possible
values:
▪ New
▪ In progress
▪ On Hold
▪ Resolved
▪ Canceled

Note:
▪ When you select the On Hold state
and save the record, a Record
update pop-up window appears
where you must select the On
hold reason field and enter the
Additional comments.
▪ When you select the Resolved
state and save the record, a
Record update pop-up window
appears where you must select the
Resolution code field and enter the
Resolution notes to proceed further.
Major Incident state

State of the Major incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3215


<!-- page 3216 -->
Field

Description

Note: This field is available only
if the Major Incident Management
for Service Operations Workspace
(sn_sow_mim) plugin is installed and
active. For more information, see
Setting up Major Incident Management
in Service Operations Workspace.
Caller

User who reported the incident.

Link

URL that you can click to open on a new tab
for more information on the issue. Overview
page supports "URL" type of field in readonly mode.

Note: This field is not available in the
base system. But you can customize
the form to add a field with a custom
field label and add a URL.

c. Select the Save Summary (

) icon.

3. On the Impact Summary section, edit the information as needed.
a. Select the Edit impact summary (

) icon.

b. On the form, fill in the details.
Impact summary
Field

Description

Configuration item

Primary configuration item that is impacted.

Service

Primary business service that is impacted.

Service offering

Consists of one or more service
commitments that uniquely define the level
of service in terms of availability, scope,
pricing, and packaging options. Service
offering enables you to receive different
features and their levels of performance for
a given service.

Business impact

Impact of the incident on the business.

For the reference fields such as Configuration item, Service offering and Service, you can
perform the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3216


<!-- page 3217 -->
▪ Select the Preview record icon ( ) to display a preview of that record information on
the same page. If necessary, you can also select Open record to open the record on a
separate tab.
▪ Select the Dependency view icon (
new tab within the workspace view.

) to view the unified dependency CMDB map in a

Note: Selecting any empty reference field such as Configuration item, Service

offering and Service in SOW displays only the recent selection values instead of
automatic searching and displaying the results of the field values available in the
system. This change increases the overall performance of the reference fields.
This change is applicable only to reference fields with no field values. By default,
this change is enabled. To revert this change, set the Reference search on click
(ref_search_on_click) UX page property to set to true.
c. Select the Save Impact Summary (

) icon.

4. On the Location field of the Impact section, select View impacted locations to view the
impacted locations and users on a world map in a separate tab.
The Impacted location tab displays the following information:
◦ Number of impacted users – Number of users impacted by the incident.

Note: The number of impacted users is calculated based on the following data
sources:
▪ Caller of the incident.
▪ Callers of the child incidents.
▪ Service offerings associated with the Incident. This source is only used if Service
Portfolio Management Foundation is activated and being used. For more information,
see Activate Service Portfolio Management.
◦ Number of impacted locations – Number of unique locations calculated based on the
number of users.
◦ Impact world map – Map of impacted locations marked on the world map along with the
impacted users. You can view the impacted users counts and details at these locations. You
can further narrow down to the continent, country, state, or city level.

Note:
◦ The Location section is available only if the Major Incident Management for Service
Operations Workspace (sn_sow_mim) plugin is installed and active, and if the incident
is a major incident. For more information, see Major Incident Management in Service
Operations Workspace.
◦ You can add multiple locations from the Affected location related list in the Related
records tab of the Major incident record.
5. Select the following cards to add or update the configuration items associated with the
Incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3217


<!-- page 3218 -->
a. Select the Affected CIs card to add or remove the configuration items (CI) that are affected
by the incident.
b. Select the Impacted Services/CIs card to add or remove the Configurations items or
Services impacted by the incident.
c. Select the Assets card to add or remove the configuration items that users use as assets.
You can search and filter the Configuration Items (CI) based on the configuration class when
you add the affected CIs to an incident record.
When adding a list containing more than 50 child incidents, affected CIs, impacted services/
CIs or assets, the Multiple Record Associator (MRA) component batch processes in async and
helps adding them in background thereby increasing the overall performance of the system.
This feature works only if the number of items to be added is more than 50 as the async
Threshold configuration property is set to 50.

Note: The child incidents are added from the Child incidents related list in the Related
records tab while the affected CIs, impacted services/CIs or assets are added from the
Overview tab of an incident record.
6. On the Cause section, add or update the cause of the incident.
a. Select Add cause.
b. Enter Probable cause of the incident.
c. Select Save cause (

) icon.

7. On the Resolution section, add the resolution information to resolve the incident.

Note: Populate the values in this section only when the incident is ready to be resolved.
a. Select Add resolution.
b. On the form, fill in the details.
Resolution section
Field

Description

Resolution code

Category in which the incident is resolved.

Resolution notes

Details on how the incident is resolved.

c. Select the Save resolution (

) icon.

8. On the Compose section, post messages to the activity stream and send emails to
stakeholders.
a. Enter and post the Work notes (Private) message to the activity stream.

Note:
By default, the Work notes (Private) option is selected for you to enter and post the
message.
b. Enter and post the Additional comments (Customer visible) message to the activity stream.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3218


<!-- page 3219 -->
c. Enter and post the Action taken on the major incident to the activity stream.
d. Compose and then send Email to the stakeholders.
◦ The activity stream supports the following features:
▪ The activity stream in the Overview and Details tab displays the activity information in
tiles that are collapsible. By default, the latest event activity tile, if a work note or additional
comment, is expanded and the other consecutive event activity tiles are collapsed. The
collapsed tile only displays the time stamp and the activity event source name. This
ensures a clean UI and enables you to expand and view the activity information when
required. To enable this feature, set the Enable the expandable activity stream tiles
(enableExpandableActivityStreamTiles) UX page property to true.
▪ An internal tag is added for the work notes.
▪ You can define, customize, and apply tags to the activity streams. These tags help
you search and filter the activity based on the tags. By default, no pre-defined tags
are available in the base system. However, you can use the Activity stream property
(activitystreamprops) UX Page Properties for SOW to define and customize your
tags for incident records. For more information, see Define and customize activity stream
tags.
◦ For reference fields in SOW record pages, the following glide list actions are available:
▪ Add me (
) icon: Add the logged in user to the field. This option is available for reference
fields where you can add current user (sys_user). For example, Watch list or Work note list
fields.
▪ Remove me ( ): icon Remove the logged in user from the field. This option is available
for reference fields where you can remove current user (sys_user). For example, Watch list
or Work note list fields.
▪ Add multiple users (
) icon: Add multiple users to the field. This option is available for
reference fields where you can add multiple users (sys_user). For example, Watch list or
Work note list fields.
▪ Add multiple records (
) icon: Add multiple records to the field. This option is available
for reference fields where you can add multiple records of any table. For example, Problem
or Change request field.
Viewing incident record information using the Contextual side panel
View the incident record information, such as caller details and assets, from the Contextual side
panel. Use this information to help manage an incident more efficiently.
Select the Record information ( ) icon on the Contextual side panel to view the incident
information. The record information side panel includes this following information.

Active calls
The Active calls card displays active conference calls that are currently in progress for major
incidents. This card is displayed only for major incident records and if the Major Incident
Management for Service Operations Workspace (sn_sow_mim) plugin is installed and active. For
more information, see Setting up Major Incident Management in Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3219


<!-- page 3220 -->
A maximum of five collaboration records are displayed on this card. You can select the call record
links displayed on this card to join the calls. You can use the Collaborate side panel tab to view
and manage additional call record information.

Note:
For Twilio calls, plain text is displayed instead of a link. In such case, you can join the call
using the Collaborate side panel tab.
The collaboration information is retrieved from the Collaboration services integration with
Service Operations Workspace.

SLAs and timings
The SLAs and timings card includes the following information:
• Major incident duration – Time duration since the incident has been promoted, created,
or accepted as a major incident. This field is visible only if Major Incident Management for
Service Operations Workspace is installed and active.
• Response SLA – The Task service level agreement (SLA) stage according to the configured
Incident Response SLA timer configuration. Displays the time left to respond to an incident
before the task SLA is breached.
• Resolution SLA – The Task SLA stage according to the configured Incident Resolution
SLA timer configuration. Displays the time left to resolve an incident before the task SLA is
breached.
• View all SLAs – All SLAs associated with the incident record.

Note: This option is visible only if there is at least one SLA associated with the current
incident task.

Caller
The Caller card displays quick information about the caller, such as name, local time,
department, and location. You can also select the Preview caller ( ) icon to preview the caller
record. Select Open record to open the caller record on a separate tab. You can also select
Contact to view all details about the caller.

Note: The caller card is displayed first on the Record information side panel, if you are a
tier 1 agent.
You can view the VIP field decorator if the caller is a VIP user. The VIP field decorator also
appears for the Caller field in the Details tab.
You can select the following links to get additional record information specific to the caller, if
necessary:
• Caller assets – List of the caller's assets (CIs).
• Recent interaction – List of recent interactions with the caller that have been created in the last
seven days. You can view up to ten interaction records on the card. Select View all to view the
list of all interactions on a separate tab.

Note: For interaction records, the Assigned to user is considered as the caller.
• Recent incidents - List of recent incidents associated with the caller that have been created
in the last seven days. You can view up to ten incident records on the card. Select View all to
view the list of all incidents on a separate tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3220


<!-- page 3221 -->
Origin
The origin card displays the information related to the origin record. An origin record is the record
from which the incident record is created such as change request, interaction or problem.
Origin card

The card displays the following information about the origin record:
• State - State of the origin record.
• Number - Number of the origin record.
• Opened by - User who created or opened the origin record
• Type - Channel type of origin record. For example, if the origin is an interaction record, the type
can be Chat
• Short description - Short description of the origin record.
• The following options are available if the incident is created from an interaction record:
◦ View chat transcript - Select View chat transcript to view the chat history with the caller of
the interaction record. You can perform additional activities such as maximize or minimize
the chat window. This option is available only if the interaction record is of Chat type and in
Closed complete or Closed Abandoned state.
◦ View work notes - Select View work notes to view the work notes activity history of the
interaction record.
When an incident is created from an interaction record, the following features are applicable:
• When an incident record created from an interaction record is resolved, the interaction record
is automatically set to Wrap up or Closed complete state. An admin role user must set the
Auto close the origin interaction (sn_sow_inc.autoclose_origin.interaction)
system property to true to enable this feature. The Close interaction from incident business
rule checks the following conditions and updates the interaction record to Wrap up or Closed
complete state:
◦ When the Auto close the origin interaction
(sn_sow_inc.autoclose_origin.interaction) system property is set to true
and the Fallback Timeout for interactions in Wrap Up scheduled script is active, the
interaction record is moved to Wrap up state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3221


<!-- page 3222 -->
◦ When the Auto close the origin interaction
(sn_sow_inc.autoclose_origin.interaction) system property is set to
true and the Fallback Timeout for interactions in Wrap Up scheduled script is inactive,
interaction record is moved to Closed complete state.
• You can add multiple related interaction records to an incident using the Add option on the
Interaction related list in the Related records tab of an Incident record page.

Assigned to
The Assigned to card displays the assignment status of the incident record. Select Assign to to
assign the incident record to you. You can select the View additional collaborators link to view
the list of collaborators associated with the incident record in a modal experience. The list of
collaborators is retrieved from the following data sources:
• Historical Assigned to users for the incident or incident tasks except the current Assigned to
user.
• Users who have added comments and work notes to the major incident record. This data
source is applicable only for major incidents.
• Collaborators from the collaboration channels that are initiated from the Collaborate side
panel. This information is retrieved using the collaboration APIs.
You can view a list of five collaborators on a page at a time.
Work on an incident list page in Service Operations Workspace
Perform various actions on an incident from the incident list page in Service Operations
Workspace (SOW).

Before you begin

Role required: itil, sn_service_desk_agent, sn_sow_inc.sn_incident_sow_admin or admin

Procedure
1. Navigate to All > Service Operations Workspace.
2. Select the List (

) menu.

3. Under Incidents, select any of the following filter categories open the incident list.
◦ Assigned to you - List of incidents that are assigned to you.
◦ Unassigned - List of incidents that aren't assigned to any agent.
◦ Open - List of incidents with status other than Resolved or Closed.
◦ Resolved - List of incident with Resolved status.
◦ All - List of all incidents.
4. Perform any of the following actions on the incident list page.
Option

Description

Assign to me

Select the More actions ( ) icon corre­
sponding to the incident record, and then
select Assign to me to assign the incident
record to yourself.

Reassign

Select the More actions ( ) icon corre­
sponding to the incident record, and then se­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3222


<!-- page 3223 -->
Option

Description

lect Reassign to reassign the incident record
to other agents.

Copy URL

Copy sys_id

Select the More actions icon (
) icon corre­
sponding to the incident record, and then se­
lect Copy URL to copy the URL of the incident
record. You can then share the URL with other
agents.
Select the More actions icon (
) icon corre­
sponding to the incident record, and then se­
lect Copy sys_id to copy the sys_id of the in­
cident record. You can then share the sys_id
with other agents.

Note: This option is available to sn_­
sow_admin role.

Select the Edit (
) icon to update the inci­
dent record from the list page.

Edit form

The incident form opens on the side panel
with the following two tabs:
◦ Details: Includes all the incident record
information such as short description, im­
pact, assignment, cause and resolution.
◦ Activity: Includes all the incident record ac­
tivity information.

New

Select New to create an incident.

Export

Select Export to export the list of incidents in
excel (.csv), pdf or html.

Filter

Select the Filter ( ) icon to filter the incident
list based on specific conditions. You can set
up these conditions to customize your filter.
The animated number on the Filter ( ) icon
shows how many filters are currently applied
to the incident list.

Refresh

Search

Edit column (Personalize list)

Select the Refresh (
list of incidents.

) icon to refresh the

Select the Search (
) icon to search an in­
cident using any incident information as vari­
able.
Select the Edit column (
) icon to config­
ure the view of the columns for the incident.
The column represents the fields of the in­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3223


<!-- page 3224 -->
Option

Description

cident record. You can add or remove the
columns from the incident list.
An animated dot symbol on the Edit column
option indicates whether the columns in the
list are edited or personalized.

Group by

Select the More actions ( ) icon corre­
sponding to the column name, and then se­
lect Group by to group the incident list by the
column name. The column name is the name
of the field in the incident record.

Show matching

Select the More actions ( ) icon corre­
sponding to the incident record row, and then
select Show Matching to show the incident
with matching details.

Filter out

Select the More actions ( ) icon corre­
sponding to the incident record row, and then
select Filter out to filter out or remove the inci­
dent with matching details.

Work on an incident record in Service Operations Workspace
If resolving the incident involves creating a problem, change, service request, and so on, you can
create them directly from the incident record.

Before you begin

Role required: itil, sn_service_desk_agent, sn_sow_inc.sn_incident_sow_admin or admin

Procedure
1. Open an incident.
For information about creating an incident in Service Operations Workspace, see Create an
incident in Service Operations Workspace.
2. Perform any of the following actions on the incident record page.
Option

Description

Create a change request

Select Create change request. See Create a
change request in Service Operations Work­
space.

Create an incident task

From the drop-down next to Create incident
task, select Create incident task.

Create an outage

From the drop-down next to Create outage,
select Create outage.

Create a problem

From the drop-down next to Create problem,
select Create problem. See Create a problem
in Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3224


<!-- page 3225 -->
Option

Description

Create a request

From the drop-down next to Create request,
select Create request. See Create a catalog
request in Service Operations Workspace.

Resolve the incident

Select Resolve and provide the resolution
code and notes.

Assign the incident to you

Select Assign to me.

Book a walk-up appointment

Select the More actions icon ( ) and then
select Book Walk-up Appointment.

Compose an email

Select the More actions icon (
select Compose Email.

Copy the record page URL to easily access
the record

Select the More actions icon ( ) and then
select Copy URL. You can then share the URL
with other agents.

Copy the incident

Select the More actions icon (
select Copy Incident.

Promote the incident to major incident

Select the More actions icon ( ) and then
select Promote to Major Incident.

Propose the incident as major incident

Select the More actions icon ( ) and then
select Propose Major Incident.

) and then

) and then

Select the More actions icon ( ) and then
select Report Knowledge Gap to create a
Knowledge Feedback Task (KFT) record.

Report knowledge gap

Delete the incident

When the record is created, the success mes­
sage containing the link to the KFT record, is
displayed. You can select the link to open the
KFT record on a separate tab within the inci­
dent view. You can also view the KFT record
from the Knowledge Gaps related list on the
Related records tab. You can use the KFT
record to create a knowledge article.
Select the More actions icon (
select Delete.

) and then

From the contextual side panel, select the
View recommendations for the incident

Recommendations icon ( ). See Recom­
mendation Framework in Service Operations
Workspace.
From the contextual side panel, select the

View record information and perform rele­
vant actions

Record Information icon (

).

Select the Contact option to view the caller in­
formation such as name, location (address),
email id and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3225


<!-- page 3226 -->
Option

Description

The following options are available based
on the Assignment group and Assigned to
fields of the incident.
◦ Assign to me: When the Assignment group
field is empty and the logged-in user is a
member of the current assignment group.
If the logged-in user is a member of multi­
ple assignment groups, select the required
assignment group while assigning the inci­
dent.
◦ Assign: When the logged-in user is not a
member of the current assignment group.
◦ Reassign
▪ When only the Assigned to field is popu­
lated with the logged-in user.
▪ When both Assignment group and As­
signed to (as logged-in user) fields are
populated.
If the logged-in user is a member of multi­
ple assignment groups, the following sce­
narios are possible when changing the as­
signment group.
▪ If the user is a member of that assign­
ment group, the Assigned to field retains
the logged-in user.
▪ If the user is not a member of that assign­
ment group, the Assigned to field be­
comes empty.
For more information, see Viewing incident
record information using the Contextual side
panel.
a. From the contextual side panel, select the
Attach a record that helps in quick resolu­
tion of the change

Agent assist icon (

).

b. Search for a resource and perform the re­
quired action, for example, link the change
to an incident.
From the contextual side panel, select the Ex­

Reach out to experts on-call

perts on-call icon ( ). See On-call support
for an incident in Service Operations Work­
space.
From the contextual side panel, select the

View dynamic tracking of an on-call escala­
tion

On-call escalations icon
). See On-call
support for an incident in Service Operations
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3226


<!-- page 3227 -->
Option

Description

From the contextual side panel, select the Col­
Collaborate using Microsoft Teams

laborate icon ( ). See ServiceNow integra­
tions with Microsoft Teams in Service Opera­
tions Workspace.
From the contextual side panel, select the At­
tachments icon (

Add attachments

).

Note: The added attachments are dis­

played in the activity stream in the Com­
pose section.
From the contextual side panel, select the Ac­
tion library ( ) icon to open a sidepanel that
contains all the DEX actions that you can per­
form on the CIs such as clearing the cache.
Action library

Note: You can perform DEX actions on
the affected CIs or caller CIs that are as­
sociated with the incident record. The
caller CIs are the CIs that are assigned
to the caller.
From the contextual side panel, select the

Create templates for reuse

Templates icon ( ) and create a template or
reuse an existing one.
From the contextual side panel, select the

Playbook

Playbook icon ( ) to open the playbook
and execute the remedial actions on a sepa­
rate panel. For more information, see Remedi­
al actions using Playbook.
From the contextual side panel, select the Re­

Response templates

sponse template icon ( ) to open and use
available the response message templates
as reusable messages that you can copy and
paste in the required areas such as email
or chat for a quick response. To use the re­
sponse template feature, the users must have
the sn_templated_snip.template_snippet_­
reader role. For more information on defining
and configuring the response templates for
incident tables in Service Operations Work­
space, see
.

Remedial actions using Playbook
Resolve the CI-related issues using the remedial actions using Playbook in the Investigate tab.
The Investigate tab includes the following types of remedial action to resolve CI-related issues:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3227


<!-- page 3228 -->
• End process
• Restart service
These remedial actions are available on the Investigate tab only if the following conditions are
met:
• The Investigation Framework [sn_invest_fwk] application is installed and configured. For more
information, see Setting up Investigation Framework in Service Operations Workspace and
Configure the Remedial Actions Framework.
• The remedial actions are configured to display on the UI. For more information, see Customize
the Investigate tab.
Remedial actions use playbooks to resolve CI issues. Playbook provides you with an interactive
UI to guide and execute the remedial actions step by step. With a playbook, you can control
every execution step of the remediation process. Playbook is available on the contextual side
panel of the Incident record page. When any remedial action is performed, that remediation
process is added to a playbook. You can then select the playbook (
) icon on the contextual
side panel to open the playbook on a separate panel and execute the process. The playbook
panel displays the following tabs:
• Current: Displays the current list of playbooks that trigger the remedial action, including both
processes and services run on the affected CIs or caller CIs with status New and In Progress.
• History: Displays the historical list of playbooks, remedial actions including both processes
and services run on the affected CIs or caller CIs with status Completed, Canceled, or Failed.
You can perform remedial actions on both the affected CIs and the caller CIs associated with the
incident record. The caller CIs are the CIs that are assigned to the caller.

Note: If the CI is DEX supported, the remedial actions playbook for the DEX actions are
displayed. If the CI is SOW or default view supported, the remedial actions playbook for
SOW actions are displayed.
You can cancel an ongoing End process or Restart service remedial action playbook. To cancel
a remedial action playbook, select the remedial action playbook and select the menu (
)
icon and then select Cancel action option. After the remedial action playbook is canceled, the
corresponding action is also canceled. Then, the status of the remedial action is displayed as
Canceled in the History tab of the playbook panel. To view the reason for cancellation, select the
View reason option on the playbook. This option isn’t available if any of the following are true:
• The remedial action is already in Canceled status.
• The corresponding CI action record of the remedial action is already in progress.
• The change request has already moved to implement state for actions associated to CIs of
type server.
The Remedial actions section on the Investigate tab also contains the Current and History tab to
display the list of remedial actions performed. By default, this section displays the list of remedial
actions for the primary CI or current CI. You can switch the Show actions performed on all CIs
in this incident toggle to display the list of remedial actions for all the CIs associated with the
Incident.
Playbook is available only if both the Remedial Action Framework [com.snc.sn_reacf] application
and the Investigation Framework [sn_invest_fwk] application are installed and configured, as
well as if the remedial actions are triggered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3228


<!-- page 3229 -->
Note: You can't execute concurrent or duplicate remedial actions when a remedial action
is in progress on a process or service for a CI type device or server. You also can't execute
concurrent or duplicate remedial actions on the same CI until the previous remedial action
execution is completed. You can change this behavior and allow concurrent execution
of the remedial action by selecting the Allow concurrent execution option for Remedial
Action Type. For more information, see Configure the Remedial Actions Framework.

End process
The End process remedial action is available with the following metric information cards:
• Top processes By Memory
• Top processes By CPU
Select the CI and then select End process to stop the process running on the CI. The
remediation process then is added to the playbook. Select the Playbook (
) icon from the
contextual side panel to open the playbook on a separate panel and execute the process. You
can execute the End process remedial action for the following CI classes:
• Device: For this CI class, a two-step process is executed where you must get the user approval
before the End process remediation process can be executed. After it’s approved, you can
directly stop the process on the device, which is also known as the endpoint.
• Server: For this CI class, you must create a change request before the End process remedial
action can be executed using a standard change request. You must also provide additional
information to create a change request.

Restart service
The Restart service remedial action is available with the Services metric information card.
Select the CI and then select Restart service to restart the services running on the CI. The
remediation process then is added to the playbook. Select the Playbook (
) icon on the
contextual side panel to open the playbook on a separate panel and execute the process. You
can execute the Restart service remedial action for the following CI classes:
• Device: For this CI class, a two-step process is executed where you must get the user approval
before the Restart service remediation process is executed. After it's approved, you can
directly restart the services on the device, which is also known as the endpoint.
• Server: For this CI class, you must create a change request before you can execute the
remedial action using a standard change request. You must also provide additional information
to create a change request.
Close resolved incident
Close an resolved incident when the user is satisfied with the provided resolution.

Before you begin

Role required: itil_admin, sn_sow_inc.sn_incident_sow_admin or admin

Procedure
1. Navigate to Service Operations Workspace > List > Incident.
2. In the Incident section, select Resolved.
List of incidents with Resolved state is displayed.
3. Open an incident record with Resolved state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3229


<!-- page 3230 -->
For more information on viewing and updating incident information and resolution, see View
and update incident information on the Overview tab in SOW.
4. Select Close.

Result

The incident record is closed and a success message is displayed. You cannot further edit the
field values in the incident form.
Reopen an incident in Service Operations Workspace
Reopen a resolved incident from the incident record in Service Operations Workspace (SOW).

Before you begin

An incident must be created and set to Resolved state. For more information, see Create an
incident in Service Operations Workspace.
Role required: itil or sn_incident_write

About this task

An agent with incident write (sn_incident_write) access can view and use the Reopen option on
the incident record page in SOW to reopen any incident that is assigned to them or other agents.
However, on the Portal UI’s such as Service Portal and Employee Service Center (ESC) portal,
an agent can only view and use the Reopen option to reopen an incident if they are the caller or
Opened by (Requester) end user for that incident.
Both the caller and the Opened by (Requester) users can view and use the Reopen incident
option on the Portal UIs, such as Service Portal and Employee Service Center (ESC) portal to
reopen a resolved incident.
If an incident state is set to Closed, the incident cannot be reopened. However, if you request to
reopen the incident by replying to the resolution notification email, a new incident is opened with
selected field values that are copied from the closed incident. For more information on reopening
an incident, see Reopening an incident.

Procedure
1. Open an incident with Resolved state.
2. Select Reopen.
A dialog-box opens.
3. Enter Additional comments (Customer visible).
4. Select Reopen.

Result

A success notification message pop-up appears on the banner. The incident record state is set
to In progress.
Incident Management in Service Operations Workspace reference
Reference topics provide additional information about Incident Management in Service
Operations Workspace.
Components installed with Agent Client Collector for Investigation
Several types of components are installed with activation of the Agent Client Collector for
Investigation (sn_acc_adapter) application, including user roles and ServiceNow Store
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3230


<!-- page 3231 -->
Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title [name]

Description

Contains roles

Metrics user

Enables users to access
and perform basic
operations in the Metrics
Collector Framework such
as view metric definition.

None

[sn_cimaf.sn_cimaf_read]

Metrics admin
[sn_cimaf.sn_cimaf_admin]

Enables users to install the [sn_cimaf.sn_cimaf_read]
application, add, configure
the tables, and also view
the metric definition.

Investigate Framework Admin

Enables users to install the [sn_cimaf.sn_cimaf_admin]
Investigation Framework
[sn_invest_fwk.sn_investigate_admin] application and manage
the Investigate Framework
modules.

Tables installed
Table

Description

Adapter Configuration

List of configurations for the ACC adapter.

[sn_acc_adapter_config]
Action Configuration

List of action configurations applicable to CI.

[sn_acc_action_config]

Note: Deny unless ACLs are added to all the tables. The Deny unless ACLs restrict access
for a non-authenticated user, such as a public role user. Without access, the user can't
perform any actions on the tables related to the mentioned applications, such as reading,
writing, deleting, creating, or accessing the report view. For more information on DenyUnless ACLs and enhanced security model adoption features, see Deny-Unless ACL
and
Features of enhanced security model adoption for incident tables.

Store applications installed
Store application

Description

Metrics and
CI Actions
Framework

Core framework capabilities and configurations for Agent Client Collector
for Investigation application, including API data and CI actions framework.
For more information on the roles and tables installed, see Components
installed with Metrics and CI Actions Framework

[sn_cimaf]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3231


<!-- page 3232 -->
Store application

Description

Investigation
Framework

Framework to analyze the affected CIs using the metrics information.

[sn_invest_fwk]
Remedial Actions
Framework
[com.snc.sn_reacf]

Framework to remediate or resolve the CI related issues. For more
information on the roles and tables installed, see Components installed
with Remedial Actions Framework.

Components installed with Microsoft Endpoint Configuration Manager for Investigation
Several types of components are installed with activation of the Microsoft Endpoint
Configuration Manager for Investigation (sn_mecm_adapter) application, including user roles
and ServiceNow Store applications.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title [name]

Description

Contains roles

Metrics user

Enables users to access
and perform basic
operations in the Metrics
Collector Framework such
as view metric definition.

None

[sn_cimaf.sn_cimaf_read]

Metrics admin
[sn_cimaf.sn_cimaf_admin]

Enables users to install the [sn_cimaf.sn_cimaf_read]
application, add, configure
the tables, and also view
the metric definition.

Investigate Framework Admin

Enables users to install the [sn_cimaf.sn_cimaf_admin]
Investigation Framework
[sn_invest_fwk.sn_investigate_admin] application and manage
the Investigate Framework
modules.

Tables installed
Table

Description

Adapter Configuration

List of configurations for the MECM adapter.

[sn_mecm_adapter_config]
Action Configuration

List of action configurations applicable to CI.

[sn_mecm_action_config]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3232


<!-- page 3233 -->
Note: Deny unless ACLs are added to all the tables. The Deny unless ACLs restrict access
for a non-authenticated user, such as a public role user. Without access, the user can't
perform any actions on the tables related to the mentioned applications, such as reading,
writing, deleting, creating, or accessing the report view. For more information on DenyUnless ACLs and enhanced security model adoption features, see Deny-Unless ACL
and
Features of enhanced security model adoption for incident tables.

Store applications installed
Store application

Description

Metrics and
CI Actions
Framework

Core framework capabilities and configurations for Microsoft Endpoint
Configuration Manager for Investigation application, including API
data and CI actions framework. For more information on the roles and
tables installed, see Components installed with Metrics and CI Actions
Framework.

[sn_cimaf]
Investigation
Framework

Framework to analyze the affected CIs using the metrics information.

[sn_invest_fwk]
Remedial Actions
Framework
[com.snc.sn_reacf]

Framework to remediate or resolve the CI related issues. For more
information on the roles and tables installed, see Components installed
with Remedial Actions Framework.

Components installed with Remedial Actions Framework
Several types of components are installed with activation of the Remedial Actions Framework
(com.snc.sn_reacf) application, including user roles and tables.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Remedial action user

Enables users to access and read the
cmdb_read
Remedial Action Execution table and
remediate CI related issues using remedial
actions.

[sn_reacf.sn_remedial_action_read]

Contains roles

Note: itil role contains this role.
Remedial action admin
[sn_reacf.sn_remedial_action_admin]
Remedial action execution admin

Enables users with read and write access
to all Remedial Action configuration tables.

Enables users with elevated access to the
remedial actions framework. You can use
[sn_reacf.sn_remedial_action_execution_admin] this role to edit the state of the remedial
action execution records. For example,

• sn_reacf.sn_re
• flow_operator
None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3233


<!-- page 3234 -->
Role title [name]

Description

Contains roles

you can change In progress to Failed or
Complete.

Note: You must add the role on
top of the Remedial action admin
[sn_reacf.sn_remedial_action_admin]
role to utilize the elevated access to
the framework.

Tables installed
Tables

Description

Remedial action

List of remedial actions (definitions) such as End
Process - Device, Restart Service - Server and so
on.

[sn_reacf_remedial_action]
Remedial action parameter
[sn_reacf_remedial_action_parameter]
Remedial action role
[sn_reacf_remedial_role]
User criteria action inclusion
[sn_reacf_remedial_user_criteria_mtom]
User criteria action exclusion
[sn_reacf_remedial_user_criteria_no_mtom]
Remedial action type
[sn_reacf_remedial_action_type]
Remedial action origin
[sn_reacf_remedial_action_origin]
Remedial action execution
[sn_reacf_remedial_action_execution]

List of parameters required to execute the
remedial actions such as process ID, assigned to,
help, and order.
List of roles required to access and execute the
remedial actions.
List of user criteria which are allowed to execute
the Remedial Action.
List of user criteria which aren't allowed to
execute the Remedial Action.
List of remedial action types such as CI action
and standard change.
List of applications where the Remedial Action
Framework is used.
List of execution records that are created for
each remedial action when executed. The record
is used to track the progress and maintain the
information. The record includes information
such as executed remedial action, parameter
values, action execution record, parent record,
target record, current state, user who executed
the remedial action and origin.

Note: This table is read only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3234


<!-- page 3235 -->
Note: Deny unless ACLs are added to all the tables. The Deny unless ACLs restrict access
for a non-authenticated user, such as a public role user. Without access, the user can't
perform any actions on the tables related to the mentioned applications, such as reading,
writing, deleting, creating, or accessing the report view. For more information on DenyUnless ACLs and enhanced security model adoption features, see Deny-Unless ACL
and
Features of enhanced security model adoption for incident tables.
Components installed with Metrics and CI Actions Framework
Several types of components are installed with activation of the Metrics and CI Actions
Framework (sn_cimaf) application, including user roles and ServiceNow Store applications.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Metrics and CI Actions user

Enables users to access and
cmdb_read
read Metric, Action Request and
Action Output tables.

[sn_cimaf.sn_cimaf_read]

Contains roles

Note: itil role contains
this role.
Metrics and CI Actions admin
[sn_cimaf.sn_cimaf_admin]
Metrics and CI Action execution
admin
[sn_cimaf.sn_cimaf_execution_admin]

Enables users with read and
write access to all Metrics and
CI Actions configuration tables.
Enables users with elevated
access to the Metrics and CI
Actions framework.

• sn_cimaf.sn_cimaf_read
• flow_operator
None

Note: You must add the
role on top of the Metrics
and CI Actions admin
[sn_cimaf.sn_cimaf_admin]
role to utilize the elevated
access to the framework.

Tables installed
Tables

Description

Provider

List of providers such as Agent Client
Collector (ACC) or Microsoft Endpoint
Configuration Manager (MECM).

[sn_cimaf_provider]
Metric Definition
[sn_cimaf_metric_definition]

List of metric definitions such as Asset usage,
Running processes and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3235


<!-- page 3236 -->
Tables

Description

Adapter Configuration

List of configurations for the adapter. You
can define the provider such as Agent
Client Collector (ACC) or Microsoft Endpoint
Configuration Manager (MECM), query and
transform flows or scripts.

[sn_cimaf_adapter_config]

Adapter Applicability Rule
[sn_cimaf_adapter_applicability_rule]
Provider Specific Adapter Configuration
[sn_cimaf_provider_specific_adapter_config]
Collection Rule
[sn_cimaf_collection_rule]
Collection Rule Metric Association
[sn_cimaf_collection_rule_metric_asscn]
Metric
[n_cimaf_metric]

List of adapter applicability rules that enables
you to configure on which CIs, the selected
adapter configuration is applicable.
List of adapter configuration for a specific
provider such as Agent Client Collector (ACC)
or Microsoft Endpoint Configuration Manager
(MECM).
List of collection rules that enables you to
configure when the metrics should be autocollected.
List of records that are created for the
association of the collection rules with metric
definitions.
List of metrics fetched. The metric record
contains the information such as metric
definition, CI, timestamp and the actual metric
payload.

Note: This table is read only.
Action
[sn_cimaf_action]
Action Role
[sn_cimaf_action_role]

List of CI actions such as End Process or
Restart service and so on.
List of roles required to access and execute
the CI actions.

Note: One CI action can be mapped to
multiple roles.
User Criteria Action Inclusion
[sn_cimaf_action_user_criteria_mtom]
User Criteria Action Exclusion
[sn_cimaf_action_user_criteria_no_mtom]

List of user criteria which are allowed to
execute the CI Action.
List of user criteria which aren’t allowed to
execute the action.

Note: This table is prioritized over the
Action Role and User Criteria Action
Inclusion configuration tables.
Action Configuration
[sn_cimaf_action_config]

List of action configurations applicable to CI.
You can create multiple configurations for a CI
action based on different providers or CI class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3236


<!-- page 3237 -->
Tables

Description

Action Parameter

List of parameters required to execute the CI
action.

[sn_cimaf_action_parameter]
Action Configuration Step
[sn_cimaf_provider_specific_action_config]
Action Request
[sn_cimaf_action_request]

List of sequential steps to be executed for any
Action Configuration.
List of the CI action execution records.
The record includes information such as
parameters, CI details, and CI action and
current status.

Note: This table is read only.
Action Output
[sn_cimaf_action_output]

List of the CI action output records. Each
record is linked to the record in action request
table. The record includes information such
as action request record, action configuration
step, payload, state, and request ID.

Note: This table is read only.
Note: Deny unless ACLs are added to all the tables. The Deny unless ACLs restrict access
for a non-authenticated user, such as a public role user. Without access, the user can't
perform any actions on the tables related to the mentioned applications, such as reading,
writing, deleting, creating, or accessing the report view. For more information on DenyUnless ACLs and enhanced security model adoption features, see Deny-Unless ACL
and
Features of enhanced security model adoption for incident tables.
Features of the Investigation tab
The Investigation tab displays CI metrics information along with various options. Use the options
and the metrics information to view the data that helps to resolve the CI-related issues.

You can select the following drop-down options to view the metrics information for the CI:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3237


<!-- page 3238 -->
• Initial metrics: Metrics information of the affected CI that is retrieved from 30 minutes
before to 30 minutes after the incident is created. The metrics information of the CI is
displayed only if the CI is populated in that one hour time period. You can configure the
sn_sow.initial_metric_fetch_window property to change the one hour time
period.

Note: Initial Metrics is available only for the primary CI.
• Recent metrics: Latest metrics information that is available for the affected CI. By default, the
Recent Metric option is selected.

Note: The metrics information for the CI is retrieved in any one of the following conditions:
• When the primary CI is updated or added to the incident. You can also configure when
and how the metric information is retrieved for a CI by configuring the collection rule. For
more information, see Configure the collection rules for the Investigate tab.
• When you select the Get latest metrics icon ( ), it refreshes, retrieves, and displays the
latest metrics on demand. This option is available only when you’re viewing data in the
Recent Metrics.
The metrics data includes the following information:
• Overview: Displays overview information of the CI, such as name, operating system, and
model number, from the ServiceNow database records and CMDB CI computer using the glide
record query. The Name field contains a hyperlinked value, which displays the CI record on a
separate tab when selected.
• System information: Select to display the system information for the selected CI on a separate
modal. The system information modal includes the following data:
◦ Microsoft system (msinfo32): Displays information about the computer and a comprehensive
view of the hardware resources, system summary, components, and software environments,
which can be used to diagnose the computer issues. You can also search and view any
specific system parameter, if necessary.
◦ Azure (dsregcmd): Displays information on the state of the CI device that is managed by the
Azure Active Directory (Azure AD). This information is used to diagnose and troubleshoot the
device. The date and time when the information is last retrieved is also displayed. You can
also search and view any device parameter, if necessary.

Note: You can only use this option when the Agent Client Collector for Investigation
(sn_acc_adapter) adapter is integrated with the Investigation Framework.
• Device health: Select the Device health link to launch the Digital End-User Experience
application and device health page for the selected CI on a separate tab, within the incident
view. This tab enables agents to view all the available metrics and the device health for the
selected CI, which were collected by DEX. You can also access this feature using the View
device health option on the CI record in Service Operations Workspace.

Note: DEX requires a separate entitlement.
This link is available to the agent only if the following conditions are met:
◦ The selected CI is of type Device, which is also known as Endpoint.
◦ The DEX plugin is installed on the instance. For more information on DEX, see Digital
End-User Experience.
◦ The DEX agent is installed on the selected CI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3238


<!-- page 3239 -->
• Asset utilization: Utilization of the assets for the CI. The following information is displayed along
with the date and time:
◦ Memory utilization: Amount of the memory used on the CI. The value is displayed in
percentage.
◦ Disk utilization: Disk utilization of the logical drives for the affected CI. The value is displayed
in percentage.
◦ CPU utilization: CPU utilization for the CI. The value is displayed in percentage.
◦ Uptime: Uptime (boot time) of the assets. The days and time since when the assets are up
and running.

Note: The following metrics are color-coded based on the threshold values to highlight
the warning or critical level:
Color coding metrics for Asset utilization metrics
Asset utilization metrics

Warning (Yellow color code)

Critical (Red color code)

Memory utilization

Greater or equal to 80

Greater or equal to 95

Disk utilization

Greater or equal to 80

Greater or equal to 95

CPU utilization

Greater or equal to 80

Greater or equal to 95

However, you can also customize these threshold values, if necessary. For more
information, see Customize the Investigate tab.
• Top processes by CPU: Top processes sorted based on the CPU utilization of the processes in
the affected CI.

Note: The Top processes by CPU metrics are color-coded based on the threshold
values to highlight the critical level when the value is greater or equal to 90. However, you
can also customize these values, if necessary.
• Top processes by memory: Top processes sorted based on the memory consumed by the
processes in the affected CI.

Note: The Top processes by memory metrics are color-coded based on the threshold
values to highlight the critical level when the value is greater or equal to 90. However, you
can also customize these values, if necessary.
• Services: List of services (device or server) running on the affected CI.
• Logged in users: List of the logged-in users in the affected CI.
• Installed applications: List of the applications installed on the CI.

Note: For devices with the Windows OS, the Installed applications don't include a list of
pre-packed application.
Use the View History button to view the historical metrics data for the CI on a separate tab. You
can select the time range from the drop-down options to view the historical data for that time
range. For more information, see Viewing the historical data of CI metrics.
Viewing the historical data of CI metrics
View the historical data of the CI metrics for the selected time range.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3239


<!-- page 3240 -->
Use the View History option on the Investigate tab to view the historical data of the various CI
metrics on a separate tab.

Note:
You can use the features of the history tab only if the following conditions are met:
• The application version must be Tokyo patch 8 or later releases.
• The Data Visualizations Core application must be upgraded to version 23.2.4 if you are on
version Utah or later releases.
You can do the following on the history tab:
• Select the time range to view the historical data of the CI metrics.
• View the graphical representation of the following CI metrics (color-coded) in scatter plots for
the selected time range along with the critical threshold values:
◦ CPU utilization
◦ Disk utilization
◦ Memory utilization
Point your mouse device device over a data point (represents specific date or time) on the
scatter plot to view the values of the metrics along with the date when the metrics data is
retrieved.
• Click a data point (represents specific date or time) on the scatter plot to display the data of all
the CI metrics on the Metrics snapshot section along with the date and time.
Digital End-User Experience and Service Observability UI experience on investigate tab
Based on the Configuration Item (CI) selected in the Investigate tab, the user criteria and rules
defined in the Investigate CI Experience Rules (sn_sow_investigate_ci_ux_rule)
table, the Investigate tab displays the CI metrics in different UI experience dashboard for the
different CI classes.
The following UI experiences dashboard are supported on the Investigate tab:
• Default view: The CI metrics are display in default dashboard view on the tab.
• Digital End-User Experience (DEX) view: The CI metrics are displayed in DEX dashboard view
on the tab.
• Service Observability (SO) view: The CI metrics are displayed in SO dashboard view on the
tab. For more information, see Customize Service Observability dashboard templates .
You can navigate to the Investigate CI Experience Rules
(sn_sow_investigate_ci_ux_rule) table to configure user criteria, CI conditions,
and rule order. You may also choose to match CI extensions, including subclasses. These
configurations determine which UI experience view appears on the investigate tab when a
specific CI class is selected.
You can select the CI from the list of affected CIs or caller CIs associated with the incident
record. The caller CIs are the CIs that are assigned to the caller.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3240


