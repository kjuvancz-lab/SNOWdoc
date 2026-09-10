# Zurich IT Service Management — DevOps Config

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1416–1487 of 3857 | Part 2 of 2

Sections: DevOps Config (p1266); Explore (p1267); Configure (p1276); Integrate (p1315); Use (p1356); Analytics and reporting (p1434); Reference (p1437)

---

<!-- page 1416 -->
Column

Description

◦ Direct: The CDI is defined in the
selected node.
◦ Include: The value of the CDI
is obtained from a node that is
included in the selected node.
◦ Override: The value of the CDI in
an included node is overridden
by a value that is specified in the
including node.
Values appear in the following formats:
◦ <reference level / target
level> when a value appears in
both target and reference.
◦ <reference level> when a
value appears in only the reference
changeset.
◦ <target level> when a
value appears in only the target
changeset.
For example, when a CDI is defined
in the reference changeset with the
value true and the CDI doesn’t
appear in the target changeset, then
the last three columns in the CDIs and
variables tab will have the following
values:
◦ Reference (R): true
◦ Target (T): [Empty]
◦ Source level (R/T): Direct
If a file node is selected in the tree, the File information tab displays its metadata.
File information tab - List columns
Column

Description

Differences

Indicator to show where the differences are.
◦ Target: The file node is available only in the target changeset.
◦ Reference: The file node is available only in the reference
changeset.
◦ Different: The file node data differs in the target and
reference changesets.

File metadata

Metadata of the file attached to the file node.
◦ File name: Name of the attached file in the file node.
◦ Content type: Content type of the file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1416


<!-- page 1417 -->
Column

Description

◦ Content: Content of the attached file. Preview is not available
on the list, but you can download the file to preview it.
◦ File URL: Folder path where the file exists.
Reference (R)

Details of the file present in the reference changeset.

Target (T)

Details of the file present in the target changeset.

Compare two snapshots of a deployable
Use the Config Data Analyzer tool to find changes between two snapshots of a deployable of an
application.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
There must be more than one snapshot available in a deployable to compare and the target
snapshot must not be the first snapshot in the deployable.
Role required: cdm_viewer, cdm_editor, or cdm_admin

About this task

To compare snapshots from different deployables or applications, see Compare snapshots from
the same or different applications.

Procedure
1. While viewing an application, select the Snapshots tab.
2. Open a snapshot of a deployable.
3. In the Snapshot record page, select the Config data changes tab.
The current snapshot is auto-populated in the Target snapshot field.

4. Select another snapshot in the Reference snapshot field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1417


<!-- page 1418 -->
The Reference snapshot field lists all snapshots that are older than the target snapshot. The
Reference snapshot field is inactive when older snapshots are not available. Even if newer
snapshots created after the target snapshots exist in the deployable, they are not listed.
5. Optional: If you've the cdm_secrets role, you can select View encrypted data to view
encrypted values in clear text in the comparison results.

Note: The check box is inactive for users who don’t have the cdm_secrets role. When
the values in the target and reference differ, the comparison results indicate that the
values differ, but the data itself still appears as ********.
6. Select Compare.
The Config data changes section displays the comparison results. It shows the changes
between the selected reference and target snapshots.
The following image displays the Config data changes section that contains the comparison
result that you can use to analyze the data.

A: Navigation panel
The navigation panel displays the node structure of the deployable.
◦ Nodes that include changed CDIs (either directly or in descendent nodes) are
annotated with Edited.
◦ Nodes that include newly added CDIs (either directly or in descendent nodes)
are annotated with Added.
You can search for a node name in the Search field. Select a node to view its
contents in the Changes panel.
B: Changes panel
The panel displays a list of changes to individual CDIs for the node that is
selected in the navigation panel.
◦ By default, the root node is selected and the data panel includes all CDIs for
both snapshots. Select a node in the navigation panel to display data for only
that node and its descendents.
◦ Node paths are displayed in gray. Use the expansion icon (
folder.

) to view CDIs in a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1418


<!-- page 1419 -->
◦ When Changes only is selected, the number of CDIs that have changes
appears after the node path.
◦ When Script view is selected, the list view toggles to editor view.
List columns in the Changes panel
Column

Description

Action

Indicator to show what was the change
type.
◦ Added: A CDI appears only in the
target snapshot.
◦ Deleted: A CDI appears only in the
reference snapshot.
◦ Edited: For the specified CDI, the
values in the target and reference
snapshots differ.

Name

Name of the CDI.

Reference snapshot

Value of the CDI in the reference
snapshot.

Target snapshot

Value of the CDI in the target snapshot.

If a file node is selected in the tree, the comparison result displays the changes in the file
between the selected reference and target snapshots.
List columns for a file node comparison
Column

Description

Action

Indicator to show what was the change type.
◦ Added: The file node is available only in the target snapshot.
◦ Deleted: The file node is available only in the reference
snapshot.
◦ Edited: The file node data differs in the target and reference
changesets.

File metadata

Metadata of the file attached to the file node.
◦ File name: Name of the attached file in the file node.
◦ Content type: Content type of the file.
◦ Content: Content of the attached file. Preview is not available
on the list, but you can download the file to preview it.
◦ File URL: Folder path where the file exists.

Reference snapshot

Details of the file present in the reference changeset.

Target snapshot

Details of the file present in the target changeset.

Export a snapshot
Export a snapshot to generate config data for the pipeline to use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1419


<!-- page 1420 -->
Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
• The cdm_secrets role is required to export snapshots that include encrypted data.
• The cdm_viewer can export any snapshot that does not include encrypted data.
• The cdm_exporter_editor can create, edit, publish, activate, and delete exporters.
Role required: cdm_exporter_editor or cdm_editor or cdm_admin

About this task
• Exporters in the content pack have the Source value of ServiceNow. You can duplicate, but
cannot delete or modify content pack exporters.
• You can execute only active published exporters.
• For export, snapshots cannot exceed 10,000 config data items (CDIs) per deployable or
100,000 CDIs per application.
• Records of exporter executions are deleted after a period of three years. For instructions on
changing the default time period, see Set the purge period for records of exporter executions.

Procedure
1. Select the admin icon (

) to open the Administration page.

2. On the Exporters tab, select the name of the exporter.

Tip: Add commonly used exporters to the My Exporters list for quick access.
The Versions tab for the exporter opens, displaying the list of draft and published versions of
the exporter.
3. Select a published version of the exporter to run.
The exporter opens on the Exporter Builder tab. The text of the exporter script appears in
a view-only panel. Use the Test playground panel to specify the snapshot to export and test
settings before you export the config data.
4. Specify the settings for the exporter execution on the Select inputs page.
Test playground settings
Field

Deployable and published snapshot to
export

Description

Deployable for export and the particular
published snapshot that you have validated
and want to use.
Deployables appear in the list using the
format <AppName/DeployableName>.
When you select a deployable, another
field lists all published snapshots for the
deployable. The most recently published
snapshot appears first in the list. Select the
snapshot to export.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1420


<!-- page 1421 -->
Field

Input arguments

Output format
Additional deployables

Description

The arguments that the exporter script
uses to generate config data as output. The
text box displays the default values for all
arguments. Update values as needed.
Format in which to generate the config data.
Deployables for which to generate config
data in addition to the primary deployable
that you specified in the Deployable and
published snapshot to export field.
Only the latest published snapshots appear
for this optional setting.

5. Select Save to save your changes and then select Evaluate.
The exporter script runs using the settings that you specified and then displays the resulting
config data in the Output box on the Review output page.
6. Review the results.
To make changes, select Select inputs, specify new settings, and then select Evaluate. Repeat
as often as needed.

Note: When you are satisfied that the exporter generates complete config data and
follows the required output format standards, you can publish it and activate it.
Test an exporter and export a snapshot
Set and validate input settings to test an exporter before you export the config data in a
snapshot.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_exporter_editor or cdm_editor or cdm_admin
• The cdm_secrets role is required to export snapshots that include encrypted data.
• The cdm_viewer can export any snapshot that does not include encrypted data.
• The cdm_exporter_editor can create, edit, publish and delete exporters.

About this task

Be sure to install the exporter content pack for DevOps Config. Exporters in the content pack are
good starting points for your custom exporters. Some content pack exporters generate subsets
of config data and others generate data for full applications. For example, to export updated
config data for a database, you might select the returnAllDataforNodeName exporter. In the
input arguments for the exporter, you would specify the database deployable as the node and
then specify the updated settings as input arguments. After you determine that the settings
generate the desired config data, you can export the data to the pipeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1421


<!-- page 1422 -->
• Exporters in the content pack have the Source value of ServiceNow. You can duplicate, but
cannot delete or modify content pack exporters.
• You can run only published exporters.
• For export, snapshots cannot exceed 10,000 config data items (CDIs) per deployable or
100,000 CDIs per application.
• For information on creating a custom exporter, see Create a custom exporter.
• Records of exporter executions are deleted after a period of three years. For instructions on
changing the default time period, see Set the purge period for records of exporter executions.

Procedure
1. Select the admin icon (

) to open the Administration page.

2. On the Exporters tab, select the name of the exporter.

Tip: Add commonly used exporters to the My Exporters list for quick access.
3. Select the exporter version on the Versions tab.
The exporter opens on the Exporter builder tab. The text of the exporter script appears in a
view-only panel. Use the Test playground panel to specify the snapshot to export and test
settings before you export the config data.
4. Specify the settings for the exporter execution on the Select inputs page.
Test playground settings
Field

Deployable and published snapshot to
export

Description

Deployable for export and the particular
published snapshot that you have validated
and want to use.
Deployables appear in the list using the
format <AppName/DeployableName>.
When you select a deployable, another
field lists all published snapshots for the
deployable. The most recently published
snapshot appears first in the list. Select the
snapshot to export.

Input arguments

Output format
Additional deployables

The arguments that the exporter script
uses to generate config data as output. The
text box displays the default values for all
arguments. Update values as needed.
Format in which to generate the config data.
Deployables for which to generate config
data in addition to the primary deployable
that you specified in the Deployable and
published snapshot to export field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1422


<!-- page 1423 -->
Field

Description

Only the latest published snapshots appear
for this optional setting.
5. Select Evaluate.
◦ The exporter script executes using the settings that you specified.
◦ The Test playground panel displays the Review output page.
◦ The config data that the exporter generates appears in the Output box.
◦ The system lists information about the execution on the Executions tab.
6. Review the results.
a. To make changes, select Select inputs, specify new settings, and then select Evaluate.
b. Repeat the previous step as often as needed.

Note: When you are satisfied that the exporter generates complete config data and
follows the required output format standards, you can publish it and activate it.
7. Publish the exporter by selecting Publish on the Exporter builder tab.

Note: You must set an exporter to active to enable it to be executed in a pipeline.
Generate API invocation code for an exporter
Generate sample code of an API invocation for an exporter. The code can invoke the exporter.
Select from several commonly used languages.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_exporter_editor or cdm_editor or cdm_admin

Procedure
1. Prepare an exporter for execution as described in Test an exporter and export a snapshot.

