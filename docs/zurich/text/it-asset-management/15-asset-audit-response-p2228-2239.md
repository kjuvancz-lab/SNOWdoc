# Zurich IT Asset Management — Asset Audit Response / Requesting evidence / Fulfilling evidence requests

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2228–2239 of 2359

Sections: Asset Audit Response (p2228); Explore (p2229); Configure (p2233); Managing audit engagements (p2234); Requesting evidence (p2234); Fulfilling evidence requests (p2235); Reference (p2239)

---

<!-- page 2228 -->
placement process places a subset of CIs into corresponding CI tables that are used in the
recommendation generation process for Cloud Cost Management.

Note: All the supported CI class types are placed after the Cumulus Unsupported CI
Placement scheduled job runs daily. Some of the CI class types are placed immediately
after Billing Download job execution.
Supported CI class types
All supported CI class types

CI class types that are placed immediately after
job execution

cmdb_ci_instance_scale_set

cmdb_ci_vm_instance

cmdb_ci_vm_instance

cmdb_ci_cloud_database

cmdb_ci_cloud_database

cmdb_ci_database

cmdb_ci_kubernetes_cluster

cmdb_ci_storage_volume

cmdb_ci_cloud_load_balancer

cmdb_ci_storage_vol_snapshot

cmdb_ci_database
cmdb_ci_network
cmdb_ci_storage_vol_snapshot
cmdb_ci_cloud_storage_account
cmdb_ci_storage_volume

Asset Audit Response
®

The ServiceNow Asset Audit Response application, which is part of ITAM for Financial Services,
provides prescriptive workflows to manage and respond to your regulatory audits.
https://vimeo.com/1153031650/5625d582d3
Learn more about the Asset Audit Response application.

Get started

Explore

Configure

Engage

Learn the key features and
business value that the
Asset Audit Response
application offers.

Configure the Asset Audit
Response application to
meet your specific needs.

Create and manage
engagements for your
financial regulatory audits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2228


<!-- page 2229 -->
Request

Fulfill

Reference

Request evidence for
your financial regulatory
audit engagements.

Fulfill evidence requests
for your financial regulatory
audit engagements.

View additional information
about the Asset Audit
Response application.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 2230 -->
Users (continued)
User

Description

organization's compliance with laws, regulations, policies, or
standards.
Asset managers

Asset managers oversee the end-to-end life cycle of each
asset within an organization. They can fulfill evidence requests
for audit engagements.

Asset Audit Response workflow
The following section describes the steps that are involved in the Asset Audit Response

workflow.
1. An organization receives an audit letter from a financial regulatory agency, such as the Federal
Financial Institutions Examination Council (FFIEC).
2. In the Audit Workspace, the audit manager creates an engagement to scope, plan, and
conduct the requested audit.
3. The audit manager then creates a corresponding evidence request to obtain supporting
information and data that can help with completing the engagement.
4. The evidence request is assigned and submitted to the asset manager.
5. In the Asset Governance Workspace, the asset manager reviews and accepts the evidence
request.
6. The asset manager then initiates the evidence collection process by creating the relevant
evidence records and assigning them to the appropriate asset team members. Each evidence
record corresponds with a set of supporting information or data that the asset manager wants
to collect and submit for the evidence request.
7. The asset manager can also define remediation rules to identify data gaps that are discovered
during the evidence collection process.
8. Each asset team member begins collecting evidence, as defined in their assigned evidence
records.
9. While each asset team member is collecting evidence, the asset manager can track and
monitor the progress of the evidence collection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2230


<!-- page 2231 -->
10. After the evidence is collected, remediation tasks are automatically generated based on the
remediation rules that the asset manager defined. The asset manager can choose to resolve or
defer the remediation tasks.
11. The asset manager reviews and approves the collected evidence.
12. The asset manager submits the approved evidence to the audit manager for final review.
13. In the Audit Workspace, the audit manager reviews and accepts the submitted evidence.
14. The audit manager reports these findings to the financial regulatory agency to complete the
audit engagement.

Asset Audit Response benefits
Asset Audit Response benefits
Benefit

Feature

User

Create and manage financial regulatory audit
engagements and corresponding evidence
requests.

Audit Workspace

Audit managers

Track and manage responses to evidence
requests for your financial regulatory audits.

Asset Governance
Workspace

Asset managers

Fulfill evidence requests for your financial
regulatory audits.

Asset Response
Guided Experience

Asset managers

