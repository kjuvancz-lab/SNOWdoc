# Zurich IT Service Management — Accelerate your DevOps change process

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1185–1190 of 3857 | Part 2 of 2

Sections: Accelerate your DevOps change process (p1035); Manage (p1109)

---

<!-- page 1185 -->
that are older than a specified period. An archive table is created for any table that has an
archive rule associated with it. You can also choose to restore data from archive tables.

Note: While you can restore any record from the archive tables. Once archived data is
restored, the same data is no longer auto-archived. For more information, see Managing
archived data .
• Navigate to System Archiving > Archive Rules and select the individual archive rule
whose data you restored.
• Enable the Auto rearchive check box, to resume auto-archiving for that archive rule.

Modify base system value for archive rules
You can configure the auto archive duration for all the archive rules that are applicable to
DevOps tables from the Auto archive (in months) DevOps system property. By default, this
property's value is set to 9 (months). Navigate to DevOps > Administration > Properties > Auto
archive (in months), to modify the value. For more information on configuring data archiving, see
Create an archive rule
The following list indicates the tables that are auto-archived.
Auto-archived DevOps tables
Table

Table Name

Archived table name

Artifact Staged Request

sn_devops_artifact_staging

ar_sn_devops_artifact_staging

Artifact Version

sn_devops_artifact_version

ar_sn_devops_artifact_version

Branch

sn_devops_branch

ar_sn_devops_branch

Build Test Result

sn_devops_build_test_result

ar_sn_devops_build_test_result

Build Test Summary

sn_devops_build_test_summaryar_sn_devops_build_test_summary

Callback

sn_devops_callback

ar_sn_devops_callback

Commit

sn_devops_commit

ar_sn_devops_commit

Commit Details

sn_devops_commit_details

ar_sn_devops_commit_details

Deployed Artifact to
TaskExecution

sn_devops_m2m_artifact_execution
ar_sn_devops_m2m_artifact_execution

Artifact Version to Commit

sn_devops_m2m_artifact_version_commit
ar_sn_devops_m2m_artifact_version_commit

Branch To Commit

sn_devops_m2m_branch_commit
ar_sn_devops_m2m_branch_commit

Run Commit

sn_devops_m2m_commit_execution
ar_sn_devops_m2m_commit_execution

Commit To Work Item

sn_devops_m2m_commit_work_item
ar_sn_devops_m2m_commit_work_item

Pipeline Execution

sn_devops_pipeline_execution ar_sn_devops_pipeline_execution

Software Quality Scan
Summary

sn_devops_software_quality_scan_summary
ar_sn_devops_software_quality_scan_summary

Software Quality Scan
Summary Relations

sn_devops_software_quality_scan_summary_relations
ar_sn_devops_software_quality_scan_summary

Step Execution

sn_devops_step_execution

ar_sn_devops_step_execution

Tag

sn_devops_tag

ar_sn_devops_tag

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1185


<!-- page 1186 -->
Auto-archived DevOps tables (continued)
Table

Table Name

Archived table name

Task Execution

sn_devops_task_execution

ar_sn_devops_task_execution

Task Summary

sn_devops_test_summary

ar_sn_devops_test_summary

Test Summary Relations

sn_devops_test_summary_relations
ar_sn_devops_test_summary_relations

Work Item

sn_devops_work_item

ar_sn_devops_work_item

The data archiving rules feature considers and honors parent rules before individual archive
rules are run. If you have an associated parent archive rule, the child rules are run only when
the parent rules are run. Similarly, when you modify individual rules, you must first disable
or disassociate the parent archive rule, make the configuration changes, and re-enable the
parent archive rule. Changes to the Auto archive (in months) DevOps property overrides any
configuration changes made to the duration of child archive rules. For example, you could
update the archive rule condition for any of the Active DevOps archive rules to a custom value,
say three months instead of the default 9 months. However, if you modify the Auto archive (in
months) DevOps property, all modifications made to the conditions of individual archive rules
are overwritten by the value in the Auto archive (in months) system property.

Note: The override function is binding for all scenarios except:
• When an archive rule does not belong to the DevOps scope.
• When an archive rule belongs to the DevOps scope but is inactive.

Base system destroy rules for DevOps data
Base-system destroy rules are also enabled and activated on all the archived DevOps tables. By
default, data is deleted from an archived table after 36 months or 1095 days have passed from
the time the data is stored in the archive table. For more information, see Create a destroy rule .

DevOps Retry Policy
Enable the DevOps Custom HTTP Retry Policy for most tool communication from ServiceNow
flows to automatically retry failed requests when a step encounters an intermittent issue, such as
a network failure or request rate limit.
You can navigate to the action in Flow Designer > Designer > Actions and in the REST step,
select Enable Retry Policy. For the DevOps Custom HTTP Retry Policy to take effect, override the
default policy for the alias and select the DevOps retry policy.
To customize the retry configuration, access the DevOps Custom HTTP Retry Policy settings in
IntegrationHub > Retry Policy.