Tip: Test the exporter to verify its operation.
2. In the Evaluate menu, select Generate sample API.
The Exporter API invocation sample dialog box opens.
3. Select the language.
The system applies the settings that you specify and displays the resulting API sample in the
text box.
4. Select Copy to clipboard.
You can now paste the code into an editor for use in your code.
Create a custom exporter
Copy an existing exporter script as a starting point for a custom exporter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1423


<!-- page 1424 -->
Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_exporter_editor or cdm_editor or cdm_admin

About this task

DevOps Config content packs provide a variety of exporters. You can use any of the provided
exporter scripts as a starting point for a custom exporter that you design.

Procedure
1. Select the admin icon (

) to open the Administration page.

2. On the Exporters tab, select New, enter a unique and meaningful name and description, and
then select Confirm.
The first draft version of the exporter is named Draft 0.1 and is listed on the Versions tab.

3. Select the Version name to open default exporter script on the Exporter builder tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1424


<!-- page 1425 -->
The text of the exporter script appears in a view-only panel.
4. On the Exporters tab, select the name of the exporter that will act as the starting point for the
new custom exporter.
5. Select the exporter version to use on the Versions tab for the exporter.
The exporter opens on the Exporter Builder tab. The text of the exporter script appears in a
view-only panel.
6. Copy the text of the script for use in the new exporter.
7. Optional: To enable users to specify dynamic execution conditions or CDI values when editing
the exporter, create an input argument.
a. On the Input arguments tab, click New.
b. On the Create argument pop-up window, define the argument.
Create argument pop-up window
Field

Description

(Optional) Name / Description

Meaningful name and description for the
argument.

Default value

Value that the argument will have when a
user opens the exporter for editing.

Mandatory

Select the check box to require that the
argument value is specified.

c. Select Create.
The argument now appears in the Input arguments field on the Test Playground panel.
View the history of exporter executions
View a list of exporter executions to identify config updates that are successful and to isolate
changes that caused failure in the pipeline.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_viewer or cdm_exporter_editor or cdm_editor or cdm_admin

About this task
Procedure
1. Select the Admin icon (

) to open the Administration page.

2. On the Exporters tab, select the name of the exporter.
3. Select the Executions tab to view the list of executions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1425


<!-- page 1426 -->
Exporter executions list
Column

Description

Number

Unique auto-generated identifier for the
execution.

Version

Version of the exporter.

Type

◦ Test: An execution in the test playground.
◦ Standard: An execution that generates
published config data.

Executed by

User that executed the exporter.

Start time / Duration

Timestamp when the execution started and
the period of time that the exporter ran.

State

Result of the execution.

Application / Deployable / Snapshot

The application, deployable, and snapshot
that the exporter used.

Delete an exporter
Delete an exporter to ensure that users cannot use it to generate config data.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_exporter_editor or cdm_editor or cdm_admin

About this task
• You cannot delete, modify, or activate exporters that are included in the CDM content pack.
Exporters in the content pack have a Source value of ServiceNow.
• If an exporter has performed a standard execution, you cannot delete it. This ensures a
complete and accurate audit trail. You can archive an exporter that has performed a standard
execution. See Archive an exporter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1426


<!-- page 1427 -->
• If an exporter does not have a standard execution, then you can delete all draft versions and
published versions by deleting the exporter.
• You can delete any draft version of an exporter.

Tip: You cannot generate a draft version of a content pack exporter, but you can duplicate
one and edit draft versions of the duplicate. Editing a duplicate of a content pack exporter is
a good way to create a custom exporter. See Create a custom exporter.

Procedure
1. Use either of the following methods to delete all versions of an exporter: While working on an
exporter on the Exporter builder tab or viewing a list of exporters, select the exporter and then
select Delete.
◦ While working on an exporter on the Exporter builder tab, select Delete.
◦ While viewing a list of exporters, select the exporter and then select Delete.
All versions of the exporter are deleted and the exporter is no longer listed on the Versions
tab.
2. To delete only a particular draft version of an exporter, select the version, select Delete draft,
and then confirm the action.
Archive an exporter
Archive an exporter to preserve its record and remove it from the lists that you use in your
everyday work.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_exporter_editor, or cdm_editor, or cdm_admin

About this task
• You can archive only exporters that have standard runs.
• You can copy and test run an archived exporter. You cannot use the API to run an archived
exporter.
• You cannot perform the export operation using an archived exporter.
• You cannot delete, modify, publish, or rename an archived exporter or any of its versions.
• You cannot create new draft of or reuse the name of an archived exporter.
• To restore an exporter for normal use, set its State value to Active and publish a version.

Procedure
While working on an exporter on the Exporter builder tab or while viewing a list of exporters,
select the exporter and then select Archive.
The State value of the exporter is set to Archived.
Set the purge period for records of exporter executions
Change the default deletion period. By default, records of exporter executions are deleted after a
period of three years.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1427


<!-- page 1428 -->
Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: CDM Admin [sn_cdm.cdm_admin]

Procedure
1. Navigate to All > System Maintenance > Table Cleanup.
2. In the Tablename column, select sn_cdm_exporter_execution.
3. Change the Age setting to the retention period in seconds and then save the record.
Minimum: 1 year. For example:
◦ 1 year = 31 536 000
◦ 2 years = 63 072 000
◦ 3 years = 94 608 000

Investigate an alert that involves a change to config data
A high percentage of alerts occur due to errors in config data. If the chain of events that resulted
in an alert includes a change request that involves the same CI as the alert, then you can use a
variety of tools to isolate the config changes that might have caused the alert.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Roles required: Both cdm_viewer and evt_mgmt_user.

About this task

You work in the Config changes tab while investigating the causes of an alert. The tab includes
several tools that enable you to visualize the series of config changes that might have led to the
alert. You can filter, sort, and organize config data to help you identify problematic changes to the
configuration data item key:value pairs (CDIs).

Procedure
1. Use either of the following methods to view an alert:
◦ On the home page (

) of the Service operations workspace, select an alert.

◦ On the list page ( ) of the Service operations workspace, navigate to Alerts and then
select an alert.
The top five most likely causes of the alert are listed in the Cause section on the Overview
tab. If the chain of events that resulted in the alert includes a change request that involves the
same CI as the alert, then that CHG record appears in the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1428


<!-- page 1429 -->
2. On the Changes tab, select a change request.
The change request opens. If the change request involved a change to config data because a
CDM snapshot was deployed, then the Config changes tab appears.
3. On the Config changes tab, work with the information in the Investigate configuration changes
section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1429


<!-- page 1430 -->
Investigate configuration changes section on the Config changes tab
Field

Application

Deployable

Snapshot

Description

The CDM application that is affected by the
alert.
The CDM deployable whose snapshot was
deployed.
The CDM snapshot that was deployed.
To open the snapshot on a new tab in the
Service Operations Workspace, select the
snapshot.

Snapshot deployment timeline
Date range / Start date / End date

The time period that the timeline displays. By
default, the timeline displays the period that
includes the alert, the target snapshot (the
snapshot that is associated with the change
request), and the five most recently deployed
snapshots.
Specify a predefined period in the Date
range box or use the calendar tools to specify
custom start and end times.

Timeline / Show legend

The timeline displays snapshot deployments
and the alert.
Select Show legend to view the icons
that identify snapshots and events on the
timeline.
In addition to the snapshot that immediately
precedes the current (target) snapshot, you
can compare the target snapshot to any
earlier snapshot that appears on the timeline.
To view additional snapshots, change the
date range.
Use the zoom icons (
) to shrink or grow the
portion of the date range that appears on the
timeline. Zoom does not change any of the
other timeline settings. Use the left and right
arrows to view items that have scrolled out of
view.
Select a snapshot to view its name,
associated change record, and deployment
date. Select the link to open the associated
change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1430


<!-- page 1431 -->
Field

Description

Select an alert to view its alert ID and creation
date.

Reference snapshot / Target snapshot

The target snapshot is the snapshot that is
associated with the change request. (The
alert can be associated with multiple change
requests, each of which is associated with
a target snapshot). Most often, the target
snapshot immediately precedes the alert.
By default, the system selects the snapshot
that immediately preceded the target
snapshot as the reference snapshot.
While investigating the cause of the alert,
you can use the Reference snapshot list
to select any snapshot that precedes the
reference snapshot in the selected date
range on the timeline. (Snapshots on the
timeline after the target snapshot do not
appear in the list.) If you select a different
reference snapshot, select Compare to
generate the list of differences between
the two selected snapshots. The difference
information appears in the Configuration
changes section.
For any snapshot on the timeline, follow
these steps to open it in the Service
Operations workspace.
a. Choose the target snapshot or select a
snapshot in the Reference snapshot list.
b. Select Open snapshot.

4. Now work with the information in the Configuration changes section on the Config changes
tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1431


<!-- page 1432 -->
When the Config changes tab opens, the system immediately identifies the differences in the
CDIs between the reference snapshot and the target snapshot. The Configuration changes
section displays the differences.
The letters in the following illustration identify the tools you can use to analyze the data.

A. Navigation panel
The navigation panel displays the node structure of the snapshot. Select a node
to view its contents in the data panel. Nodes that include changed CDIs (either
directly or in descendent nodes) are annotated with added, deleted, or edited, as
appropriate. Use the Search field to search for text in the navigation panel.
B: Data panel
The data panel displays groups of CDIs for the selected node. By default, the
root node is selected in the node tree, and the list includes all CDIs for both
snapshots. Select a node in the navigation panel to display CDIs for only that
node and its descendents. You can switch from this list view of the config data to
a script view, as described in G: Script view.
Expand and close groupings with the expand icon (
). If a selection includes
more than 50 CDIs, then CDIs are organized into groups of 50.
C: Diff only
Select Diff only to view only CDIs that differ between the two snapshots.
D: Filter the types of changes that should appear in the list
The condition builder icon ( ) appears when you point to the Actions column
name in the list view. Select the icon to specify the types of config data changes
that should appear in the list.
"Types of changes" filters
Filter

Meaning

(empty)

[Not used.]

--

No difference in this CDI between the
reference and target snapshots.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1432


<!-- page 1433 -->
Filter

Meaning

Added

The CDI was added to the target
snapshot.

Deleted

The CDI was deleted from the target
snapshot.

Changed

The value of the CDI was changed in
the target snapshot.

E: Filter the list based on CDI names and values
The condition builder icon ( ) appears when you point to the Key label column
in the list view. Select the icon to filter the list of config data changes that should
appear in the list.
The sort indicator icon (
label of the key.

) indicates that CDIs are sorted alphabetically by the

F: Find nodes with a particular kind of change
In the list view, select the find icon (

) and specify the type of change to isolate.

G: Script view
◦ The data initially appears in list form. Select Script view to view the config data
as code.
◦ Differences are indicated by symbols next to the line number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1433


<!-- page 1434 -->
▪ Deletions are indicated by ▪ Additions are indicated by +
▪ Edits are indicated by the pencil icon (
shown in this "Diff only" example.

) plus notes in the in-line text, as

◦ Conversions from text to array: In the example, because the data structure of
the googleApiKey CDI changed from a text value to an array, the text form is
deleted and the array form is added.

Analytics and reporting using the DevOps Config Insights
dashboard
Use the DevOps Config Insights dashboard with Performance Analytics to quickly identify
configuration errors and take action. View snapshot validation trend, open changesets, and
failed snaphots for all applications and deployables.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Error thresholds are configurable and widgets are customizable (you can rearrange or hide
them).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1434