What to explore next
To learn more about configuring and using Asset Audit Response, see:
• Configuring Asset Audit Response
• Managing engagements for financial regulatory audits
• Requesting evidence for financial regulatory audit engagements
• Fulfilling evidence requests for financial regulatory audit engagements
• Asset Audit Response reference

Asset Governance Workspace
If you are an asset manager, you can use the Asset Governance Workspace to get a
comprehensive view of your assigned evidence requests and to track and manage your
responses to those requests.

Asset Governance Workspace landscape
The Asset Governance Workspace is a unified medium with a single view. This view enables you
to:
• Gain visibility into your assigned evidence requests.
• Fulfill, respond to, and track the progress of each request.
• Gain insight into important audit data, such as the due date and requirements of each request.
• Track and manage remediation tasks.
The Asset Governance Workspace contains the Asset governance overview.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2231


<!-- page 2232 -->
Asset governance overview
Enhance your Asset Audit Response experience by using the modernized and user-friendly
Asset governance overview. This simplified and intuitive overview helps you use the Asset Audit
Response application more effectively by reducing complexity.
You can use the Asset governance overview to perform the following tasks:
• Fulfill, respond to, and track the progress of your assigned evidence requests.
• Track and manage remediation tasks.

Select any widget to view more detailed information or to perform a relevant task.
Overview dashboard
Widget

Description

Asset
evidence
tasks

Number of asset evidence tasks, grouped by the task state. Each asset evidence
task corresponds with an evidence request that was assigned and submitted to
you through the Lite Audit Workspace.

Evidence

Number of evidence records that you have created for all evidence requests,
grouped by the record state.

Remediation Number of remediation tasks that are generated for all evidence requests,
tasks
grouped by the task state.

Audit Workspace
If you are an audit manager, you can use the Audit Workspace to track and manage your financial
regulatory audit engagements and corresponding evidence requests.

Audit Workspace landscape
The Audit Workspace is a unified medium with multiple views. These views enable you to create
and manage engagements and evidence requests for your financial regulatory audits. They
also help you gain insight into the overall audit timeline and status, monitor ongoing audit
activity progress, and scope entities. For more information on the Audit Workspace, see Audit
Workspace limited .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2232


<!-- page 2233 -->
Configuring Asset Audit Response
Configure the Asset Audit Response application so that you can track and manage your financial
regulatory audit engagements, evidence requests, and responses to those requests.

Configuration overview

Install Asset Audit Response
You can install the Asset Audit Response application (com.sn_audit_response) if you have the
®
admin role. The application installs related ServiceNow Store applications and plugins if they
are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Asset Audit Response
application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
• Ensure that at least one of the following applications is already installed on your ServiceNow
instance:
®

◦ The ServiceNow Software Asset Management application — For instructions on how to
install this application, see Request Software Asset Management.
®

◦ The ServiceNow Hardware Asset Management application — For instructions on how to
install this application, see Install Hardware Asset Management.
Role required: admin

About this task

The following items are installed with Asset Audit Response:
• Store applications
• Roles
• Tables
For more information, see Installed with Asset Audit Response.

Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your ServiceNow credentials.
3. In the search bar, enter Asset Audit Response and then select the search icon ( ).
4. Select the result called Asset Audit Response.
5. On the Asset Audit Response page, select View Requests.
The ServiceNow Request for App Installation - Asset Audit Response dialog box opens.
6. In the dialog box, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2233


<!-- page 2234 -->
ServiceNow Request for App Installation - Asset Audit Response dialog box
Field

Description

Instance Name of the instance on which you want to install the application. After you enter
Name
the instance name, select Validate Instance to verify that the instance exists.
Reason
for
request

Reason for requesting the application.

7. Select Request.

Result

If your request is approved, you will receive an email with detailed instructions on how to install
the application.

What to do next

Install the application according to the instructions in the email.

Managing engagements for financial regulatory audits
If you are an audit manager, you can create and manage engagements for your financial
regulatory audits in the Audit Workspace.

Overview of managing engagements for financial regulatory audits
Create and manage engagements for your financial regulatory audits by performing the following
tasks:
• Create an audit engagement in Audit Workspace
Create an engagement to manage audit information and to collect entities, controls, and
control tests that are relevant to the audit.
• Create an activity in the Audit Workspace
Create an activity that explores and provides documented evidence of whether the associated
control is operating correctly or not.

Requesting evidence for financial regulatory audit engagements
If you are an audit manager, you can request evidence for your financial regulatory audit
engagements in the Audit Workspace.