Commits and task executions in DevOps
Run commits in DevOps are associated to a task execution.
For a commit to show up as a run commit, the commit record must exist in ServiceNow prior to
the job/pipeline run.
In the event that jobs are rerun on the same commit, these conditions apply.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1186


<!-- page 1187 -->
• Azure DevOps doesn’t show any run commits.
• GitLab displays only the last commit as a run commit.
• Jenkins displays only the last commit as a run commit on which it was run. The difference of all
commits isn’t shown.
Multiple commits in a single payload (commit arrays) have these limitations.

Tool

Max commits per payload

Azure DevOps
• If the DevOps property Enable whether Azure DevOps Run
Commits must be determined from the last successful
pipeline build is enabled, DevOps Change will pick up the
last commits, up to a maximum of 2000, created after the
last successful pipeline build from Azure DevOps as part of
Run Commits.
• If disabled, only the last 200 commits will be considered for
Run Commits.
GitHub
• If the DevOps property Enable whether GitHub Run
Commits must be determined from the last successful
workflow run is enabled, DevOps Change will pick up the
first 2000 commits after the last successful workflow run in
GitHub as part of Run Commits.
• If disabled, only the last commit will be picked up for Run
Commits.
GitLab

20

Associating multiple work items to a commit in DevOps
Multiple work items for a commit are supported in DevOps for Azure DevOps, Bitbucket, GitHub,
and GitLab.
Work item syntax in the commit message can be customized to reflect the processes in your
organization using the DevopsCommitMessageParserSNC script include in the System
Definition > Script Includes module.
In order to link the commits with work items, the work item native ID is extracted from the commit
message. In the base system, DevOps supports following commit message formats:
/**
* Supported patterns
* Colon pattern
* Sample supported formats:
*
1. STRY1,STRY2: Additional bug fixes
*
2. STRY1 , STRY2 : Additional bug fixes
*
3. STRY1, STRY2 : Additional bug fixes
* Hash pattern
* Sample supported formats:
*
1. Fixes for ✅STRY1, ✅STRY2, ✅STRY3
*
2. Fixes @$✅3 and ✅1 work item
*
3. Fixes for ✅STRY1 ✅STRY2 ✅STRY3
*
4. Fixes for AB✅123
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1187


<!-- page 1188 -->
* Jira pattern
* Sample supported formats:
*
1. JRA-123 fixed
*
2. JRA-123 JRA-234 JRA-345 resolved
*/
If you want to add support for additional message formats to meet the processes in your
organization, you can add a custom logic in the DevopsCommitMessageParser
script include by navigating to the System Definition > Script Includes
module. DevopsCommitMessageParser script include extends from
DevopsCommitMessageParserSNC. The DevopsCommitMessageParserSNC has
three regular expressions defined for identifying work item native IDs for supported message
formats in the base system. See the following example to include a new custom message format
that has work item native IDs in square brackets.
var DevopsCommitMessageParser = Class.create();
DevopsCommitMessageParser.prototype =
Object.extendsObject(DevopsCommitMessageParserSNC, {
initialize: function() {
DevopsCommitMessageParserSNC.prototype.initialize.call(this);
this._customPattern = /\[(.*?)\]/g; // The regex pattern
to match the words written inside square brackets.
// Example commits message to match this custom pattern
is : "[STRY1], [STRY2] Additional bug fixes"
},
getWorkitemsFromCommitMessage: function(message, branchName)
{
var workitems = [];
// We first call the getWorkitemsFromCommitMessage
method from the parent class to get the matching workitems ids
for OOB formats
var defaultWI =
DevopsCommitMessageParserSNC.prototype.getWorkitemsFromCommitMe
ssage.call(this, message, branchName);
if (!gs.nil(defaultWI) && defaultWI.length > 0) {
workitems = workitems.concat(defaultWI);
}
// Now call your custom method that returns an array of
workitem native IDs matching custom pattern
var customWI = this.getWIFromCustomPattern(message);
if (!gs.nil(customWI) && customWI.length > 0) {
workitems = workitems.concat(customWI);
}
// getUniqueWorkItems method from parent class removes
duplicates from the workitems array
workitems = this.getUniqueWorkItems(workitems);
// return the final list
return workitems;
},
getWIFromCustomPattern: function(message) {
var wi = [];
var l;
var match;
var matches = message.match(this._customPattern);
if (gs.nil(matches))
return wi;
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1188


<!-- page 1189 -->
for (var i = 0; i < matches.length; i++) {
l = matches[i].length;
match = matches[i].substring(1, l - 1); // trim the
brackets
wi.push(match);
}
return wi;
},
type: 'DevopsCommitMessageParser'
});

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1189


<!-- page 1190 -->
Linking work items to a commit using the Azure DevOps user interface is also supported in

DevOps.
You can view the list of associated work items in the DevOps Commit record, and in the Pipeline
UI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1190