<!-- page 1435 -->
You can filter results on applications, deployables, and by

date.

Report

Open changesets

Description and use case

Open changeset details.
Use case:
As a DevOps engineer or App Engineer, I want
to review my open changesets so that I can
take action on them right away and not let
them get stale.
Accidentally committing changesets later
could add risk to my data model and, by
consequence, the fleet.

Failed snapshots

Non-compliant snapshots for changes
committed.
Use case:
As a DevOps engineer or App Engineer, I
want to review non-compliant snapshots for
changes I committed so that I ensure my
changes are in line with company policies
before pushing the data out to my production
environment.

Policy exception and recommended actions

Recommended actions for policies that have
exceptions.
Use case:
As a DevOps Config and GRC customer, I want
to be able to see the list of active exceptions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1435


<!-- page 1436 -->
Report

Description and use case

and, for ones that are expiring soon, what the
recommended action is.

DevOps Config Insights Open changesets

Review the changeset details and either make changes to the config data and commit the
changeset, or discard the changeset altogether. You generally want this number to be 0 on the
dashboard.

DevOps Config Insights Failed snapshots

Investigate the snapshots and fix misconfigurations, or identify changes that need to be made to
a policy. You generally want this number to be 0 on the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1436


<!-- page 1437 -->
DevOps Config Policy exceptions
Possible actions
Nothing

If the issue is already resolved and the latest
snapshot status passed; or withdraw the
exception if it is no longer needed.

Fix the issue

If the latest snapshot validation status is
passed with exception and there's time to fix
the issue before the exception expires.

Extend the exception

If the latest snapshot validation status is
passed with exception and there isn't enough
time to fix the issue.

DevOps Config reference
DevOps Config reference content.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Update the associations for a deployable
Update the name and description of a deployable as well as its associations with applications
and other items. This procedure is optional.

Before you begin

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Role required: cdm_policy_editor or cdm_editor or cdm_admin

About this task

This optional procedure explains how to update the details of a deployable definition. For
information on configuring the data in a deployable, see Create and update a deployable.

Note: You cannot change the SDLC environment type (development, test, or production)
of a deployable because such a change would have significant impact. For example,
mapped policies and their inputs might differ significantly between test and production
versions of a config dataset.

Procedure
1. On the Settings tab for an application, select Deployables in the tree view.
2. Select the check box for the deployable, select Edit, and then update the settings for the
deployable.
Edit deployable settings
Field

Description

Name

Unique and meaningful name for the
deployable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1437


<!-- page 1438 -->
Field

Description

CDM Deployable Node

Deployable in the dataset.

Node Main
CDM Application

CDM application that includes the
deployable.

Domain
Enforce Compliance

Option to ensure that only snapshots that
pass validation can be exported.
Configuration item in the CMDB.

CMDB CI
Environment

SDLC environment that the deployable
implements.
◦ Development
◦ Test
◦ Production

Description

Text description that helps other users
understand the purpose, scope, and intent of
the deployable.

3. Select Update.
Related topics
Create or update a variable CDI

Types of configuration data supported by DevOps Config
DevOps Config stores configuration data of every layer of the IT stack in a centralized location.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Configuration data includes:
• App and service configuration
• Middleware configuration (databases, message queues, load balancers, for example)
• Kubernetes and Service Mesh configuration
• Cloud resources configuration (AWS, GGP, Azure DevOps, for example)
• Traditional infra configuration (servers, VMs, network, for example)

API keys

passwords

usernames

feature toggles

install paths

load balancing
methods

database connections heap sizes

scaling rules

geo regions

host names

IPs

cluster settings

sizing

sudo user lists

ssh

patching levels

firewalls

URLs

certificates

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1438


<!-- page 1439 -->
versions

build numbers

hot fixes

--

Typically configuration data is stored in files (.json, .yaml, .properties, .ini, .xml, .csv) and is located
in a variety of places, including GIT repos, network folders, third-party tools (JFrog artifactory,
Sonatype Nexus) other databases.
DevOps Config manages and validates your configuration data in a centralized location as the
single source of truth.

CDM data model
The CDM data model is a standardized data structure that supports the broader life cycle of
software delivery — automation, quality validation, and CSDM. CDM imports existing config data,
validates it using policies that you define, and exports valid config data to your organization's
existing DevOps pipeline to implement applications, services, and infrastructure.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

CDM data model overview
The CDM data model does not change the way you think about configuration. Rather, you use the
CDM REST API and user interface to map your existing JSON, YAML, INI, XML, and other config
data into an intuitive data structure that provides the following benefits:
• Implements rigorous and transparent version and change control.
• Enables you to encrypt sensitive data and ensures appropriate access control for the data.
• Enables automated validation of config data.
• Enables you to reuse config data structures by using variables, including values, and
overlaying values.

Structure of the CDM data model
An application in CDM is the full collection of config data for an application service, application
model, or dynamic CI group [infrastructure] in the CMDB. The CDM user creates an application
record that includes the following empty folders in a standard hierarchical structure. After
the system ingests your existing config data, you structure the data into components in the
appropriate folder. You create collections of the components and then combine the collections
into a deployable — a config dataset (for a development, test, or production environment) that
can be deployed by your delivery process. Each component, collection, variable, and deployable
is a node in the structure.

Components
Components are the building blocks that typically represent the config data for a
logical element of an application or a part of an infrastructure service. For example,
a monolithic app, a micro-service, a physical server, or a Docker template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1439


<!-- page 1440 -->
A component can include descendent components, either direct or included. A
component can include variables that can take on different values in collections
and deployables.
You can group components into a library of shared components.

Tip: It is often useful to define a default value for a variable in a component or
collection. This is a powerful strategy because you can create a broad variety
of deployables from a small set of components and collections. Deployables
that inherit a component or collection can use overrides, overlays, and
variable settings to meet the needs of the environment type. For example, the
Development deployable can use the same components and collections as
the Test deployable. Development uses the default database variable
value. Test, in contrast, uses a different value that is appropriate for the test
environment.
Components Vars folder
The components Vars folder can contain variables that any CDI in the Components
folder can use. There is only one components Vars folder.
Collections
A collection is the set of components that together define a release — You can think
of a collection as a release composition.
A collection can include variable or override settings that are specific to the
particular version. For example, the VM config data used in release-1 is different
from the data used in release-2. release-1 might use the value 2Gb for the memory
setting ("memory": "2Gb") and release-2 might specify a different value
("memory": "4Gb"). In addition, a collection might include config settings that
do not appear in its components. Such values are called overlays.
A collection might represent a particular version of an application, localization,
or feature set. For example, a collection named collection-2 might include
the set of components or component versions that represent the Release 2.0
functionality for the application. In contrast, a collection named collection-3
that represents the Release 3.0 functionality might include the same set
of components or component versions, additional components or component
versions, and other variable, override, and overlay settings.
Collections Vars folder
The collection Vars folder can contain variables that any CDI in the Collections
folder can use. Each collection has one collection Vars folder. A collection variable
has higher precedence than a component variable.
Deployables
You add and configure deployables in the data structure. A deployable is a config
dataset (for a DEV, TEST, or PROD environment) that can be deployed by your
delivery process. Each deployable in an application represents the configuration of
a service in the CMDB.
A deployable is made up of the collection or set of collections that define the
release for a particular environment. The combination of collections+environment
link to an application service in the CMDB or to an infrastructure service.
A deployable can include variable or override settings that are specific to
the environment. For example, the database variable has one value in the
development environment and a different value in the production environment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1440


<!-- page 1441 -->
An override value in the production deployable might specify a required container
parameter that is not needed in the development environment.
An example deployable named DEV-2 would include the collection-2
collection and would specify variable, override, and overlay settings that are
specific to the development environment for release 2.0. In contrast, the deployable
named PROD-2 would also include the collection-2 collection but, instead,
would specify settings that are specific to the production environment for release
2.0.
When you are happy with a changeset, you can save and commit the changes. The
system checks for conflicts with the committed changesets of other users. If there
are no conflicts, the system persists the changes and then generates a snapshot of
every deployable that is affected by the changes. A snapshot represents a potential
exportable config data set. The system validates config data by executing policies
against each snapshot and returning the validation results.
Deployable Vars folder
The deployable Vars folder can contain variables that any CDI in the Deployables
folder can use. Each deployable has one deployable Vars folder. A deployable
variable has higher precedence than a collection variable.

Example
In the following diagram of the example BookStore application, the numbers identify the
relationships among components, collections, and deployables.
1. Components are grouped to form collections that represent environments or versions of
environments. The FS2 (feature set 2) collection has config data for Core version 2 of the
application that is currently being developed and tested. FS1, in contrast, holds the earlier
Core version 1 that has been thoroughly tested and is currently running the application in the
production environment.
2. In the example, both FS2 (the collection that is used in test environments) and FS1 (the
collection that is used in the production environment) use config data for both S3 and a
particular VM template. Both the FS1 and FS2 collections, therefore, inherit these two
components. Because the collections represent different feature sets, it is probably the
case that FS1 and FS2 use variables or overrides to specify a few different settings for the
components.
3. Each deployable includes the collection that is appropriate for its environment (development,
test, or production). In the example, the TEST deployable uses the FS2 collection, the newer
version of the feature set and other config settings that is used in test environments. The
PROD deployable, in contrast, uses FS1 in the production environment. FS1 is the earlier
version of the collection of config data that had been validated for production.
In each deployable, variables are set to values that are appropriate for the environment. For
example, in PROD, the database variable is set to prod1 (the production database). The
TEST deployable, however, specifies one of the databases that is used by the testing team,
test3.
This diagram is simplified. In your implementation, deployables can include multiple collections,
variable and override settings, and overlay settings (settings that do not appear in the
components and collections that make up the deployable). In addition, you might have several
deployables for each environment type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1441


<!-- page 1442 -->
Definitions
CDI
A config data item (CDI) is simple a key-value node.
Variable
A variable is a key-value item that can be referenced within a CDI.
Parent nodes and child (leaf) nodes
• CDIs and variables are key-value items. CDIs and variables can only be child
nodes.
• Components, collections, deployables, and folders nodes can be parent nodes—
nodes that can have key-value items or other parent nodes.

Note:
Starting with Configuration Data Management version 4.2, you can define a
node using any UTF-8 character, including the forward slash (/).
Name path
The name path is the complete folder path of the selected node in the list. In REST
API, you can provide name path in array in the following formats:
• Backslash format: For example - testApp/deployables/Development1/cdi1

Note: If your node name contains a backslash ("/"), you can't use this
format.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1442