Overview of requesting evidence for financial regulatory audit engagements
Request evidence for your financial regulatory audit engagements by performing the following
task:
Request evidence during audits using Audit Workspace
Request evidence at any stage of a financial regulatory audit by using the Audit Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2234


<!-- page 2235 -->
Fulfilling evidence requests for financial regulatory audit
engagements
If you are an asset manager, you can fulfill evidence requests for financial regulatory audit
engagements in the Asset Governance Workspace.

Overview of fulfilling evidence requests
Fulfill evidence requests for financial regulatory audit engagements by performing the following
task:
Fulfill evidence requests through the Asset Response Guided Experience
Use the Asset Response Guided Experience to fulfill and respond to evidence requests for your
financial regulatory audit engagements.

Fulfill evidence requests through the Asset Response Guided Experience
Use the Asset Response Guided Experience to fulfill and respond to evidence requests for
financial regulatory audit engagements.

Before you begin

Role required: sn_audit_response.asset_governance

About this task

The Asset Response Guided Experience takes you through the entire process of fulfilling an
evidence request, from accepting the request to submitting a final response to the request. Each
set of tasks in this process is represented by a step in the guided experience. You must complete
all tasks within a step before you can move on to the next step. You can also save your progress
at any point in the process and return to the guided experience at a later time.

Procedure
1. Navigate to Workspaces > Asset Governance Workspace.
2. From the Asset evidence tasks related list in the Asset governance overview, select the task
that is associated with the evidence request that you want to fulfill.
The Asset Response Guided Experience opens.
3. In the Audit scope step of the guided experience, verify the details of the evidence request
and then select Accept.

Note: At any point in the Audit scope step, you can post comments and view your
activity stream in the contextual side panel.
4. Create evidence records for the supporting information or data that you want to collect and
submit for the evidence request.
a. In the side panel of the guided experience, select Asset Evidence.
b. From the Asset Evidence related list, select New.
c. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2235


<!-- page 2236 -->
Create New Asset Evidence form
Field

Description

Status

Status of the evidence collection.

Evidence
type

Type of evidence that you want to collect and submit. Select one of the
following options:
▪ Attachment: Document that contains supporting information or data.

Important: If you select this option, you must use the Attachment
option in the contextual side panel of the Create New Asset Evidence
form to attach the document.
▪ Data Visualization: Internal report that contains supporting information or
data.
▪ Report: Internal report that contains supporting information or data.
▪ URL: URL for the website or shared online folder that contains supporting
information or data.
Assignment
group

User group that is assigned to collect the evidence.

Assigned to

User who is assigned to collect the evidence.

Short
description

Brief description of the evidence that you want to collect and submit.

Description

Detailed description of the evidence that you want to collect and submit.

Report

Report that contains the supporting information or data that you want to
collect and submit. If you use this option, the user who is assigned to this
evidence record must run the selected report to collect this information or
data.

Note: This field appears only if you set the Evidence type field to
Report.

Data
Report that contains the supporting information or data that you want to
Visualization collect and submit. If you use this option, the user who is assigned to this
evidence record must run the selected report to collect this information or
data.

Note: This field appears only if you set the Evidence type field to
Data Visualization.
URL

URL of the website or shared online folder that contains the supporting
information or data that you want to collect and submit. The assigned user
must collect this information or data from the website or shared online folder
that you specify.

Note: This field appears only if you set the Evidence type field to
URL.

d. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2236


<!-- page 2237 -->
The evidence record is added to the Asset Evidence related list.
e. Repeat steps b to d for each evidence record that you want to create.
The assigned user can begin collecting the required evidence. After the evidence is collected,
the user can upload it by using the Attachment option in the contextual side panel of the
evidence record. After the evidence is successfully uploaded, the user can update the Status
field to Complete.
5. Optional: Create remediation rules to identify any data gaps that are discovered during the
evidence collection process.
a. In the side panel of the guided experience, select Evidence Remediation Rules.
b. From the Evidence Remediation Rules related list, select New.
c. On the form, fill in the fields.
Create New Evidence Remediation Rule form
Field

Description

Asset
evidence

Evidence record that the remediation rule applies to.

Resolution

Action that must be taken to resolve and close any remediation tasks that are
automatically generated from the remediation rule.

Assignment User group that is assigned to manage the remediation tasks that are
group
automatically generated from the remediation rule.
Assigned to User who is assigned to manage the remediation tasks that are automatically
generated from the remediation rule.
Short
Brief description of the remediation rule.
description
Description Detailed description of the remediation rule.
Evidence
scope

Table that the remediation rule applies to. For example, if you set this field to
Computer, the remediation rule applies only to the computer records that are
defined in the Scope filter field.

Scope filter Conditions that enable you to filter the evidence scope that the remediation
rule applies to. Select Set conditions to specify the field, operator, and value
of each condition that you want to set.
Scope
condition

Conditions for creating remediation tasks based on the evidence scope and
scope filter of the remediation rule. Select Set conditions to specify the field,
operator, and value of each condition that you want to set.

6. On the header of the Asset Response Guided Experience, select Next.
7. In the Readiness step of the guided experience, monitor the status of your evidence collection
by using the following widgets and related lists:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2237


<!-- page 2238 -->
Readiness widgets and related lists
Widget or
related list

Description

Task
analytics by
priority

Total number of remediation tasks that were automatically generated from your
remediation rules, grouped by the task priority.

Total assets
evaluated

Total amount of evidence that has been evaluated through your remediation
rules, grouped by the compliance status.

Evidences

List of evidence records that you have created for the evidence request. Select
a record to view additional details.

Remediation List of remediation tasks that were automatically generated from your
tasks
remediation rules. Select a task to view additional details so that you can
determine if you want to defer or take action on that task.
8. On the header of the Asset Response Guided Experience, select Next.
9. In the Remediation step of the guided experience, review your remediation tasks by using the
following widgets and related lists:
Remediation widgets and related lists
Widget or
related list

Description

Task
analytics by
priority

Total number of remediation tasks that were automatically generated from your
remediation rules, grouped by the task priority.

Task
burndown

Burndown chart that enables you track the progress of your outstanding
remediation tasks against the estimated timeline of completion.

Remediation List of remediation tasks that were automatically generated from your
tasks
remediation rules. Select a task to view additional details so that you can
determine if you want to defer or take action on that task.
10. On the header of the Asset Response Guided Experience, select Next.
11. In the Review step of the guided experience, review and approve all evidence that has been
collected for the evidence request.
Select each record in the Evidence related list to review the evidence that has been collected
and uploaded by the assigned user. You can also verify other important details, such as the
status of the evidence collection.

Important: All evidence collection must be completed before you approve the
evidence.
You can also review your remediation tasks by using the Task analytics by priority and
Remediation task by status widgets.
12. After all evidence is successfully collected and approved, select Submit for review.
The collected evidence is submitted to the audit manager for final review. Based on the results
of the review, the audit manager can choose to accept, cancel, request a revision, or request
additional information for the associated evidence request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2238


<!-- page 2239 -->
Asset Audit Response reference
Reference topics provide additional information about the Asset Audit Response application.

Installed with Asset Audit Response
Various components are installed on activation of the Asset Audit Response application.

Store applications installed
Store application

Description

Asset Audit Response

Provides capabilities to track and manage financial regulatory
audit engagements, evidence requests, and the responses to
those requests.

(com.sn_audit_response)
GRC: Advanced Core
(com.sn_grc_advanced)
GRC: Policy and
Compliance Management
(com.sn_compliance)

Provides common functionality to support forward-looking use
cases across GRC applications such as Risk, Policy & Compliance,
and Audit. Includes capabilities to manage issue triage workflows
and evidence collection.
Provides capabilities to create and manage policies, standards,
and internal control procedures cross-mapped to external
regulations. Also provides structured workflows for identifying,
assessing, and monitoring control activities.

GRC: Audit Management
Workspace

Provides a single-pane view where audit supervisors and auditors
can view the overall audit timeline and status, track budget and
resources for engagements, track high-priority observations
(com.sn_audit_workspace) and issues, and monitor ongoing control testing and audit task
progress. Auditors can also test the effectiveness of controls,
request evidence, create observations, and complete other audit
activities.
IRM Feature Role
(com.sn_grc_ftr_role)

Provides access controls to regulate the Governance, Risk, and
Compliance (GRC) data and capabilities that users can view or
use.

GRC: Financial Services
Controls Accelerator

Provides cybersecurity and technology controls for the financial
services industry.

(com.sn_finserv_cntrl)

Roles installed
Role

Description

Asset governance

This role can
fulfill and
respond to
evidence
requests.

[sn_audit_response.asset_governance]

Contains roles

• sn_grc_advanced.evidence_responder
• sam_user (available only if you
have installed the Software Asset
Management application on your
ServiceNow instance)
• sn_hamp.ham_user (available only
if you have installed the Hardware

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2239