<!-- page 1443 -->
• Backend name path with replacement characters: For example testApp deployables Development1 cdi1
• Array: For example - ['testApp','deployables','Development1','cdi1']
Components
Components are the building blocks that typically represent the config data for a
logical element of an application or a part of an infrastructure service. For example,
a monolithic app, a micro-service, a physical server, or a Docker template.
A component can contain variables that can take on different values in collections
and deployables. More detailed instructions appear in Define or update a
component.
Collections
A collection is the set of components that together define a release — You can think
of a collection as a release composition.
A collection can contain variable or override settings that are specific to the
particular version. For example, the VM config data used in release-1 is different
from the data used in release-2. release-1 might use the value 2Gb for the memory
setting ("memory": "2Gb") and release-2 might specify a different value
("memory": "4Gb"). In addition, a collection might include config settings that
do not appear in its components. You might think of such values as "overlays".
Deployables
A deployable is a config dataset (for a development, test, or production
environment) that can be deployed into your CI/CD pipeline as a service. Each
deployable in an application configures a service in the CMDB. For example, you
might create three deployables, one for each environment type: Development, Test,
and Production.
A deployable is made up of the collection or set of collections that define the
release for a particular environment. The combination of collections+environment
link to an application service in the CMDB or an infrastructure service.
A deployable can contain variable or override settings that are specific to
the environment. For example, the database variable has one value in the
development environment and a different value in the production environment.
An override value in the production deployable might specify a required container
parameter that is not needed in the development environment.
Changesets and Snapshots
When you commit changes to a CDM application, the system persists the changes
as a changeset of the application. The system then also generates a snapshot of
every deployable that is affected by the changes. A snapshot represents a potential
exportable config data set. The system validates config data by executing policies
against each snapshot and returning the validation results. Snapshots that pass
validation and that are published can be exported to the release pipeline as config
data.
Shared components and Component libraries
Shared components in Configuration Data Management enables you to use a
component across several applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1443


<!-- page 1444 -->
For better organization, these shared components are managed in Component
libraries. These component libraries improve consistency and maintainability by
ensuring a single source of truth for a component's config data across applications.
File nodes
A file node is created when you attach a file to the config data model of a CDM app
or a component library. It contains a link to the attached file. Using file nodes, you
can attach files of any MIME type supported on ServiceNow AI Platform.
Related topics
Preparing an application for config data upload
Create and update a deployable
Contextual variables for config data
Contextual variables are out-of-the-box variables delivered by ServiceNow that enable you to use
the context of a node to define a variable.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
For example: CollectionA has defined these variables:
• "environment": "( DEPLOYABLE.ENVIRONMENT_TYPE )"
• "deployable": "( DEPLOYABLE.NAME )"
When you add the collection to a deployable, these variables are set to the values defined in the
context, which would be the environment type and name of the deployable for CollectionA.
The available out-of-the-box contextual variables are:
Contextual Variables
Variable

Description

NAME

Name of the node.

APPLICATION.NAME

Name of the application.

DEPLOYABLE.NAME

Name of the deployable.

DEPLOYABLE.ENVIRONMENT_TYPE

Environment type of the deployable.

COLLECTION.NAME

Name of the collection.

FULL_PATH

The full file path of the collection.

RELATIVE_PATH

The file path of the collection, relative to the
deployable.

RELATIVE_PARENT_PATH

The file path of the parent to the node.

APIs and DevOps Config
You can use DevOps Config and CDM APIs to access your config data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1444


<!-- page 1445 -->
DevOps Config
DevOps Config API
Manage your application lifecycle, using delete, get, patch, and post operations.

CDM
CdmApplicationsApi
Upload configuration data to the component, collection, deployable, and
component variable folders found in the DevOps Config Workspace UI. Export
deployable configuration data to your DevOps pipeline and manage shared
components and shared applications.
CdmChangesetsApi
Manage your changesets, including:
• Create new changesets.
• Deploy changesets.
• Retrieve lists of or individual changesets.
• Retrieve node changes within a changeset.
• Retrieve a list of applications or deployables impacted by a changeset.
• Delete changesets.
• Return a list of shared components associated with a specified changeset.
CdmEditorApi
Create nodes, update nodes, include existing nodes under other nodes, delete
nodes, and retrieve nodes and node includes.
CdmPoliciesApi
Manage policy mappings of deployables in CDM. Policies that are properly mapped
to a deployable are executed when a snapshot of the deployable is validated.
CdmSharedLibraryApi
Create and manage shared libraries and shared components. Upload and export
the configuration data of a shared component.
CdmSnapshotApi
Publish, unpublish, and revalidate snapshots in CDM.
CdmVersionApi
Publish, unpublish, and export versions (snapshots) in CDM for shared components
under shared libraries.

DevOps Config roles
DevOps Config uses these roles.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1445


<!-- page 1446 -->
Role title [name]

Description

[sn_devops.app_admin]

DevOps Config app admin

Contains Roles

None

Can create/read/update/delete
DevOps Config apps.
[sn_devops_config.viewer]

DevOps Config viewer

sn_cdm.cdm_viewer

Has read-only access in DevOps
Config.
[sn_devops_config.editor]

DevOps Config editor
Can manage config data, create/
commit changesets, and publish/
unpublish snapshots.

[sn_devops_config.secrets] DevOps Config secrets

• sn_devops_config.viewer
• sn_cdm.cdm_editor

sn_cdm.cdm_secrets

Able to manage encrypted config
data within an application.
[sn_devops_config.admin]

DevOps Config admin
Has editor role permissions plus
ability to manage policies and
exporters, and applications.

• sn_devops.app_admin
• sn_devops_config.editor
• sn_cdm.cdm_admin

Roles in CDM
List of roles and permissions in CDM.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1446


<!-- page 1447 -->
CDM roles

Role title [name]

Permissions

Contains roles

CDM Viewer
[sn_cdm.cdm_viewer]

• Read config data from
any application that they
have access to (governed
through user groups that are
set by the Maintained by
property).

• [sn_pace.policy_reader]
• [itil]
• [canvas_user]

• View the list and content of
component libraries as well
as the shared components
contained within them.
• View the list and content of
changesets.
• View the list and content of
snapshots and validation
results.
• Export snapshots.
• View exporters.
• View policies and policy
mappings.
• View the Investigate page
for a change request (CHG)
on the Service Operations
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1447


<!-- page 1448 -->
Role title [name]

Permissions

Contains roles

Note: If the Maintained
by group is set at the
application level to view
config data, then this
user must be a member
of the group.
Event Management user
[evt_mgmt_user]

• View the contents of the
snapshots.

itil

• View the Investigate page
for a change request (CHG)
on the Service Operations
Workspace.
• View snapshots, nodes,
and changesets, regardless
of whether this user is a
member of Maintained by
groups set at the application
level.

CDM Editor
[sn_cdm.cdm_editor]

• Create/update/delete
config data within
components and
collections, including
variables, overrides, and
includes.

cdm_viewer

• Create and commit
changesets.
• Validate snapshots.
• Publish and unpublish
snapshots.
• Create, update, and delete
config data withing CDM
applications.
• Add and manage
component libraries.
• Add and delete shared
components in a
component library.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1448


<!-- page 1449 -->
Role title [name]

Permissions

Contains roles

Note: The cdm_editor
role doesn’t grant
permission to create/
update/delete an
application and its
deployables, or to
change the Enforce
validation setting on
deployables.
If the Maintained by
group is set at the
application level to view
config data, then this
user must be a member
of the group.
Create/update/delete
CDM Exporter Editor
exporters.
[sn_cdm.cdm_exporter_editor]
CDM Policy Editor
[sn_cdm.cdm_policy_editor]

• Create/update/delete
policies.

cdm_viewer

• cdm_viewer
• [sn_pace.admin]

• Map policies to
deployables.

CDM Secrets
[sn_cdm.cdm_secrets]

• Read and export encrypted
data (when granted to a
user with the cdm_viewer
role).

None

• Permanently encrypt /
decrypt data (when
granted to a user with the
cdm_editor role).
• Edit encrypted data (when
granted to a user with the
cdm_editor role).

Note: The cdm_secrets
role is effective only
with the cdm_viewer,
cdm_editor, or
cdm_admin role.

Application Service Admin
[sn_cdm.app_service_admin]

Enables the CDM Admin to
create an application service.

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1449


<!-- page 1450 -->
Role title [name]

Permissions

Contains roles

CDM Admin
[sn_cdm.cdm_admin]

• Create/update/delete
applications.

• cdm_editor

• Create/update/delete
deployables.
• Create/update/delete
config data.
• Change settings on
deployables to enforce
snapshot validation.

• cdm_exporter_editor
• cdm_policy_editor
• app_service_admin
• Model_manager (for create/
update/delete of application
model)
• [itil] (for create/
update/delete of SDLC
components)
• [itil admin]

CDM All App Access
[sn_cdm.cdm_all_app_access]

Note: The

None

cdm_all_app_access role
is effective only with the
cdm_admin, cdm_editor,
or cdm_viewer roles.
• Users with the
cdm_all_app_access and
cdm_admin role can update
or delete an application
or shared component
library regardless of
whether they’re a member
of the user groups that
maintain the application
(Maintained by field) or
library (Authoring groups
field).
• Users with the
cdm_all_app_access
and cdm_editor role can
edit an application or
shared component library
regardless of being a
member of any of the user
groups that maintain the
application or library.
• Users with the
cdm_all_app_access and
cdm_viewer role can view
an application regardless
of being a member of any
of the user groups that
maintain the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1450


<!-- page 1451 -->
How encrypted data is handled
By default, encrypted values appear in all views as *******. Only users with the CDM Secrets
[sn_cdm.cdm_secrets] role can view, create, update, and delete encrypted values in config data.
The system validates and exports encrypted data appropriately.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Permissions of users with the CDM Secrets [sn_cdm.cdm_secrets] role
• Encrypted values appear in all views as ******* by default.
• Select the View encrypted data menu option to display encrypted values in any view.
• Validate and export a snapshot that includes encrypted data. All exported data is readable by
the CI/CD pipeline apps.
• Create, update, delete abilities:
◦ View an encrypted value.
◦ Edit an encrypted value.
◦ While creating a CDI, specify that the value should be encrypted.
◦ Permanently encrypt a value that is currently not encrypted.
◦ Permanently decrypt a value that is currently encrypted.
◦ Delete a CDI that has an encrypted value.

Permissions of all other users
• Encrypted values always appear in all views as *******.
• Request manual validation of snapshots that include encrypted data.
• Delete encrypted values in config data.
• Cannot view, create, or update encrypted values in config data.
• Cannot export a snapshot that includes encrypted data.

Domain separation and DevOps Config
Domain separation is unsupported for DevOps Config. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1451


<!-- page 1452 -->
Domain separation and DevOps Config overview
The DevOps Config application validates and manages the configuration data of your enterprise
applications across every stage of the DevOps pipeline. Domain separation is supported at the
data segregation layer only.
Related topics
Domain separation for service providers
Domain separation and CDM
Domain separation is supported for CDM. Domain separation enables you to separate data,
processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Domain separation and CDM overview
Domain separation for CDM means that only a user in the application's domain or parent domain
can access the data. All functionality for CDM works in a domain-separated environment as long
as all of the following actions are performed by users within that domain:
• Create application
• Create/upload config data
• Commit changeset
• Create snapshots
• Validate snapshots
• Map policies
• Export snapshots

How domain separation works in CDM
To set up domain separation for CDM:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1452


<!-- page 1453 -->
1. Create your domain and then create CDM users in that domain.
2. Only a specified user (CDM admin in that domain) should populate config data in the
application's domain.
3. Only users in the application's domain should upload or create data in the domain.
Follow these guidelines for successful domain separation:
• Create a separate user for each domain to perform upload, edit, or export of config data.
• Only users in the application's domain should upload or create data in the domain.
• Avoid uploading or creating config data for a given application in multiple domains.
• Policies and exporters must be either in the application's domain or in the global domain.

Domain-separated tables in CDM
CDM tables include a Domain column.
• sn_cdm_application
• sn_cdm_changeset
• sn_cdm_deployable
• sn_cdm_exporter
• sn_cdm_exporter_execution
• sn_cdm_exporter_execution_log
• sn_cdm_exporter_version
• sn_cdm_exporter_version_argument
• sn_cdm_node
• sn_cdm_node_main
• sn_cdm_pace_policy_mapping
• sn_cdm_restricted_groups
• sn_cdm_snapshot
Related topics
Domain separation for service providers

Default DevOps Config policies
The DevOps Config Policy content pack contains a set of default DevOps Config policies to
validate your configuration data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
Select a category to view the DevOps Config policies available within the category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1453


<!-- page 1454 -->
Generic

Kubernetes

Red Hat OpenShift

Generic policies in DevOps Config
By default, the DevOps Config Policy content pack contains a set of generic policies to validate
your configuration data.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
You can use or customize these default DevOps Config policies to validate that your
configuration data content is conformable, or administrate the full life cycle of PaCE policies

.

Note: You can’t modify the default policies. However, you can make a copy of the policy
and customize your copy.
First-letter navigation for policies on this page
A|C|D|F|G|K|L|M|N|S|U

All Key-Value Comparator (allKeysValuesComparator)
Checks whether all the key-value combinations of any additional deployables are the same as
the main deployable.
Results into a non-compliant status for the following conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1454


<!-- page 1455 -->
• When a key is present in the main deployable but not in the additional deployables.
• When a key is present in the additional deployables but not in the main deployable.
• When a key is present in both the main and additional deployables but with different values
Use case: Detect any configuration drifts between staging and production environments.
Input arguments
• additionalDeployablesInput
◦ A list of additional deployables to be compared with the main deployable.
◦ Type: List
◦ Mandatory: True
• includeNodes
◦ A boolean value to indicate whether to include nodes other than the config data
items (CDI) for the validation.
◦ Default: False
◦ Type: True | False
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of key names that should be ignored during
comparison.
◦ Type: String
◦ Mandatory: False

Authorized Email Domains (authorizedEmailDomains)
Checks whether an email domain value that is identified based on a regular expression are
included in the authorized email domain list.
Results into a non-compliant status when an email domain isn’t an authorized domain.
Use case: Prevent (sensitive) data from leaving a trusted company email domain.
Input arguments
• authorizedDomains
◦ A comma-separated list of authorized email domains.
◦ Example:
gmail.com,servicenow.com
◦ Type: String
◦ Mandatory: True
• exceptionList
◦ A comma-separated list of key names that are ignored by the policy.
◦ Type: String
◦ Mandatory: False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1455


<!-- page 1456 -->
Authorized Hosts in URLs (authorisedHostsInURLS)
Checks whether the format of the host component of the URL values in a snapshot are
authorized.
Results into a non-compliant status when the URL values in a snapshot aren’t according to the
format specified for the host component.
Use case: Prevent exposure of (sensitive) data through unauthorized URLs.
Input arguments
• authorizedHostsRegex
◦ A comma-separated list of regular expressions used for validating the host
component in URLs.
◦ Example:
notpresent$,code.devsnc+,mydomain.com
◦ Type: String
◦ Mandatory: True
• exceptionList
◦ A comma-separated list of key names that are ignored by the policy.
◦ Type: String
◦ Mandatory: False

Authorized Key-Value Combinations (authorisedKVCombinations)
Checks whether the input key values found in a snapshot are authorized.
Results into a non-complaint status when a key has an unauthorized value.
Input arguments
• authorisedList
◦ A JSON list of keys with a list of authorized string values for each key.
◦ Example:
{
"image":"k8s.example.io,gke.example.io,docker.examp
le.com:8444",
"domain":"example.service-now.com"
}
◦ Type: JSON
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the authorized keys and their key values
used for the validation are case-sensitive.
◦ Default value: False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1456


<!-- page 1457 -->
◦ Type: True | False
◦ Mandatory: False

Authorized Ports Range (authorisedPortsRange)
Checks whether the input port values found in a snapshot are authorized.
Results into a non-complaint status when a port value is not in the acceptable range.
Use case: Check that port names are within the acceptable range for the environment in which
they’re used. The policy can be used for any range value check, not just port numbers. For
example, to check that all the parameters defining a heap size are within the appropriate range.
Input arguments
• keysRegexWithRange
◦ A JSON list of port keys and port range with the minimum and maximum values.
A key is identified as a port when the key matches the regular expressions
specified in the input.
◦ Example:
{
"^web_port$": "5000-5003",
"env.db.port": "10000-65535"
}
◦ Type: JSON
◦ Mandatory: True
• exceptionList
◦ A comma-separated list of key names that are ignored by the policy.
◦ Type: String
◦ Mandatory: False

Certificate Validator (certificateValidator)
Checks whether certificates exist in a snapshot and whether the certificates have expired or are
going to expire within the expiration period.
Results into a non-compliant status when the expiration-date key or the certificate
key with the PEM-encoded format value in a snapshot has expired or will expire within the
expiration period. The expiration period is calculated from the date on which the policy is
executed plus the expiration days.
Input arguments
• certificatesNode
◦ The name of the node that contains the certificates.
◦ Default value: certificates
◦ Type: String
◦ Mandatory: True
• expirationDays

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1457


<!-- page 1458 -->
◦ The number of days to calculate the expiration period for the certificates. The
expiration period is calculated from the date on which the policy is executed
plus the expiration days.
◦ Type: Integer
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of certificate names that are ignored by the policy.
◦ Type: String
◦ Mandatory: False

Consistent Nodes Comparator (consistentNodesComparator)
Checks whether all the key-value combinations are the same for every first-level node in a
snapshot.
Results into a non-complaint status when any two first-level nodes in a snapshot have different
key-value combinations.
Use case: When all the nodes in a snapshot are a group of devices or virtual machines (VMs),
they have the same configuration.
Input argument
exceptionList
• A comma-separated list of nodes or key-value combinations to be excluded from
the validation.
• Type: String
• Mandatory: False

Correct Host Regex (correctHostRegex)
Checks the format for host-related keys to ensure that a host name is authorized to use.
Results into a non-complaint status when a key with a URL value in a snapshot doesn't match the
regular expression provided for the authorized hosts.
Input arguments
• authorizedHostRegex
◦ A regular expression used for validating the host component in the URLs.
◦ Example:
mydomain.com
◦ Type: String
◦ Mandatory: True
• exceptionList
◦ A comma-separated list of keys with the URL values to be excluded from the
comparison.
◦ Type: String
◦ Mandatory: False
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1458


<!-- page 1459 -->
Detect Unused Variables (detectUnusedVariables)
Checks whether the vars folder of a deployable or a collection includes variables that are not
used in a snapshot.
Results into a warning when a variable is declared but not used in a snapshot.

Different Key Names Same Values (differentKeyNamesSameValues)
Checks whether the values are the same for key pairs.
Results into a non-compliant status when the specified key pairs do not have the same value.
Use case: Obtain a finer grained control of conditions by checking that the values are the same
for different keys.
Input argument
keyPairs
• An array of key pairs that should have the same values. A key pair should have
different keys and should not consist of a single key ([key1) or more than two
keys ([key1=key2=key3]).
• Example:
["key1=key3","key2=key4"]
• Type: Array of strings
• Mandatory: True

Different Values Nodes Comparator (differentValuesNodesComparator)
Checks whether the key value is different across all components when a key exists in multiple
components of a snapshot.
Results into a non-compliant status when a key has the same value in multiple components.

Note: If a key has multiple occurrences inside the same component, use the Unique Key
Value (uniqueKeyValue) policy.
Input argument
keynameList
• A comma-separated list of key names that should have different values for firstlevel nodes.
• Example:
key1,key2
• Type: String
• Mandatory: True

Docker Image Format Validator (dockerImageFormatValidator)
Checks whether the docker image of a service follows the regex as specified in the input. For
example, provide a regex value to ensure the tagging and versioning of docker images follow
best practices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1459


<!-- page 1460 -->
Results into a non-compliant status when the image value does not match the regex input value
in the imageExpectedRegex input argument.
Input arguments
• imageExpectedRegex
◦ A regex value for a docker image.
Example input value to ensure that the tag of an image is an alphanumeric
value:
^.*:([0-9]+.?)+([-_]{1}[A-Za-z0-9.]+)?$
◦ Type: String
◦ Mandatory: True
• serviceExceptionList
◦ A comma-separated list of services that are exempted from the validation.
◦ Type: String
◦ Mandatory: False

Docker Image Registry Validator (dockerImageRegistryValidator)
Checks whether the registry of a docker image is included in the authorized list of registries.
Parses the docker image for each service, fetches the value of a registry in an image, and then
checks whether the fetched registry value is included in the authorizedRegistryList
input.
Results into a non-compliant status when the image registry is not in the
authorizedRegistryList input.
Input argument
authorizedRegistryList
• A comma-separated list of registries.
Example:
k8s.example.io,gke.example.io,docker.example.com:8444
• Type: String
• Mandatory: True

Docker Network Validator (dockerNetworkValidator)
Checks whether the network for a docker service is defined in the network sections.
Results into a non-compliant status when the network for a service is not defined in
the top-level network section or the network for a service configured in the labels/
com.docker.lb.network property is not defined in the service-level section and the toplevel network section.

Duplicate Values (duplicateValues)
Checks for duplicate values within a snapshot.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1460


<!-- page 1461 -->
Results into a non-compliant status when there are duplicate key values in a snapshot except for
the values defined in the exception list.
Use case: Obtain a finer-grained control of conditions by checking that snapshot values are
different.
Input arguments
• includePath
◦ A boolean value to indicate whether to include the full path of the node in the
output.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: True
• pathSeparator
◦ A string to indicate the path separator for nodes.
◦ Default value: /
◦ Type: String
◦ Mandatory: True
• exceptionList
◦ An array of strings to be excluded from the validation.
◦ Default value: ["true", "false", "yes", "no", "enabled",
"disabled"]
◦ Type: Array of strings
◦ Mandatory: False

Forbidden Key-Value Combinations (forbiddenKVcombinations)
Checks whether there are any forbidden key-value combinations in a snapshot.
Results into a non-complaint status when any key found in a snapshot has a forbidden value as
specified in the input list.
Input argument
forbiddenKV
• A JSON list of keys with a list of forbidden values for each key.
• Example:
{
"username":"root,admin",
"password":"qwerty123"
}
• Type: JSON
• Mandatory: True

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1461


<!-- page 1462 -->
Generic List Validator (genericListValidator)
Compares the key values of a snapshot with the list of values provided in the input. The key value
might be a string, a list of comma-separated strings, an array of strings, or an object. When the
key value is an object, the keys of the object are used in the comparison.
Note the following points for the policy compliance:
• When the operator is IN, the policy is compliant when all the strings in the key value are
included in the input list.
• When the operator is EQUALS, the policy is compliant when all the strings in the key value
match all the strings, listed in any order, in the input list.
• When the operator is CONTAINS, the policy is compliant when the key value contains all the
strings in the input list.
• When the operator is NOT CONTAINS, the policy is compliant when none of the strings in the
key value exist in the input list.
Input arguments
• keysToValidateObject
◦ An array of objects where each object contains a key path, an operator, and a
reference list.
◦ Allowed operators are IN, CONTAINS, NOT CONTAINS, and EQUALS.
◦ Example input value to enforce that a user defined in the system /root/user
path is either user1 or user2:
[
{
keyPath: ["system", “root”, "user"]
operator: "IN"
referenceList: [user1, user2]
}
]
◦ Default value: []
◦ Type: Array of objects
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the list comparison should be casesensitive.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: False

Generic Validator (genericValidator)
Checks whether the value of a key is valid based on the operator and reference input value.
Note the following points for the policy compliance:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1462


<!-- page 1463 -->
• When the operator is = or ==, the policy is compliant when the key value matches with the
reference input value.
• When the operator is <, the policy is compliant when the key value is less than the reference
input value.
• When the operator is >, the policy is compliant when the key value is greater than the
reference input value.
• When the operator is <=, the policy is compliant when the key value is less than or equal to the
reference input value.
• When the operator is >=, the policy is compliant when the key value is greater than or equal to
the reference input value.
• When the operator is != or <>, the policy is compliant when the key value does not match the
reference input value.
• When the operator is IN, the policy is compliant when the key value is included in the
reference input list.
• When the operator is NOT IN, the policy is compliant when the key value is not included in
the reference input list.
• When the operator is CONTAINS, the policy is compliant when the key value contains the
reference input value.
• When the operator is NOT CONTAINS, the policy is compliant when the key value does not
contain the reference input value.
• When the operator is REGEX, the policy is compliant when the key value matches the regular
expression pattern as specified in the reference input value.
Input arguments
• keysToValidate
◦ An array of objects where each object contains a key, an operator, and a
reference value.
◦ Allowed operators are <, <=, >, >=, = or ==, <> or !=, RANGE, CONTAINS, NOT
CONTAINS, IN, NOT IN, and REGEX.
◦ Example:
[
{
"key": "webport-KO",
"operator": "RANGE",
"refValue": "8000-9000"
},
{
"key": "webport-OK",
"operator": ">=",
"refValue": 8000
},
{
"key": "fqdn-OK",
"operator": "REGEX",
"refValue":
".francecentral.cloudapp.azure.com$"
},
{
"key": "trace_level-KO",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1463


<!-- page 1464 -->
"operator": "IN",
"refValue": "INFO,ERROR,FATAL"
},
{
"key": "trace_level-KO",
"operator": "NOT IN",
"refValue": "DEBUG,VERBOSE"
},
{
"key": "trace-KO-ifcasesensitive",
"operator": "CONTAINS",
"refValue": "ERROR"
}
]
◦ Type: String
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the list comparison should be casesensitive.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: False

Key Existence Comparator (keyExistenceComparator)
Checks whether all the keys from a main deployable also exist in the additional deployables
provided in the input.
Results into a non-compliant status if a key is present in the main deployable but not in the
additional deployables.
Use case: Compare your environment variables and check that they’re consistent.
Input arguments
• additionalDeployablesInput
◦ A list of additional deployables to be compared with the main deployable.
◦ Type: List
◦ Mandatory: True
• includeNodes
◦ A boolean value to indicate whether to include child nodes of deployables
during comparison.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1464


<!-- page 1465 -->
◦ Type: True | False
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of key names that should be ignored during
comparison.
◦ Type: String
◦ Mandatory: False

Key Naming Convention (keyNamingConvention)
Checks whether key names follow a given naming pattern.
Results into a non-complaint status when keys don't follow the prefix-suffix naming pattern as
specified in the input arguments.
Input arguments
• maxLength
◦ An integer value indicating the maximum length for a key name.
◦ Type: Integer
◦ Mandatory: False
• approvedPrefixArray
◦ An array of strings that indicate approved prefixes for a key name.
◦ Type: Array of strings
◦ Mandatory: False
• includePath
◦ A boolean value to indicate whether to include the full path of the node in the
output.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: True
• approvedSuffixArray
◦ An array of strings that indicate approved suffixes for a key name.
◦ Type: Array of strings
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of keys to be excluded from validation.
◦ Type: String
◦ Mandatory: False

Key Path Validator (keyPathValidator)
Checks whether a key for the specified key path is found in a snapshot, and if found, the value of
the key is valid based on the operator value and reference input value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1465


<!-- page 1466 -->
Results into a non-complaint status when the key for the specified key path has an invalid value.
In addition, if the ignoreIfNotFound input argument is False, results into a non-complaint
status when the key path specified in the input argument is not found in a snapshot.
Input arguments
• pathAndDesiredValues
◦ A JSON object that contains a set of keys and a mapping of condition and value
the keys must have.
◦ Example:
{
"release-1.0/paymentService-V1.0/integerValues":
["<","3"],
"release-1.0/paymentService-V1.0/database/dbPort":
[">","8000"]
}
◦ Type: JSON
◦ Mandatory: True
• pathSeparator
◦ A string to indicate the path separator for nodes.
◦ Default value: /
◦ Type: String
◦ Mandatory: True
• ignoreIfNotFound
◦ A boolean value to indicate whether the key for the specified key path should
exist in a snapshot.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: False

Key Value Substring Check (keyValueSubstringCheck)
Checks for the specified substring in a snapshot value for a specified key name.
Results into a non-complaint status when the value of a key name does not contain the substring
as specified in the input argument.
Input argument
keyNameWithKeyValues
• A JSON object that contains a required substring set including key name
substring, and key value substring pairs.
• Example:
{
"live": "2022"
"environment": "aws"
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1466


<!-- page 1467 -->
• Type: JSON
• Mandatory: True

List Comparator (listComparator)
Checks whether any two keys have the same values by comparing the list of values between the
two keys. The comparison is case insensitive.
Results into a non-compliant status when all the list of values in the first key match all the values,
listed in any order, in the second key.
Input arguments
• list1Node
◦ The key name of the primary node.
◦ Type: String
◦ Mandatory: True
• list2Node
◦ A key name of the node to be compared with the primary node.
◦ Type: String
◦ Mandatory: True

Mandatory Keys (mandatoryKeys)
Checks whether the list of key names specified in the input are present in a snapshot.
Results into a non-compliant status when the specified key name is not present in a snapshot.
Input arguments
• mandatoryKeys
◦ A comma-separated list of key names.
◦ Type: String
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False

Memory Limit Validator (memoryLimitValidator)
Checks whether the memory resources assigned to a key value are within the specified limits of
a memory unit. Compares case-insensitive key values of metric units (including KB, MB, and
GB) and binary units (including KiB, MiB, and GiB). Converts a key value and its input values to
bytes before comparing.
Results into a non-compliant status when a key value is not within the specified limits or is not a
memory unit.
Input argument
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1467


<!-- page 1468 -->
pathAndLimitsArray
• An array of key paths and the minimum and maximum values for memory unit
limits as min and max.
• Type: Array of objects
• Mandatory: True
Example:
[
{
keyPath: ["deploy", "resources", "limits", "cpu"],
min: "250m",
max: "500m"
},
{
keyPath: ["deploy", "resources", "limits", "cpu"],
min: "1GB",
max: "8GB"
}
]

Mandatory Tags List (mandatoryTagsList)
Checks whether the tag nodes found in a snapshot have authorized values.
Results into a non-complaint status when a tag node has a value not included in the authorized
tag list.
Input arguments
• tagsNodeName
◦ A comma-separated list of key names.
◦ Type: String
◦ Mandatory: True
• tagsList
◦ A comma-separated list of authorized tag values.
◦ Type: String
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False

Mandatory Value (mandatoryValue)
Checks whether all the keys provided as input have a non-empty value.
Results into a non-compliant status when the value of a key is null or empty, or results into a
warning when the key name specified in the input is not found in a snapshot.
Input arguments
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1468


<!-- page 1469 -->
• keysList
◦ A comma-separated list of key names.
◦ Type: String
◦ Mandatory: True
• stopAtFirstFound
◦ A boolean value to indicate whether to check only the first occurrence of the
key value in a snapshot.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: True
• trimValue
◦ A boolean value to indicate whether to remove any leading or trailing spaces
from the key value before comparison.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False

Mandatory Value By Type (mandatoryValueByType)
Checks whether all the keys provided as input have a non-empty value.
Results into a non-compliant status for the following conditions:
• When the value of a key specified in the keyNamesString input argument is not a string
value or is empty.
• When the value of a key specified in the keyNamesInteger input argument is not an integer
value or is empty.
• When the value of a key specified in the keyNamesBoolean input argument is not a boolean
value or is empty.
Input arguments
• keyNamesString
◦ A comma-separated list of key names that must have a string value.
◦ Type: String
◦ Mandatory: False
• keyNamesInteger

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1469


<!-- page 1470 -->
◦ A comma-separated list of key names that must have an integer value.
◦ Type: String
◦ Mandatory: False
• keyNamesBoolean
◦ A comma-separated list of key names that must have a boolean value.
◦ Type: String
◦ Mandatory: False

No Clear Sensitive Data (noClearSensitiveData)
Checks whether the values are encrypted for the key names containing the specified keywords.
Results into a non-compliant status when the key name containing the specified keywords is not
encrypted.
Use case: DevOps Config is used by organizations to manage and govern sensitive data
(passwords, API keys, and tokens) through its permission-based access controls.
Input arguments
• keyWords
◦ A comma-separated list of strings used for identifying sensitive keys in a
snapshot. The policy uses the case insensitive comparison.
◦ Default value: pass,pwd,secret
◦ Type: String
◦ Mandatory: True
• exceptionList
◦ A comma-separated list of keys to be excluded from validation.
◦ Type: String
◦ Mandatory: False

No Duplicate Keys (noDuplicateKeys)
Checks whether there are no duplicate key names in a snapshot.
Results into a non-compliant status if a key name has multiple occurrences in a snapshot.
Use case: Deployment automation tools can handle multiple occurrences of settings badly
resulting into downtime of services.
Input argument
keyNames
• A comma-separated list of key names.
• Default value: dbConnectionString,dbUserName
• Type: String
• Mandatory: False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1470


<!-- page 1471 -->
No Empty Values (noEmptyValues)
Checks whether all the keys have a non-empty value.
Results into a non-compliant status when the value of a key not included in the exception list is
null or empty.
Input arguments
• trimValue
◦ A boolean value to indicate whether to remove any leading or trailing spaces
from the key value before comparison.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of keys to be excluded from validation.
◦ Type: String
◦ Mandatory: False

No Forbidden Values (noForbiddenValues)
Checks whether there are any key names with forbidden values in a snapshot.
Results into a non-complaint status when any key found in a snapshot has a forbidden value as
specified in the input list.
Input arguments
• forbiddenValues
◦ A comma-separated list of forbidden values.
◦ Default value: root
◦ Type: String
◦ Mandatory: False
• excludedKeyNames
◦ A comma-separated list of keys to be excluded from validation.
◦ Default value: name,*desc*
◦ Type: String
◦ Mandatory: False

No FTP (noFTP)
Checks whether all the URLs in a snapshot use the FTPS protocol.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1471


<!-- page 1472 -->
Results into a non-compliant status when a URL contains FTP in a snapshot.
Input arguments
• searchValue
◦ A search term that should not be present in the key value.
◦ Default value: FTTP:/
◦ Type: String
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of keys to be excluded from validation.
◦ Type: String
◦ Mandatory: False

No HTTP (noHTTP)
Checks whether all the URLs in a snapshot use the HTTPS protocol.
Results into a non-compliant status when a URL contains HTTP in a snapshot.
Input arguments
• searchValue
◦ A search term that should not be present in the key value.
◦ Default value: HTTP:/
◦ Type: String
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of keys to be excluded from validation.
◦ Type: String
◦ Mandatory: False

Node Keys Comparator (nodeKeysComparator)
Checks whether all the keys from the primary node are the same in the secondary node.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1472


<!-- page 1473 -->
Results into a non-compliant status if a key is present in the primary node but not in the
secondary node or vice versa.
Input arguments
• fromNode
◦ An array of strings indicating the path of the primary node in a snapshot.
◦ Default value: []
◦ Type: Array of strings
◦ Mandatory: True
• toNode
◦ An array of strings indicating the path of the secondary node in a snapshot.
◦ Default value: []
◦ Type: Array of strings
◦ Mandatory: True
• includePath
◦ A boolean value to indicate whether to include the full path of the node in the
output.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: False

No LDAP (noLDAP)
Checks whether all the URLs in a snapshot use the LDAPS protocol.
Results into a non-compliant status when a URL contains LDAP in a snapshot.
Input arguments
• searchValue
◦ A search term that should not be present in the key value.
◦ Default value: LDAP:/
◦ Type: String
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: False
◦ Type: True | False
◦ Mandatory: False
• exceptionList
◦ A comma-separated list of keys to be excluded from validation.
◦ Type: String
◦ Mandatory: False
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1473


<!-- page 1474 -->
Nodes Value Comparator (nodesValueComparator)
Compares all key-value combinations between two nodes in a snapshot.
Results into a non-compliant status for the following conditions:
• When a key specified in the sameValueKeys input argument has a different value in two
nodes.
• When a key specified in the diffValueKeys input argument has the same value in two
nodes.
• When the allowMissingKeys input argument is set to False and if a key is present in the
primary node but not in the secondary node or vice versa.
Use case: Ensure consistency between nodes by comparing the values for keys between two
nodes.
Input arguments
• fromNode
◦ An array of strings indicating the path of the primary node in a snapshot.
◦ Default value: []
◦ Type: Array of strings
◦ Mandatory: True
• toNode
◦ An array of strings indicating the path of the secondary node in a snapshot.
◦ Default value: []
◦ Type: Array of strings
◦ Mandatory: True
• includePath
◦ A boolean value to indicate whether to include the full path of the node in the
output.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: False
• sameValueKeys
◦ A comma-separated list of key names with the same values.
◦ Type: String
◦ Mandatory: False
• diffValueKeys
◦ A comma-separated list of key names with different values.
◦ Type: String
◦ Mandatory: False
• allowMissingKeys
◦ A boolean value indicating whether to check all the keys from the primary node
are the same in the secondary node.
◦ Default value: False
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1474


<!-- page 1475 -->
◦ Type: True | False
◦ Mandatory: False

No White-Space Characters Allowed (noWhiteSpaceAllowed)
Checks whether the key values do not contain white-space characters including leading and
trailing spaces.
Result into a non-compliant status when a key value includes a white-space character.
Use case: Prevent white-space characters from causing issues for tools or applications when
settings are applied.
Input argument
excludedKeyNames
• A comma-separated list of keys to be excluded from validation.
• Default value: description
• Type: String
• Mandatory: False

Same Key Value (sameKeyValue)
Checks whether the values of a key if included in multiple components of a snapshot are the
same across all components.
Results into a non-compliant status when a key has different values in multiple components.
Input argument
keyList
• A comma-separated list of key names
• Mandatory: True
• Type: String

Same Values Comparator (sameValuesComparator)
Checks whether all the keys provided as the keyList input argument have the same value
across the deployables.
Results into a non-compliant status when the value of a key is different in multiple deployables,
or results into a warning when the key name specified in the input is not found in any of the
deployables.
Use case: Detect any configuration drifts between staging and production environments.
Input arguments
• additionalDeployablesInput
◦ A list of additional deployables to be compared with the main deployable.
◦ Type: List
◦ Mandatory: True
• keysList

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1475


<!-- page 1476 -->
◦ A comma-separated list of key names.
◦ Type: String
◦ Mandatory: True
• stopAtFirstFound
◦ A boolean value to indicate whether to check only the first occurrence of the
key value in a snapshot.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: True
• caseSensitive
◦ A boolean value to indicate whether the key comparison is case-sensitive.
◦ Default value: True
◦ Type: True | False
◦ Mandatory: False

Unique Key Value (uniqueKeyValue)
Checks whether the key value is different for a key when the key has multiple occurrences in a
snapshot.
Results into a non-compliant status when a key has the same value in more than one occurrence.
Input argument
keyList
• A comma-separated list of key names.
• Mandatory: True
• Type: String

Unique Values Across Deployables (checkUniqueKeyValue_crossDeployables)
Checks whether all the keys provided as the keyName input argument have different values
across the deployables.
Results into a non-compliant status when the value of a key is the same in multiple deployables,
or results into a warning when the key name specified in the input is not found in any of the
deployables.
Use case: Detect any configuration drifts between staging and production environments.
Input arguments
• additionalDeployablesInput
◦ A list of additional deployables to be compared with the main deployable.
◦ Type: List
◦ Mandatory: True
• keyName

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1476


<!-- page 1477 -->
◦ A comma-separated list of key names.
◦ Type: String
◦ Mandatory: True

Unresolved Variables (unresolvedVariables)
Checks whether there are any unresolved variables in a snapshot.
Results into a non-compliant status when a variable used in a key value cannot be resolved.
Use case: Ensure all the variables used in the configuration data settings are replaced with a
value because any unresolved variables can break the deployment operation.
Kubernetes policies in DevOps Config
By default, the DevOps Config Policy content pack contains a set of policies to validate your
Kubernetes configuration.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
You can use or customize these default DevOps Config policies to validate that your
configuration data content is conformable, or administrate the full life cycle of PaCE policies

.

Note: You can’t modify the default policies. However, you can make a copy of the policy
and customize your copy.
First-letter navigation for policies on this page
A|B|C|D|I|K|M|N|P|R|S|T

Always Pull Images Admission Control Plugin Is Enabled
(container_always_pull_images_plugin_is_enabled)
Checks whether the AlwaysPullImages admission controller plugin is enabled for the
Kubernetes API server.
Results into a non-compliant status when the AlwaysPullImages plugin is not specified
with the --enable-admission-plugins argument when using the kube-apiserver
command.

Basic Auth File Isn't Set (container_basic_auth_file_is not_set)
Checks whether the Kubernetes API server is not using the basic user authentication
mechanism.
Results into a non-compliant status when the --basic-auth-file argument is specified for
a container when using the kube-apiserver command.

Bind Address Isn't Set (container_bind_address_not_set_to_localhost)
Checks whether the bind address of the Kubernetes scheduler or Kubernetes controller
manager is not 127.0.0.1.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1477


<!-- page 1478 -->
Results into a non-compliant status when the --bind-address argument is set to
127.0.0.1 for a container when using the kube-controller-manager or kubescheduler command.

Containers Don't Run With Low UID (container_uid_minimum_limit)
Checks whether the UID of each container within a Kubernetes pod is greater than or equal to
the specified minimum UID value.
Results into a non-compliant status if the UID defined for a container is less than the minimum
UID value. If the UID is not defined for a container, the UID of the associated pod is validated.
Input argument
min_uid
• The minimum UID value required for the containers in a pod.
• Default value: 10000
• Type: Integer
• Mandatory: False

Containers Require Drop Capabilities (container_requires_drop_capabilities)
Checks whether the drop capabilities are defined for containers within a Kubernetes pod.
Results into a non-compliant status when the drop capabilities for a container are not defined.

Containers Run as a Non-Root User (container_run_as_nonroot_user)
Checks whether the containers within a Kubernetes pod run only as a non-root user to limit the
exploitability of security misconfiguration and to restrict an attacker's possibilities in case of
compromise.
Results into a non-compliant status when the runAsNonRoot key for a container is set to
false or the user ID (UID) of a container is zero.

Containers Run Without Privilege Access (container_is_not_privileged)
Checks whether the containers within a Kubernetes pod are run without privileged access.
Results into a non-compliant status when the privileged field for a container is set to true.

Containers Run Without Sys Admin Capability
(container_is_without_sys_admin_capability)
Checks whether the containers within a Kubernetes pod are run without the SYS_ADMIN
capability.
Results into a non-compliant status when the SYS_ADMIN privileges are assigned to a container.

CPU Requests Are Within Limits (container_cpu_request_within _limits)
Checks whether the containers within a Kubernetes pod are requesting the central processing
unit (CPU) resources within the specified CPU limit.
Results into a non-compliant status when either the limits.cpu key is not defined or when
the value of the requests.cpu key exceeds the value of the limits.cpu key.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1478


<!-- page 1479 -->
Docker Daemon Socket Isn't Exposed (docker_daemon_socket_not_exposed)
Checks whether the Docker daemon socket is not exposed to containers.
Results into a non-compliant status when the hostPath.path key for a volume is set to /
var/run/docker.sock.

Image Pull Policy Is Always (container_imagePullPolicy_is_always)
Checks whether the imagePullPolicy field for each container within a Kubernetes pod is set
to Always.
Results into a non-compliant status if the imagePullPolicy field is not defined or the
Always criterion is not met.

Insecure Bind Address Isn't Set (container_insecure_bind_address_is_not_set)
Checks whether the Kubernetes API server does not bind to an insecure address that otherwise
could enable attackers to connect to the server over the insecure port and potentially read
sensitive data in transit.
Results into a non-compliant status when the insecure-bind-address argument is
specified when using the kube-apiserver command.

Kubelet HTTPS Is True (container_kubelet_https_is_true)
Checks whether the connections between the Kubernetes API server and the kubelet use the
HTTPS protocol to secure data transfer.
Results into a non-compliant status when the -kubelet-https argument is set to false when
using the kube-apiserver command.

Memory Requests Are Within Limits (container_memory_request_within
_limits)
Checks whether the containers within a Kubernetes pod are consuming resources within the
specified memory limit.
Results into a non-compliant status when either the limits.memory key is not defined or
when the value of the requests.memory key exceeds the value of the limits.memory key.

No Wildcard in the RBAC Rule (rbac_no_wildcard_in_rule)
Checks whether the Role and ClusterRole resources are not using wildcards to refer to objects or
actions for role-based access control (RBAC) rule.
Returns into a non-compliant status when the wildcards are used in apiGroups, resources,
or verbs for the RBAC rule.

Privilege Escalation Not Allowed (container_privilege_escalation_not_allowed)
Checks whether the containers within a Kubernetes pod have less privileges than their parent
process.
Results into a non-compliant status when the allowPrivilegeEscalation key for a
container is either set to true or not defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1479


<!-- page 1480 -->
Root Containers Admitted (container_read_only_root_file_system)
Checks whether the containers within a Kubernetes pod have the root file system set to read
only.
Returns into a non-compliant status when the readOnlyRootFilesystem key for a
container is not defined or set to false.

Seccomp Profile Is Configured (container_seccomp_profile_is_configured )
Checks whether the containers within a Kubernetes pod are configured with a secure computing
mode (seccomp) profile to restrict potentially dangerous system calls (syscalls).
Results into a non-compliant status when the seccompProfile.type key for a container is
either not defined or set to a value other than Localhost or RuntimeDefault.

Service Account Private Key File Is Specified
(container_service_account_private_key_file_is_specified)
Checks whether the --service-account-private-key-file argument is specified
with the kube-controller-manager command for a container.
Results into a non-compliant status when the --service-account-private-key-file
argument is not specified for a container when using the kube-controller-manager
command.

Secure Port Isn't Set to Zero (container_secure_port_not_set_to_zero)
Checks whether the Kubernetes API server is not using port 0 for the HTTPS authentication and
authorization.
Results into a non-compliant status when the --secure-port argument is set to 0 for a
container when using the kube-apiserver command.

Token Auth File Isn't Set (token_auth_file_is_not_set)
Checks whether the Kubernetes API server is not using a static token file for user authentication.
Results into a non-compliant status when the token-auth-file argument is specified when
using the kube-apiserver command.
Red Hat OpenShift policies in DevOps Config
By default, the DevOps Config Policy content pack contains a set of policies to validate your Red
Hat OpenShift configuration.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
You can use or customize these default DevOps Config policies to validate that your
configuration data content is conformable, or administrate the full life cycle of PaCE policies

.

Note: You can’t modify the default policies. However, you can make a copy of the policy
and customize your copy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1480


<!-- page 1481 -->
First-letter navigation for policies on this page
A|B|C|H|N|R|S|T

Audit Log Maximum Backup Is Set (openshift_audit_log_maxbackup_is_set)
Checks whether the maximum number of old audit log files to be retained for API servers is set.
Results into a non-compliant status when the --audit-log-maxbackup argument is either
not set or not within the specified limits.
Input arguments
• lowerLimit
◦ The lower limit of the --audit-log-maxbackup argument.
◦ Type: Integer
◦ Mandatory: False
• upperLimit
◦ The upper limit of the --audit-log-maxbackup argument.
◦ Type: Integer
◦ Mandatory: False

Audit Log Maximum File Size Is Set (openshift_audit_log_maxsize_is_set)
Checks whether the maximum file size specified as the rollover threshold for audit log files is set.
After an audit log file reaches the maximum file size, the original audit log file is renamed and a
new log file with the original name is created.
Results into a non-compliant status when the --audit-log-maxsize argument is either not
set or not within the specified limits.
Input arguments
• lowerLimit
◦ The lower memory limit of the --audit-log-maxsize argument.
◦ Type: Integer
◦ Mandatory: True
• upperLimit
◦ The upper memory limit of the --audit-log-maxsize argument.
◦ Type: Integer
◦ Mandatory: True

Audit Log Path Isn't Set (openshift_audit_log_path_is_not_set)
Checks whether the auditing is enabled in OpenShift and the audit log file path is set.
Results into a non-compliant status when either the --audit-log-path argument for
openshift-kube-apiserver isn’t set to /var/log/kube-apiserver/audit.log
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1481


<!-- page 1482 -->
or the --audit-log-path argument for openshift-apiserver isn’t set to /var/log/
openshift-apiserver/audit.log.

Basic Auth File Isn’t Set (openshift_basic_auth_file_is_not_set)
Checks whether OpenShift doesn’t use the basic authentication mechanism to authenticate
requests to the API server.
Results into a non-compliant status when the --basic-auth-file argument is set.

Containers Run Without Privilege Access
(openshift_container_is_not_privileged)
Checks whether the containers within an OpenShift pod are run without privileged access.
Results into a non-compliant status when the privileged field for a container is set to true.

Host PID Namespace Is Disabled
(openshift_scc_with_hostPID_namespace_disabled)
Checks whether there is at least one security context constraint (SCC) is defined that doesn’t
allow containers to share the host PID namespace.
Results into a warning when there’s an SCC defined with the allowHostPID field set to true.

NamespaceLifecycle Plugin Is Enabled
(openshift_namespacelifecycle_plugin_is_enabled)
Checks whether the admission control plugin NamespaceLifecycle is enabled.
Results into a non-compliant status when the NamespaceLifecycle plugin is disabled.

Read-Only Port Is Disabled (openshift_read_only_port_disabled)
Checks whether the Kubelet API server isn’t using the read-only port or the read-only port is set
to 0.
Results into a non-compliant status when the kubelet-read-only-port argument isn’t set
to 0.

Request Timeout Is Set (openshift_request_timeout_is_set)
Checks whether the global request timeout for API servers is set.
Results into a non-compliant status when the --min-request-timeout argument is either
not set or not within the specified limits.
Input arguments
• lowerLimit
◦ The lower limit of the --min-request-timeout argument.
◦ Type: Integer
◦ Mandatory: False
• upperLimit

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1482


<!-- page 1483 -->
◦ The upper limit of the --min-request-timeout argument.
◦ Type: Integer
◦ Mandatory: False

Streaming Connections Timeout Isn't Disabled
(openshift_streaming_connections_timeout_not_disabled)
Checks whether the timeouts are set on streaming connections to ensure protection against
denial-of-service attacks, inactive connections, and ephemeral ports exhaustion.
Results into a non-compliant status when the streamingConnectionIdleTimeout
argument is set to 0 in the Kubelet config file.

Token Auth File Isn’t Set (openshift_token_auth_file_is_not_set)
Checks whether OpenShift doesn't use a static token file to authenticate requests to the API
server.
Results into a non-compliant status when the --token-auth-file argument is set.

Default DevOps Config exporters
The DevOps Config Exporter content pack contains a set of default DevOps Config exporters of
data that can be used as input for further deployment and provisioning activities.

Important: DevOps Config is now deprecated and no longer supported or available for
new activation.
DevOps Config exporters allow other tools to consume the data from deployable snapshots.

Note: You cannot modify default exporters. However, you can make a copy of the exporter
and customize your copy.
These exporters are contained in the DevOps Config Exporter content pack.
• returnAllData-now
• returnAllData_noVars-now
• returnDataforNodeName-now
• returnDataForNodeNames-now
• returnDataForPath-now
• returnNodeListForLevel-now
• returnNodeListForPath-now
• returnValueForKeyAtNodeName-now
• returnValueForKeyPath-now
• returnValueForUniqueKeyName-now

Return all data (returnAllData-now)
Returns the full content of the snapshot without any filtering or modifications, including the var
system folder.

Note: The exporter fails if the application/deployable is not in Active state (deleted).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1483


<!-- page 1484 -->
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
Special logic
None.
Error handling
None.

Return all data except vars (returnAllData_noVars-now)
Returns all of the configuration data for the deployable, except deployable name and variables.
Response does not include:
• vars folder at the deployable level
• vars folder at each of the included collections
• Deployable name at the root level of the response

Note: This exporter does not work for deleted applications/deployables.
Arguments
Arguments (can be provided on the command line, or entered interactively in run
mode).
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
Special logic
None.
Error handling
None.

Return data for a node name (returnDataforNodeName-now)
Returns the subset of the snapshot data for a given node name, which is provided as an
argument. The argument value must be passed as string text.
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• nodeName - Node name (string, in quotes)
• includeNodeInOutput - (string, default is true)
Special logic
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1484


<!-- page 1485 -->
• If nodeName is empty, all data is returned.
• If includeNodeInOutput is false, the node data is returned excluding the node
name.
Error handling
• If the nodeName is not unique, multiple instances of nodeName
found.
• If the nodeName is not found, node not found: <nodeName>.
• If includeNodeInOutput is false and node data is a key-value pair, an error is
returned.

Return data for list of nodes (returnDataForNodeNames-now)
Returns the full data from the snapshot for a list of nodes. Same as Return data for a
node name but returns a nested JSON with configuration data for a list of given node names
(including any child nodes).
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• nodeNames - Node names (string, in quotes, comma-separated)
Special logic
If nodeNamesList is empty, returns all config data.
Error handling
None.
Response details
{“node1”:{“contentKey”:”contentValue”},”node2”:{ “error”:”nodeName not found”}}.
Error handling
• In case the nodeName is not unique the exporter returns an error response
stating “multiple instances of nodeName found” for that specific nodeName.
Other nodeNames contain the data
• If a nodeName is not found it should contain error message for that node

Return data for path (returnDataForPath-now)
Returns all of the configuration data for a given node path in the snapshot.
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• nodePath - Node path (string, in quotes)
Special logic
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1485


<!-- page 1486 -->
If nodePath is empty, return the whole content (similar to all config data).
Error handling
If nodePath is not found, the last node name that was not found is stated path
not found: <nodeName>.

Return node list for level (returnNodeListForLevel-now)
Returns a list of names of nodes that are children of root node at specified level (depth) in the
snapshot. For example, level 1 is a direct child of root node, level 2 is a grandchild, etc.
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• ExcludeVarsNode [true|false] - Exclude the vars node from the result (true or false,
default is true)
• nodeLevel - Level of the node (integer, default is 0)
Special logic
If no level is specified, then exporter returns the value for level 0 (for example, the
deployable root node name).
Error handling
None.
Response details
[“node1, “node2”, “node3”]

Return node list for path (returnNodeListForPath-now)
Returns the list of nodes for a given node path in the snapshot (not taking into account subnodes).
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• ExcludeVarsNode [true|false] - Exclude the vars node from the result (true or false,
default is true)
• nodePath - Path to follow with list of nodes separated by pathSeparator (string, in
quotes)
• pathSeparator - Character to separate list of nodePaths (string, default is ‘,’)
Special logic
None.
Error handling
None.
Response details
[“node1, “node2”, “node3”]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1486


<!-- page 1487 -->
Return value for key within a node (returnValueForKeyAtNodeName-now)
Returns the value of a specific key that is part of a node in the snapshot. The key can either be
directly defined to the node, or lower in the data model to one of the children of the node.
The difference between this exporter and export value for unique keyName is that
the key name only needs to be unique within the subtree of the node.
Key/node combination is expected to be unique in the snapshot. If the key/node combination is
found more than once, there is an error.
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• keyName - Key name (string, in quotes)
• nodeName - Node name (string, in quotes)
Special logic
None.
Error Handling
If keyName nodeName combination is not found an empty response is returned.

Return value for keyPath (returnValueForKeyPath-now)
Returns the value of a specific key in a specific path.
Arguments
• appName - Application name
• deployableName - Deployable name
• requestedFormat - Requested format (json/yaml/xml/ini/raw)
• keyPath - List of node names with key name at the end separated by
pathSeparator (string, in quotes)
• pathSeparator - Character to separate list of keyPaths (string, default is ‘,’)
Special logic
None.
Error handling
• If the keyPath is not provided, no keyPath argument provided.
• If the keyPath is not found, states the last node name not found path not
found: <path>/<nodeName>.
• If the keyPath is found and is a node (not a key), keyPath provided is a
node and not a key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1487


