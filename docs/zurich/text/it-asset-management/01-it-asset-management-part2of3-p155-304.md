# Zurich IT Asset Management — IT Asset Management / Software Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 155–304 of 2359 | Part 2 of 3

Sections: IT Asset Management (p5); Software Asset Management (p10); Explore (p11); Configure (p194); Using Software Asset Workspace (p200); Using Software Asset Management classic (p275)

---

<!-- page 155 -->
cost breakdown for each company group along with a detailed breakdown of the costs for each
license metric, edition, and version of software models.

Accurately reporting your software true-up cost
Accurately report your software true-up costs to avoid compliance issues.
Specify the license cost or the license plus maintenance cost in the software model to accurately
report the true-up costs during reconciliation. If you don’t specify a license cost or a license plus
maintenance cost, the average software entitlement cost is used for true-up cost calculations.

Note: For the Employee license metric in the Oracle publisher pack, the true-up cost is
shown for a subscription period of one year.
If you use a license metric to create a software entitlement for a software model, an override
license cost record is created if one already doesn't exist for the same license metric. The license
cost record is added in the Override License Cost related list. The license cost and license plus
maintenance cost is set to zero. If a maintenance license exists, you can override the license cost
or the license plus maintenance cost. For details, see Create or update an override license cost
record.
Software license compliance position
The Software Asset Management License Position report shows compliance details for each
software model in a single list.
You can view and export the software model compliance list for your environment to understand
your license position.
Two license metric results are generated if a software model has two entitlements, one with a
perpetual SA license type and the other with a subscription license type. One license metric
result where active maintenance is true and the other where the active maintenance is false. In
such a scenario, two license position reports are generated, one with active maintenance true
and the other one with active maintenance false.
A single license position report is generated if there are any unlicensed installations. A single
license position report is also generated if there are any unlicensed subscriptions. If both are
present, two license position reports are generated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


<!-- page 156 -->
License Compliance Position report

License Position Report list
Field

Description

Software publisher

Software publisher of the software model.

Software product

Software product of the software model.

Edition

Edition of the software product.

Version

Version of the software product.

Software model status

Compliance status of the software model.
• Compliant (indicated with a green dot)
• Not Compliant (indicated with a red dot)

License metric

License metric of the software model.

Total spend

Total cost of rights owned.

Rights owned

Sum of all active rights.

Rights used

Sum of rights allocated in use and not
allocated in use.

Rights needed

Rights needed to cover the number of
unlicensed installs.

Rights available

Rights owned less rights used.

Unlicensed installs

Number of unlicensed software installations
that are not covered by any entitlements.

True-up cost

Estimated cost of remediating non-compliance
based on the least number of rights needed.

Potential savings

Estimated savings from reclaiming unused
installs.

Over-licensed amount

Total cost of unused rights.

Software model

Software model name.

The License Position Report form also contains Group and Subgroup fields that specify the
group and subgroup on which reconciliation was run.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
Determining license compliance through Virtualization Adapter
Software Asset Management Virtualization Adapter determines the license compliance
of several software products deployed on virtualization technologies by applying license
compliance rules. This feature is activated and installed with the base system in Software Asset
Management.
The following are the software products for which Software Asset Management Virtualization
Adapter determines the license compliance:
• Microsoft SQL Server
• Windows Server
• Red Hat Enterprise Linux Server (RHEL)
• Oracle Database Server, Options, and WebLogic Server
Virtualization is a process of simulating hardware functionality and creating a virtual environment
in which you can run more than one virtual machine on a single server in a clustered
environment. For more information on Oracle Database and WebLogic Server licensing support
on VMware vSphere and Nutanix virtualization technology, see Oracle Database and WebLogic
Server licensing in soft-partitioned environments.
The virtualization technologies supported by Software Asset Management are:
• VMware
• Microsoft Hyper-V
• Red Hat Virtualization
• Nutanix
ITOM Discovery discovers virtualization technologies based on their relationship architecture.
Software Asset Management depends on the discovered relationships to determine the license
compliance of the software installations.
Software Asset Management Virtualization Adapter standardizes the relationship architecture
through database views and metadata views, which are used by Software Asset Management to
determine license compliance.
Software Asset Management considers the architecture of the virtualization technology while
applying the licensing rules. For example, Microsoft Hyper-V architecture permits Windows
Server Standard edition to use one running instance of the server software in the physical OSE
on the licensed server in addition to two virtual OSEs if the physical OSE is used only to host
and manage the virtual OSEs. Software Asset Management Virtualization Adapter automatically
applies this rule set.
Explanation of license rights post reconciliation
Get visibility into how your rights are calculated and consumed post the reconciliation process.

Overview of explanation of rights
Understand how the Software Asset Management application calculates the number of licenses
for your software assets.
A detailed explanation of license rights is provided for the following metric groups:
• Microsoft
• IBM
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
• Red Hat
• VMware
• Oracle
• SAP
• Citrix
• Common
For details on viewing the explanation of license rights, see View calculations for your licenses in
workspace

Use case for Per Device license metric
The following is an example of how an explanation of license rights for a Per Device license
metric appears on the Licenses Required by page:
• The MacBook Air 15" device has installations of Microsoft Office 2016.
• License consumption explanation: The device D9WW4HYV - MacBook Pro 15" has installs of
Microsoft Office 2016. The calculation shows that rounding off the value of licensable installs
(1) divided by maximum installs per right (1) is one licensable install. Since this value can be 0
when the maximum installs per right is infinite, we take the maximum of either the licensable
installs calculated (1) or 1, which is 1 right. Based on per device licensing, D9WW4HYV MacBook Pro 15" requires 1 right.

Software reclamation rules
Reclamation rules aggregate usage over time and specify a minimum number of hours or the
latest date that a software unit must be used before the software is flagged for reclamation.

Overview of software reclamation rules
You can avoid purchasing more software rights for products by knowing which rights have
already been allocated but are being used infrequently, haven't been used recently enough, or
aren't being used at all. Reclamation rules reclaim those software rights so that these rights can
be freed up and allocated elsewhere. Reclamation rules are configured to specify a period of
time, amount of time, or most recent date that a software unit must be used before the software is
flagged for reclamation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
When a reclamation rule is created for a suite parent, the usage for the suite parent as well as
that of the suite components are automatically pulled into the rule.
When you create a reclamation rule, you can add software products associated to the
reclamation rule. When you add a product, which is a suite parent, all the suite components
automatically get added and appear in the Software Products related list in the Reclamation rule
form. Similarly, the product processes for all the added software suite products and component
products also get added and appear in the Product Processes related list.

Note: The products in the Software Products related list are updated based on the
content updates in the Software Asset Management Content Service. For example, if a suite
component has been added or removed from a suite parent, the change is reflected in the
Software Products related list.
After a suite parent is added to a reclamation rule, you can't edit or delete any suite components,
but you can edit or delete the suite parent. If you delete the suite parent, the suite components
are also automatically deleted along with the product processes. If you edit a suite parent, then
the changes of the edit are reflected for the suite components and the associated product
processes. For example, if you change the suite parent from Microsoft Office 365 to Microsoft
Word, all the suite components and product processes for Microsoft Office 365 get deleted.
Microsoft Word becomes the new parent and all suite components and product processes for
Microsoft Word are automatically added.

Filter conditions
You can add a filter condition on a suite parent record. The filter condition that you specify for
a suite parent is automatically applied to all the suite components of the parent and the filter
condition field on the suite component record is no longer editable. You can, however, edit the
filter condition on the suite parent record. You can open a suite parent record from the Software
Products related list and specify your filter condition in the record.
You can also specify a filter condition at the reclamation rule level. The filter condition that you
specify applies to all the products that belong to the reclamation rule. The filter condition can
only be applied when the Applies to field in the Reclamation rule form has the value Installed
Software or Subscription Software. For details, see Add a software reclamation rule.

Reclamation rules for SaaS and SSO applications
When you create a direct integration profile for a SaaS application or connect an SSO
application, a reclamation rule is automatically created for the software product. It's important
that you review the reclamation rule to verify that it meets your specifications. For more
information, see Review a software reclamation rule.
For more information about the reclamation rules for each application, see Reclamation rules.

Upgrading to Zurich
If you’re upgrading to Zurich from any past release, your existing reclamation rules do not
automatically take bulk reclamation into account. You must manually set up your existing
reclamation rules for bulk reclamation to take effect. For example, in an existing reclamation rule,
you have Microsoft Office 365 listed in the Software Installations related list. When you upgrade
to Zurich, you must delete Microsoft Office 365 from the Software Product related list and re-add
it to the same reclamation rule to trigger the automatic addition of suite components and their
product processes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
Microsoft SCCM software usage
Activate the Microsoft SCCM software usage plugin to integrate your software usage data with
the ServiceNow AI Platform.
One of the following Microsoft SCCM Software Usage plugins must be installed to import
software usage data from Microsoft SCCM to Software Asset Management.
• Integration — Microsoft SCCM 2012 v2 Software Usage (com.snc.samp_usage_sccm) plugin
• Integration — Microsoft SCCM 2016 Software Usage (com.snc.samp.usage_sccm_2016) plugin
The Integration — Microsoft SCCM 2016 plugin is compatible with SCCM version 1606, 1906,
1910, and 2002.

Important: Both Microsoft SCCM plugins will be deprecated in the Tokyo release. If
you are integrating with SCCM for the first time, request and install the Service Graph
connector for Microsoft SCCM application from theServiceNow Store
instead. If you have
already activated one of the Microsoft SCCM plugins on your ServiceNow instance, use
the Migration Readiness Tool for Service Graph Connector for SCCM store application to
prepare your instance for migration from the Microsoft SCCM plugin to the Service Graph
connector. See Service Graph connector for Microsoft SCCM
for more information on the
Service Graph connector.
The SCCM integration plugin installs several components.
After the SCCM usage plugin is activated and configured, a scheduled import runs monthly
to bring SCCM software usage data into your instance . The usage data is then mapped to
Software Usage table. During the scheduled job, a SQL query is executed.
The scheduled import runs once a month, but you can run the import on demand by clearing the
Conditional option on the Scheduled Data Import form. However, the data is always pulled from
the previous month, so there won't be a change in the data until the following scheduled import.

Note: The SCCM software usage data source can't be executed directly because the
SQL statement doesn't actually pull in the data, so the records aren't retrieved. A valid SQL
statement on the data source is updated dynamically though a scheduled import. So, if you
need to pull the data into your ServiceNow instance, use the scheduled import.
There are two types of data (total usage and last used) that you can extract from SCCM and
import into your instance. Last used data will only show the last time the software was used
during the previous month.
Total usage data will show down to the second when the software was used in the previous
month, which can be a large amount of data imported into your instance. A usage record
tracks the sum of usage on a monthly basis so that you can assess the software usage in your
environment.
Depending on what you've specified in the reclamation rule for the product, one of the following
scheduled imports will run to pull in the data.
• SAMP Usage Import
• SAMP Usage 2016 Import
• SCCM 2012 v2 Software Last Used
• SCCM 2016 Software Last Used

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
Note: Only usage data for products associated with a reclamation rule is imported.

The Reclamation type field on the Reclamation Rule form must match the scheduled
import that you are running, otherwise the data is not pulled into your instance. For more
information, see Create a reclamation rule to import Microsoft SCCM usage data.
You can also pull in user data from SCCM. User data is compared to the user_name field of the
sys_user record. If the names don't match, the user data isn't imported.

Note: Configuration item (CI), user, product, and publisher values are used to identify a
matching software installation.
Duplicate usage information cannot be created for the same CI, user, product, or publisher
values in the same month and year.
You can also import usage information using ServiceNow import sets

feature.

Software installation optimization and removal
You can optimize your environment by reclaiming unused software as well as removing
unauthorized software.
If a user is not using software installed, or infrequently, that software can be a candidate for
removal. Removal means uninstalling and reallocating the software to an individual who will use it
more often. Removal candidates are used to reclaim software installations.

Overview of software reclamation
Software reclamation is integrated with Workflow and Client Software Distribution
(CSD) to
automate the process of uninstalling software from devices and reclaiming those software rights.
During the workflow, the state of the removal candidate changes based on the progression within
the workflow.

Note: If you change a software asset's state to Retired or Missing, the installation
associated to the software asset gets removed and a removal candidate won't be created.
Starting from the Zurich release, the reclamation workflow can also be completed using the
Software Reclamation Flow in the Flow Designer application with additional error handling
features.
Reclamation can be performed for suite based products and for individual products that are not
part of a suite.
For suite based products, bulk reclamation is performed at the user level. One removal candidate
is created for reclaiming the suite. You can add the suite components to the same removal
candidate via the Software Installation related list on the removal candidate form. The potential
savings displayed is for the entire suite. Suite components cannot be reclaimed individually. In
the Software Asset Workspace, you can add the suite components to the removal candidate
one at a time. In the Software Asset Management classic framework, you can add the suite
components all at one go.
For individual products, you can specify the software installation that you wish to reclaim.
There are multiple ways that removal candidates get created. A monthly scheduled job, SAM –
Identify new reclamation candidates, uses the reclamation rules and software
usage to create removal candidates. Additionally, removal candidates are also created as part
of using remediation options for unlicensed and unallocated software installations, and for
restricted software. When a software model is marked as restricted, removal candidates are
created for any software associated to that software model. The reclamation flow and process is
the same in all these use cases.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
The SAM – Identify new reclamation candidates scheduled job creates removal
candidates and these removal candidates automatically have the bulk reclamation flag checked.
The removal candidates created are based on the results from the reconciliation process. Verify
that at least one reconciliation process has run with successful results before running the SAM
– Identify new reclamation candidates scheduled job. This ensures that the SAM
– Identify new reclamation candidates scheduled job accurately creates removal
candidates to identify the right potential savings.
In each list of Removal Candidates, you can select individual records for reclamation (Reclaim)
or Reclaim All to reclaim all qualifying removal candidates. Qualifying candidates are those
candidates in the Ready state. Once you select Reclaim or Reclaim All, the workflow to remove
the software is initiated.

Upgrading to Zurich
When you upgrade to Zurich and if you have an existing removal candidate in theAwaiting
revocation state, nothing will be done with that removal candidate. If that removal candidate was
part of a suite, then removal candidates are created for each of the other software installations
in that suite. However, if the state of the existing removal candidates is anything other than
Awaiting revocation then those removal candidates are canceled and a single removal
candidate gets created for all the software installations that are part of that suite. In the Activity
section on the removal candidate form, a reason is mentioned for the closure of each removal
candidate.

Removal candidate grouping
Removal candidates are grouped according to justification.
• Low Usage
• Restricted Software
• All other justifications ( such as Unlicensed, Unallocated)
Removal candidate state
State

Description

Attention Required

A removal candidate requires attention if the
User field is empty on an automatic removal
candidate that has the Notify User check box
selected.
Once the User field is populated, the state
automatically changes to Ready.

Ready

When a removal candidate is in the Ready
state, you can select Reclaim to advance the
workflow.

Awaiting User

If the Notify User check box was selected,
the user was sent a notification of the removal
candidate to approve or deny.

Awaiting Approval

If the Notify User check box was selected,
the user can approve or deny the removal
candidate. If the user still wants to keep
the software installation, it becomes the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Removal candidate state (continued)
State

Description

responsibility of the manager to approve or
decline the removal.
Awaiting Revocation

The final step in the workflow. You can select
Close Complete to reclaim software rights in
the removal candidate manually.
Otherwise, a weekly scheduled job (named
SAM — Updating Existing Reclamation
Candidates) automatically updates removal
candidates in the Awaiting Revocation state
and with the software install field empty to
Closed Complete state.
If the removal candidate is in any other
state AND the software install is empty,
the Reclamation workflow is canceled and
updated to Closed Skipped state.
The state for a removal candidate that has
restricted software is automatically set to
Awaiting Revocation and the justification is
set to Restricted Software.

Closed Complete

Software rights have been reclaimed.

Closed Skipped

Software rights not reclaimed by the removal
candidate.

Closed Canceled

Software rights not reclaimed by the removal
candidate as user activity is detected.

Restricted software justification and unlicensed justification
Workflows for removal candidates with a restricted software justification or an unlicensed
justification get executed automatically. The user is notified of unauthorized software use and is
not prompted for approval.
• Restricted Software:
Unauthorized Software Use
[Publisher] [Product] installed on the device, [device name], is
not authorized to be used on company property. Do not install
this software again.
• Unlicensed:
Unauthorized Software Use
You are not licensed to use [Publisher] [Product] installed
on the device, [device name]. Use the appropriate process to
request a license for the software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
The workflow state for a Restricted software justification and an unlicensed justification is then
set to Awaiting Revocation and, once discovery identifies that the installation no longer exists,
the state is changed to Closed Complete.

Unallocated justification and Low Usage justification
Workflows for removal candidates with an unallocated justification or a low usage justification
prompt the user for approval.
• Unallocated:
[Publisher] [Product] installed on the device, [device name],
has been flagged for removal because an allocation to use the
software does not exist. Do you still require access to this
software?
• Low Usage:
[Publisher] [Product] has been flagged for reclamation. Do you
still need this software installed on [device name]?

Justification descriptions
Removal candidate descriptions get updated based on the justification.
• Unallocated:
[Publisher] [Product] installed on the device, [device name],
has been flagged for removal because an allocation to use the
software does not exist. If you do not require this software,
Reject this task. If you still require access to this software,
Approve this task and your request for continued use of the
software will be routed for software manager approval.
• Unlicensed:
[Publisher] [Product] installed on the device, [device name],
has been flagged for removal because the licenses to use it are
not owned. Please request access to this software through the
appropriate process.
• Restricted Software:
[Publisher] [Product] installed on the device, [device name], is
not authorized for use on company owned property.
• Low Usage:
[Publisher] [Product] installed on the device, [device name],
has been flagged for reclamation due to low usage. If you do not
require this software, Reject this task. If you still require
access to this software, Approve this task and your request
for continued use of the software will be routed for manager
approval.
When the Reclaim action is clicked, if the Notify User field is selected and the days before
reclamation is greater than 0, then the state is set to Awaiting User. Otherwise the state is set to
Awaiting Reclamation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
When the state changes to Awaiting User, a notification is sent to the user.
Related topics
View or create software usage
Reclaim software

Allocation management on Software Asset Management
Software Asset Management (SAM) offers optimal license assignment confirming that licensing
entities are allocated according to the available entitlements.
For example, Software Asset Management determines the most cost-effective license
assignment for a specific host or virtual machine based on the available Microsoft SQL
Server Standard or Enterprise entitlements. Software Asset Management streamlines the
licensing process and helps you optimize costs by selecting the most efficient licensing
options. Allocation management saves your time, reduces the risk of compliance issues, and
unnecessary expenses.
License allocations enable you to prioritize license assignments for specific hosts, virtual
machines, users, devices, and more, according to the licensing strategy of your organization. You
can override the default license assignment so that your unique needs are met.
There are several ways to manage allocations and here are a few scenarios to help you use
allocation management effectively.
• Using allocation to license entities with other licenses
License a device or user with a different license than the one assigned by Software Asset
Management for a flexible license management process.
• Locking license assignment by creating allocations
Lock a license assignment for the same license consumption to occur every time the
reconciliation runs to maintain consistency and avoid unexpected changes.
• Removing unnecessary allocations
Remove unnecessary allocations when they’re no longer needed for an efficient license
management process.
• Copying allocations
SAM Managers can copy allocations from one entitlement to another which helps to apply
the same allocation strategy across multiple entitlements, saving time and maintaining
consistency.
• Overriding license assignment
Override Software Asset Management license assignment and allocate the license to the Host
or the Virtual Machine (VM) in a Hypervisor Cluster.

Example: Licensing entities with other licenses
Software Asset Management automatically licenses entities such as a virtual machine with
Microsoft SQL Server Microsoft Standard license based on cost effectiveness. But the SAM
Manager wants to change the license assignment to SQL Server Enterprise according to the
licensing strategy of the organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


<!-- page 166 -->
SAM Manager analyzes the license consumption of a particular entity, Cluster A- VM 13, and
verifies that it has been consumed by SQL Server Standard and the software installed on this
virtual machine is also SQL server Standard.

But according to the licensing strategy of the organization, SAM Manager wants to assign the
SQL Server Enterprise license to this entity. In this scenario, the SAM Manager or SAM Admin
can add an allocation to the SQL Server Enterprise entitlement, which would allocate SQL Server
Enterprise licenses to the entity.

Note: You don't have to remember the quantity of licenses to allocate. Software Asset
Management automatically determines the licenses required for the entity, so the SAM
Manager or SAM Admin can allocate a license.
After reconciliation, Cluster A- VM 13 has consumed licenses from SQL Server
Enterprise. Four rights have been consumed wherein only 1 was allocated. You can
also verify that the Allocated in use field to confirm that the added allocations are

consumed.
For more information about the allocation fields, see Software model results license metric
results fields.
In the Cluster A- VM 13 Software installation list, the installed software
is SQL Server Standard. However, the Software model result indicates

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
that the entity is being consumed by the SQL Server Enterprise software

model.
The use case of prioritizing certain entities to consume a specific license over others can be
extended to many other scenarios. For example, software suites can be prioritized to consume
licenses first, or licensing a particular device with a different license metric over others.

Example: Locking license assignments
Lets say, the SAM Manager is happy with the assignment of license consumption performed
by the Software Asset Management application. You can view License Metric Results and
Remediation Options for a software model result from a Product Result record. On the License
Metric Results page, the Not allocated in use column shows the number of rights that are used to
license installations, but not allocated. When this value is greater than zero, remediation options
Create Allocations and Remove Unallocated are displayed on the Remediation Options page.
For more information, see View software model results.

The Create Allocations remediation option enables the SAM Manager to lock assignments for
all entities (device/user) or individual entity, so that during future reconciliation runs, the license
consumption occurs exactly as previously performed.

The allocation will be added to the entitlement immediately after performing the remediation
action. For more information about remediation options, see View software model results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
Example: Overriding license assignment to a host or VM
Lets say, there’s a SQL Server Enterprise license, and Software Asset Management has
optimized licensing by assigning it to the virtual layer. If your license strategy involves assigning
licenses to the host layer, you can adjust this approach.
To override the license assignment:
1. In the Software Asset Workspace, navigate to License Operations > Licensing.
2. Select Software entitlements.
3. Select the software entitlements for SQL Server. For example,
select the Microsoft SQL Server 2017 Enterprise software

entitlement.
4. Select the Device Allocations tab and then select New.
5. Add the Device Allocations details. For more information, see Create device allocation. When
allocating license to the Host or VM, based on the value provided in the Quantity field, the
Software Asset Management application determines the core count based on the following
criteria:
◦ If an exact number of cores isn’t provided, the Software Asset Management application
automatically uses the actual core count of a machine for licensing purposes.
◦ If fewer cores than the actual machine is provided, the Software Asset Management
application counts the exact number of cores present on the machine for licensing
purposes.
◦ If more cores than the actual machine is provided, the Software Asset Management
application uses the number you entered. However, the surplus is marked as Allocated not in
use for licensing.
Lets allocate one license to the Microsoft SQL Server 2017 Enterprise
Software entitlement, and save the entitlement, then run software
reconciliation. For more information, see Run software reconciliation in the

workspace.
Cluster 103 has 3 hosts each with 16 cores. In the previous example, the license
allocation was adjusted to 1 for one entitlement. The Software Asset Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
application assigns the host the correct licenses based on the number of

cores.
The Software Asset Management Manager can check the license usage by the cluster. To check
the license usage, navigate to License usage > License Metrics Result > Licenses Required By.
Select the Is Virtual column value as false to verify that it’s licensed at the Host layer.

You can customize the Licenses Required By page by adding columns such as Allocated in use,
Not allocated in use, and Allocation. The Allocated in use column displays the count of rights
that are allocated and are used to license installations. For more information about license usage
by the cluster, see View calculations for your licenses in workspace.

When allocating software licenses, follow the licensing rules supported by the publisher.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
Important:
• Allocation isn’t required for the subscription products.
• According to Microsoft licensing rules, host layer licensing isn’t supported for SQL Server
Standard. When you allocate the license at host level, the allocated license number is
shown in the Allocated not in use column.
• Avoid allocating licenses to a cluster directly. Instead, allocate them to the hosts or VMs
within the cluster. When you allocate a license to a cluster, the allocated license number
is shown in the Allocated not in use column.
• When the Allocated not in use column value is greater than zero, the Remove
Allocations remediation option is automatically created for each unique license metric in
the software model.
Related topics
Create device allocation
Software model results license metric results fields

License usage analysis
Gain visibility into the end-to-end journey from installing software to consuming licenses.

Overview of license usage analysis
Enable SAM managers to map the entire process from software installation to license utilization.
This process includes identifying licenses used for each installation and differentiating between
installations that have been used and those installations that haven't.
To gain further insights into your installations, use node maps for a detailed numerical
breakdown. For each product, explore the installation layer to see the product versions and
editions, examine the consumption status layer to determine if the installations are licensed,
unlicensed, ignored, or require action. Finally, review the licensing layer that displays the
software model results.
The nodes of a node map are stored in the Install Consumption Nodes
[samp_install_consumption_nodes] table and the nodes are generated during reconciliation.
You can view the node map in the License operations view in the Products with installs list. For
details on node maps, see View license usage for your installations.

Benefits to the SAM manager
• Verify that the total number of installations for a product aligns with the sum of used and not
used installations.
• Determine the licensing status of the installations: licensed, unlicensed, requiring action, and
ignored.
• Determine all issues related to installations in one view.
• Determine all key licensing concepts applied such as downgrades and inference.
• Track usage statistics by viewing the consumption percentage and installation status count.

Considerations for node maps
Here are some special considerations to keep in mind for node maps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


<!-- page 171 -->
• Grouping: Reconciliation can be run with a group and a subgroup. The node map displays
each group and subgroup as nodes.
• Domain separation: Reconciliation can be executed for a specific domain level, displaying
domain-separated information based on the user's domain. If a product spans multiple
domains, a separate node map gets generated for each domain. Consequently, you can view
each node map within its respective domain, resulting in a single product having multiple node
maps in the same reconciliation run.
Related topics
View license usage for your installations

Employee off-boarding process for asset reclamation
Coordinate an employee's off-boarding process via a workflow that lets you request, assess, and
remove assets.
The Software Asset Management off-boarding process entails the return of all software licenses
assigned to the employee. Additionally, all software installations are removed from the devices,
all user allocations are removed, and access to SSO, SAP, and Citrix products is revoked.
When an employee leaves an organization or moves to a different role, retrieving the assets
assigned to the employee necessitates extensive coordination between the Human Resources
department and the asset manager. You can create an off-boarding catalog request, which
initiates a prescriptive workflow to efficiently retrieve assets and restock them in the inventory,
reassign them, send them for repair, or dispose as required.

Note: For information on the Hardware Asset Management asset reclamation process,
see Asset reclamation.
You can create an asset reclamation request via the Service Catalog. Once the request is
created, reclamation line items are created that comprise of a series of tasks. These tasks can
only be accessed and performed only by the sam_user role. Once all the tasks are closed, the
reclamation line item is complete. After all the reclamation line items are complete, the catalog
request is also completed. For information on creating an off-boarding catalog request, see
Create a catalog request to reclaim assets.

Note: Software reclamation line items of the type Device Reclamation are created for each
device that is returned, provided the device has software installations on it and that device
was selected in the Reclaim Asset form. An additional software reclamation line item of the
type User Reclamation is created if the Employee Separation check box was selected in
the Reclaim Asset form.

Windows Server cluster license optimization
Optimize rights used for Windows Server clustering based on costs and compliance criteria.
Windows Server installations are categorized into two editions - Standard and Datacenter.
Windows Server Standard and Datacenter editions are licensed by physical cores. The licenses
are available in packs of 2 and packs of 16. The minimum license requirements for Windows
Server clustering is:
• All physical cores must be licensed
• 8 core licenses per processor
• 16 core licenses per server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
A cluster is licensed by calculating the maximum number of virtual machines (VMs) that can run
on one physical host.
The Windows Server Standard edition is licensed for 2 operating system environments (OSEs) or
Hyper-V containers. Additional OSEs require additional licenses ( physical server is licensed for
every 2 OSEs, minimum of 16 rights). Windows Server Datacenter edition is licensed for unlimited
OSEs.
The cluster or host density is determined by dividing the active operating systems by 2. The
system property com.snc.samp.windowserver.license.threshold with a default
value of 4.59 is used for marking the host or cluster density. This property is a ratio of the
cost of Datacenter and non Datacenter licenses and identifies the optimal cluster size for
Datacenter licenses. You can modify the value of this property based on the purchase costs
for these licenses. Low density clusters are licensed by non Datacenter licenses starting from
low to high density. High density clusters are licensed by Datacenter licenses starting from high
to low density. Optimal license and potential savings are generated for host or cluster using
non optimal licenses.
The Windows Standard rights are used first for the Standard list by using them from the smallest
to the largest within this list. After using Standard rights for low density host or cluster, the
remaining low density host or cluster are licensed by the remaining Datacenter rights from high
to low density. After using Datacenter rights for high density host or cluster, the remaining high
density host or cluster are licensed by the remaining Standard rights from low to high density.
Clusters that do not have enough Datacenter or Standard rights to consume are marked as
unlicensed.
A new table, Potential savings by optimizing licenses, [samp_license_optimization_summary] is
created to store information about licensing Windows Server software installed on each device.

Bring your own license or subscription to the public cloud
Bring your own license (BYOL) support enables you to determine the license compliance of
your Microsoft and Oracle software products across hybrid infrastructures. Bring your own
subscription (BYOS) support enables you to determine the license compliance of your Red Hat
Enterprise Linux (RHEL) software products across hybrid infrastructures.
When organizations move to the public cloud, existing on-premise perpetual licenses are carried
over to the cloud using BYOL. Existing on-premise subscription licenses are also carried over to
the cloud using BYOS. BYOL and BYOS help improve license optimization, as organizations must
pay only for infrastructure costs.
The Software Asset Management application supports BYOL for Microsoft and Oracle software
products and BYOS for RHEL software products as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
Supported
infrastructure type

Product

Microsoft
SQL
Server

Product
edition

BYOL
or
BYOS

All editions

BYOL

Note:

Supported
cloud
providers

Supported service model

• AWS

Infrastructure as a Service
(IaaS)

Shared and
dedicated

Infrastructure as a Service
(IaaS)

Shared and
dedicated

• Microsoft
Azure

This column
applies to
Infrastructure
as a Service
(IaaS) models
only.

• Google
Cloud
Platform
(GCP)
Microsoft
Windows
Server

All editions

BYOL

• AWS
• Microsoft
Azure
• Google
Cloud
Platform
(GCP)

Oracle
Database

• Oracle
Database
Standard
Edition
• Oracle
Database
Standard
Edition
One
• Oracle
Database
Standard
Edition 2
• Oracle
Database
Enterprise
Edition

BYOL

• AWS
• Microsoft
Azure

Shared and
• AWS: Infrastructure as a
dedicated
Service (IaaS) and Platform
as a Service (PaaS)

Note: In AWS, the
IaaS model refers to
the Amazon Elastic
Computing (EC2)
web service, while
the PaaS model
refers to the Amazon
Relational Database
Service (RDS).
• Microsoft Azure:
Infrastructure as a Service
(IaaS)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
Supported
infrastructure type

Product

Oracle
Weblogic
Server

Product
edition

• Oracle
WebLogic
Server
Standard
Edition

BYOL
or
BYOS

BYOL

Note:

Supported
cloud
providers

Supported service model

• AWS

Infrastructure as a Service
(IaaS)

Shared and
dedicated

Infrastructure as a Service
(IaaS)

Shared

• Microsoft
Azure

This column
applies to
Infrastructure
as a Service
(IaaS) models
only.

• Oracle
WebLogic
Server
Enterprise
Edition
Red Hat
All editions
Enterprise
Linux
Server

BYOS

• AWS
• Microsoft
Azure
• Google
Cloud
Platform
(GCP)

BYOL and BYOS support on the Software Asset Management application help you:
• Discover perpetual and subscription-based software licenses automatically across on-premise
and cloud environments, such as AWS, Microsoft Azure, and GCP.
• Determine the license compliance of the following software products across your hybrid
infrastructure:
◦ Microsoft SQL Server
◦ Microsoft Windows Server
◦ Oracle Database
◦ Oracle WebLogic Server
◦ Red Hat Enterprise Linux Server
• Provide advanced support for optimization through Cloud Special Rights, such as dual use
rights, edition flexibility, and unlimited virtualization.
• Perform remediation when your software is out of compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
Bring your own license or subscription flow

Prerequisites
Before you can begin determining the license compliance of software across your hybrid
infrastructures, you must complete the following prerequisites:
• Activate the Discovery (com.snc.discovery) plugin on your ServiceNow instance.
See Request Discovery

for detailed instructions.

• Request and install the Discovery and Service Mapping Patterns application from the
ServiceNow Store .
See Discovery patterns used by ITOM Visibility
Service Mapping patterns.

for more information on Discovery and

• Migrate cloud discoveries from Cloud API (CAPI) probes to pattern-based discovery.
See CAPI to Pattern Migration: Procedure for switching from CAPI-based Cloud Discovery to
pattern-based Cloud Discovery [KB0827153]
for detailed instructions.
• Request and install the CMDB CI Class Models application from the ServiceNow Store
See CMDB CI Class Models store app
application.

.

for more information on the CMDB CI Class Models

• Request and install the Cloud Cost Management application from the ServiceNow Store

.

The Cloud Cost Management application is required for discovering the license types of
software in your Microsoft SQL Server deployments on AWS. See Cloud Insights application
for more information on the Cloud Cost Management application.

BYOL and BYOS discovery
®

With BYOL and BYOS, the ServiceNow Discovery application locates and identifies licensable
software in both your on-premise and cloud environments using Discovery and Service Mapping
patterns. The Discovery application uses Amazon AWS Cloud, Microsoft Azure Cloud, and
Google Cloud discovery patterns to discover the following resources for software in cloud
environments:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
• Cloud provider
• Virtual machine details
• Service model type, such as IaaS or PaaS
• Host infrastructure type for IaaS, such as shared or dedicated
• License type, such as BYOL, BYOS, or License Included
• Software that is installed on the virtual machine

Note: The Amazon AWS Cloud, Microsoft Azure Cloud, and Google Cloud discovery
patterns are included in the Discovery and Service Mapping Patterns store application.
For more information on Amazon AWS Cloud discovery patterns, see Amazon AWS Cloud
components discovery using patterns . For more information on Microsoft Azure Cloud
discovery patterns, see Microsoft Azure Cloud components discovery using patterns . For
more information on Google Cloud discovery patterns, see and Google Cloud Platform
(GCP) Organization discovery with Patterns .
Resources for your discovered software are populated and stored in corresponding
Configuration Management Database (CMDB) tables, including the Host [cmdb_ci_cloud_host]
and Serverless Hardware [cmdb_ci_serverless_hardware] tables, on your ServiceNow instance.
The Software Asset Management application then determines the license types of your
discovered software either independently or with the Discovery or Cloud Cost Management
application.
• For Microsoft Windows Server and Oracle Database on AWS, Microsoft Azure, and Google
Cloud Platform (GCP), the Software Asset Management application determines license types
independently.
• For Microsoft SQL Server on AWS, the Software Asset Management application determines
license types using billing records from the Cloud Cost Management application.
• For
◦ Microsoft SQL Server on Microsoft Azure and Google Cloud Platform (GCP)
◦ and Red Hat Enterprise Linux Server on AWS, Microsoft Azure, and Google Cloud Platform
(GCP),
the Software Asset Management application determines license types using resources that
are discovered through the Discovery application.
• For Oracle WebLogic Server on AWS and Microsoft Azure, you must specify license types
manually.
For all software products except Oracle WebLogic Server, license types are applied to associated
configuration items (CIs) using automatically generated key-value pairs. The key-value pairs
are stored in the Key Values [cmdb_key_value] table. Each key-value pair consists of a Key in
the <software-product>_License_Type_automatic format and a Value of either License
Included, BYOL, or BYOS.
For Oracle WebLogic Server, you must specify license types manually by creating key-value
pairs. The key-value pairs must have a Key of Oracle_WebLogic_Server_License_Type
and a Value of either License Included or BYOL. After you create these key-value pairs, the
specified license types can be applied to the associated CIs.

Note: If the license type is not manually specified for a software product, the Software
Asset Management application won't license the installation due to insufficient information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
You can use these key-value pairs to determine whether the associated software licenses are
using the BYOL, BYOS, or License Included licensing model. The BYOL and BYOS licensing
models include license purchasing options such as Azure Hybrid Benefit. The License Included
licensing model includes license purchasing options such as Pay As You Go (PAYG), SPOT, and
On Demand. With the License Included licensing model, the cloud provider is responsible for
managing licenses.

Note: For Oracle Database, support for the BYOL and License Included licensing models
is based on the cloud provider and Oracle Database version that you're using.
• AWS RDS (PaaS): The BYOL licensing model is supported on Oracle Database Standard
Edition, Standard Edition One, Standard Edition 2, and Enterprise Edition. The License
Included licensing model is supported on only Oracle Database Standard Edition 2.
• AWS EC2 (IaaS): Only the BYOL licensing model is supported.
• Microsoft Azure (IaaS): Only the BYOL licensing model is supported.

Software reconciliation for BYOL and BYOS license compliance
After your discovered software is marked as BYOL, BYOS, or License Included, reconciliation
runs on the software that is marked as BYOL or BYOS. You can then use the resulting information
to determine the software compliance across your hybrid infrastructure.
BYOL and BYOS licensing rules can differ for the same software products across different
cloud providers. For example, Windows Server has different licensing rules on AWS and on
Microsoft Azure. These rules must be combined with existing on-premise rules so that you can
determine the complete license compliance position of each software product across your
hybrid infrastructures. Microsoft offers special rights for products that are deployed on AWS vs
Microsoft Azure, such as dual use rights, edition flexibility, and unlimited virtualization. For more
information on licensing rules, see Licensing rules for BYOL and BYOS.
The Software Asset Management application automatically reconciles these rules and provides
an accurate license position report that can be viewed in the License usage view of the Software
Asset Workspace.
• You can view BYOL license rights for your Microsoft software products in the Microsoft
publisher overview of the Software Asset Workspace. For more information on the Microsoft
publisher overview, see Publisher overview for Microsoft in the Software Asset Workspace.
• You can view BYOL license rights for your Oracle software products in the Oracle publisher
overview of the Software Asset Workspace. You can also view information about your Oracle
Database server deployments across hybrid infrastructures, based on the agreement type, in
the Oracle DB Server Deployments per Agreement report. For more information on the Oracle
publisher overview, see Publisher overview for Oracle in the Software Asset Workspace. For
more information on the Oracle DB Server Deployments per Agreement report, see the Oracle
DB Server Deployments per Agreement report.
• You can view BYOS license rights for your RHEL software products in the Red Hat publisher
overview of the Software Asset Workspace. For more information on the Red Hat publisher
overview, see Publisher overview for Red Hat in the Software Asset Workspace.

Cloud-based remediation options
To remediate non-compliance for cloud installations, the Software Asset Management
application provides the following remediation options:
Remove Unlicensed Installs - Cloud
The Remove Unlicensed Installs - Cloud remediation option removes all cloud
installations that are unlicensed for the associated software product.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


<!-- page 178 -->
When you select the Remove Unlicensed Installs - Cloud remediation option,
removal candidates that follow the regular remediation workflow are created. After
the removal candidates reach the Awaiting Revocation state, you can uninstall the
cloud installations from your cloud provider and then mark the removal candidates
as complete.
Optimize vCPU
The Optimize vCPU remediation option provides vCPU sizing optimizations based
on the core count and core thread count. This remediation option is applicable only
to Oracle Database Per Processor licenses on AWS RDS (PaaS). That Per Processor
licensing is based on the number of vCPUs on which you install or run an Oracle
database.
For more information on AWS core counts and core thread counts, see Configuring
the processor for a DB instance class .
Microsoft Windows and SQL Server infrastructure details reports
You can use the Microsoft Windows and SQL Server infrastructure details reports to gain visibility
into the SQL Server and Windows Server deployments and infrastructure for different cloud
providers including Microsoft Azure, AWS, and GCP.

License types on cloud

Azure BYOL Realized Savings report
You can use the Azure BYOL Realized Savings report to gain visibility into the potential and actual
cost savings for your Microsoft SQL Server and Microsoft Windows Server deployments on
Microsoft Azure when using Azure Hybrid Benefit, which is the bring your own license (BYOL)
licensing model for Microsoft Azure.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
The Azure BYOL Realized Savings report is generated only if you have requested and installed
®
the ServiceNow Cloud Cost Management application from the ServiceNow Store. See Cloud
Cost Management application for more information on Cloud Cost Management.

Note: This report is available only in the Software Asset Workspace. This report isn’t
available in the Software Asset Management classic application.
To view this report, launch the Software Asset Workspace by navigating to Software Asset >
Software Asset Workspace on your ServiceNow instance. From the Software Asset Workspace,
navigate to License usage > Reports > Azure BYOL Realized Savings Report.
Azure BYOL Realized Savings report
Field

Description

Virtual Machine

Azure virtual machine (VM) that Microsoft SQL Server or Microsoft Windows
Server is running on.

Host Type

Type of Azure host that the Azure VM is running on. The options are Shared
and Dedicated.

Location

Geographic location that the Azure host resides in.

vCPU

Number of virtual CPUs (vCPUs) that are assigned to the Azure VM.

Hardware Type

Hardware type of the Azure host.

Operating
System

Operating system (OS) version and edition that is running on Azure.

SQL Server

Microsoft SQL Server version and edition that is running on the Azure VM.

AHB on
Windows Server

Field indicating if Azure Hybrid Benefit is enabled for Microsoft Windows
Server.

AHB on SQL
Server

Field indicating if Azure Hybrid Benefit is enabled for Microsoft SQL Server.

Standard price
per month
without AHB

Potential VM cost per month when Azure Hybrid Benefit isn’t enabled.
This value is based on the assumption that the VM is running for the entire
month (720 hours).

Standard price
per month with
AHB

Potential VM cost per month when Azure Hybrid Benefit is enabled. This
value is based on the assumption that the VM is running for the entire
month (720 hours).

Standard
Potential VM cost saved per month by using Azure Hybrid Benefit. This value
Savings Realized is based on the assumption that the VM is running for the entire month (720
hours).
Actual price per
month without
AHB

Actual VM cost per month when Azure Hybrid Benefit isn’t enabled. This
value is based on the actual number of hours that the VM was running for
within a month.

Actual price per
month with AHB

Actual VM cost per month when Azure Hybrid Benefit is enabled. This value
is based on the actual number of hours that the VM was running for within a
month.

Actual Savings
Realized

Actual VM cost saved per month by using Azure Hybrid Benefit. This value
is based on the actual number of hours that the VM was running for within a
month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
Core infrastructure suite (CIS) support for BYOL
Use your on-premise CIS entitlements to license Windows Server installations on cloud
platforms such as AWS and Microsoft Azure.
The CIS entitlements would license the Windows Server installations in accordance with the
Microsoft licensing rules on cloud: If you licensed Windows Server through CIS, you can use the
Azure Hybrid Use Benefit. The System Center component in CIS, however, is not covered.

Understanding your cluster infrastructure
Get a holistic and strategic analysis of all the entities in your clusters in one view on the Software
Asset Management application.
The SAM Cluster 360° feature simplifies the process of analyzing a cluster, which is typically a
time-consuming task. This feature helps SAM managers to make strategic decisions by providing
them with a visually comprehensive view of their cluster setup, licensing, and cluster health
issues. Drill down to each node on a cluster for a deeper understanding. For detailed information
on your cluster, see View your cluster setup in 360 degrees.

Cluster overview

A cluster is a type of virtualization where hosts are grouped and share resources. This
technology provides high availability, resource pooling, and load balancing for virtual machines
that run on it. This technology provides the foundation for building highly resilient, scalable, and
efficient virtualized environments.
Each host has the capacity to run multiple virtual machines (VMs) and can be configured to
support features such as high availability, DRS (Dynamic Resource Scheduling), and host affinity.
The VMs can move across the hosts depending on certain settings such as High availability or
Distributed Resource Scheduler (DRS). Settings such as Host affinity can lock VMs to certain
hosts.
Factors such as the number of VMs, movement of VMs, hosts, and VM cores in a cluster can
affect your license compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
Cluster setup

Benefits of SAM Cluster 360°
SAM Cluster 360° provides a holistic and strategic analysis of clusters to support infrastructure
understanding, license compliance, and health checks across the cluster.
The SAM Cluster 360° feature helps you to view and analyze the following concepts:
• Core infrastructure of a cluster: hosts, VMs, software, cores, and processors.
• All hosts and the VMs that can potentially move on them.
• All software, licensable and non-licensable, running on a cluster.
• All software consuming licenses.

Executive insights into KPIs using the Asset Management Executive
dashboard
Use the Asset Management Executive dashboard to gain visibility into critical KPIs for the
Software Asset Management application, Hardware Asset Management application, and the
Cloud Cost Management application via a single dashboard.
To access the Asset Management Executive dashboard, you must either have the Software Asset
Management application or the Hardware Asset Management application in your ServiceNow
instance.
To view the Asset Management Executive dashboard, navigate to Asset Executive Workspace >
Asset Management Executive Dashboard. A user with the role of sn_itam_common.asset_exec
can access the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
Asset Management Executive Dashboard

You can filter the results in the dashboard by product, domain, or by both product and domain. If
you filter by domain, the filter gets applied to all the widgets. If you filter by product, since some
widgets are specific to certain products, the filter is not applied to all the widgets.
After you select a filter, a blue box appears on the right side of each widget, displaying one of the
following numbers:
• 0: Indicates that no filter is applied to a widget.
• 1: Indicates that only one filter is applied to a widget.
• 2: Indicates that both the filters are applied to a widget.

Note: To use the domain filter, you must activate the plugins:
com.glide.domain.msp_extensions.installer and com.snc.pa.domain_support.
The scheduled job, Asset Management - Populate KPI aggregate table, runs
daily to update the data on the dashboard. To view the latest data for a widget, click the widget to
display the list view page.
The dashboard widgets vary depending on the application plugins that you've activated in your
instance. The widgets available with each application are listed in the following table:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
Asset Management Executive Dashboard widgets
Widget

Total spend

Actual
savings

Software Asset
Management

Hardware Asset
Management

Total cost of all
entitlements for all
products.

Total cost of
all hardware
assets whose
status is either In
Source table:
stock, In use, In
License
maintenance,or In
Metric Results
transit.
[samp_license_metric_result].
Source table:
Hardware
[alm_hardware].
Total yearly savings
for all products.
This value is
calculated as the
total savings from
closed complete
reclamation
candidates.

Not applicable.

Cost saved if
removal candidates
are reclaimed.

Total active cost of all cloud
resources.
Source table: Spend Report
Daily Aggregated Cost
[sn_cld_spend_core_daily_aggregated_cost].

This value is calculated as the
monthly savings on cloud resources.

Note: This widget appears
only if you have the Software
Asset Management application
installed on your instance.

Source table:
Removal Candidate
[samp_sw_reclamation_candidate].

Potential
savings

Cloud Cost Management

Not applicable.

Source table:
Removal Candidate
[samp_sw_reclamation_candidate].

Source table: Cloud
Insights Rightsizing
Recommendation Automatics
(sn_clin_core_rs_recommendation_automatic)
where State = Completed.
Total of potential savings on a
monthly basis on cloud rightsizing,
cloud unused machines, cloud
reservations, and cloud business
hours.

Note: This widget appears
only if you have the Software
Asset Management application
installed on your instance.
Source tables:
• Cloud Insights Rightsizing
Recommendation Automatics
[sn_clin_core_rs_recommendation_automatic].
• Cloud Insights Unused
Recommendation
[sn_clin_core_rs_unused_recommendation].
• Reserved Instance
Recommendation
[sn_clin_core_ri_recommendation].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Software Asset
Management

Assessment
Fulfillment time bar
fulfillment
graph of software
time
requests from the
Service Catalog. The
graph shows the
number of requests
and the number of
days taken to close
those requests in the
ranges of 0-5, 6-10,
11-20, 21-30, or 31+
days.

Hardware Asset
Management

Fulfillment time bar
graph of hardware
requests from the
Service Catalog.
The graph shows
the number of
requests and the
number of days
taken to close
those requests in
the ranges of 0-5,
6-10, 11-20, 21-30, or
31+ days.

Cloud Cost Management

Not applicable.

Source table: Asset
Source table: Asset
fulfillment time
[asset_fulfillment_time].fulfillment time
[asset_fulfillment_time].
Completed
software
success
goals

Number of success
goals completed
for the Software
Asset Management
application.

Not applicable.

Not applicable.

Source table: SAM
Success Goal
[samp_success_goal].

Note: This
widget is
available only
when the
Software Asset
Workspace
(sn_sam_workspace)
store
application is
installed.
Software
success
savings

Actual savings from
completed success
goals.

Not applicable.

Not applicable.

Source table: SAM
Success Goal
[samp_success_goal].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

Note: This
widget is
available only
when the
Software Asset
Workspace
(sn_sam_workspace)
store
application is
installed.
Missing
hardware
assets

Not applicable.

Count of missing,
lost, or stolen
hardware assets.

Not applicable.

Source table:
Missing
Hardware Assets
[missing_hardware_assets].
Software
true-up cost Cost of the products
actually being used.

Not applicable.

Not applicable.

Source table:
Product Results
[samp_product_result].
Expiring
contracts in
90 days

Count of software
contracts that are
going to expire in the
next 90 days.

Count of hardware
contracts that are
going to expire in
the next 90 days.

Not applicable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Assets
pulled from
pool vs
net new
purchase

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

Note: If the

Note: If

Software Asset
Management
application and
the Hardware
Asset
Management
application
both exist in
your instance,
then this
widget shows
the total
number of
software and
hardware
contracts
together; not
individual
contracts for
software and
hardware.

Software
Asset
Management
application
and the
Hardware
Asset
Management
application
both exist in
your instance,
then this
widget shows
the total
number of
software and
hardware
contracts
together; not
individual
contracts for
software and
hardware.

Bar charts
representing the
number of requests
for software assets
being fulfilled from
your inventory
versus creating
purchase orders for
new assets.

Bar charts
representing the
number of requests
for hardware assets
being fulfilled from
your inventory
versus creating
purchase orders for
new assets.

Bar charts representing the number
of assets used from your inventory
versus new assets being procured
via purchase orders.

Source tables:

• Net new assets: Purchase order
line items [proc_po_item].

Note: Ensure

Source tables:
• Pool assets: Spend
Report Monthly Cost
[sn_cld_spend_core_monthly_cost].

that the
• Pool assets:
Procurement
Consume
(com.snc.procurement)
Asset Task
plugin is
[consume_asset_task].
activated in
• Net new assets:
your instance
Purchase order
to view
line items
software[proc_po_item].
related data for
this widget.
Source tables:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
Asset Management Executive Dashboard widgets (continued)
Widget

Software Asset
Management

Hardware Asset
Management

Cloud Cost Management

• Pool assets:
Assigned
Allocations
[alm_licenses_assigned].
• Net new assets:
Purchase order
line items
[proc_po_item].
End of life
models in
next 90
days

Number of software
models that are
reaching their end
of life in the next 90
days.

Number of
hardware models
that are reaching
their end of life in
the next 90 days.

• End of life

• End of life

• End of support

• End of support

• End of extended
support

• End of extended
support

Not applicable.

Source table:
Source table:
Software
Hardware model
Lifecycle Report
[cmdb_hardware_model_lifecycle].
[sam_sw_product_lifecycle_report].

Cloud cost simulation
Simulate the cost of moving your on-premise resources to the cloud environment before
performing the migration.

Plugins required
The following plugins are required for supporting cloud cost stimulator recommendations:
• Cloud Insights application plugin (sn_clin_billing): for cloud infrastructure details and cost.
• Hardware Asset Management (sn_hamp): for end of life cycle for hardware.
• Cloud Migration Assessment application (com.sn_cloud_migration): for resource utilization.

Overview
The sam_manager role specifies the criteria for migrating the resources to the cloud. For
example, you may need all virtual machines installed with SQL Server or all virtual machines
having end of life software. In addition the Software Asset Management application automatically
provides recommendations based on End of Life software and hardware and resource utilization.
Based on the criteria or recommendation, the Software Asset Management application
automatically selects the virtual machines that match your criteria. Once all the on-premise
virtual machine have been identified, the Software Asset Management application matches
those virtual machines with the virtual machines on the cloud: AWS or Azure.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
The most optimal matching of resources is conducted and the total cost involved is given to
you. Cost for the various cloud providers: AWS and Azure is mentioned along with or without the
cost of Bring Your Own License (BYOL). Once the decision is made to move to a particular cloud
provider, a change request can be created to move forward with the implementation.
For information on comparing and evaluating the estimate cost of migrating your resources to the
cloud, see Cloud simulator dashboard.

Use cases
A sam_manager role can receive recommendations for migrating on-premise resources to the
cloud while taking into account the following considerations:
• End of life for software: On some virtual machines, you may have software that is nearing the
end of its life cycle. Calculate the cost of migrating these virtual machines to the cloud, taking
into account all of the benefits. For example, Microsoft Azure offers free extended security
updates for certain Microsoft products that have reached the end of their life cycle.​

Note: Recommendations are only shown for Microsoft Azure and AWS shared VMware
virtual machines and not for dedicated host machines.
• End of life for hardware: You may have virtual machines running on hardware that is nearing its
end of life phase. Simulate the cost of moving these virtual machines to the cloud.

Note: Ensure that you have activated of the Hardware Asset Management (sn_hamp)
plugin to get data on end of life cycle for hardware and hardware cost.
• Resource utilization: Some on-premise virtual machines may have low CPU and RAM
utilization. Simulate the cost of moving these virtual machines to the cloud by recommending
the appropriate sized virtual machines. For example, if a 32 vCPU virtual machine on-premises,
is utilizing only 4 vCPU, the recommendation would be a 4-vCPU virtual machine on the cloud,
resulting in cost savings.​

Note: Ensure that you have activated the Cloud Migration Assessment application
(com.sn_cloud_migration) plugin to get data on resource utilization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
Software asset connections
Use third-party discovery sources to discover the installed software data that you can integrate
with the Software Asset Management application.
The discovery process is an integral part of the Software Asset Management application. The
discovery process consists of discovering where the installed software in your organization is
installed, who the owner of the device is, and where it's located. The discovered information
is then merged into a common configuration management database such as the CMDB
application.
The CMDB application enables other business applications to use the discovered information to
support various business needs.
Discovery with Software Asset Management

ServiceNow platform's identification and reconciliation engine (IRE) framework enables all thirdparty data integrations with the CMDB application.
IRE provides a centralized framework where you can perform reconciliations and de-duplication
of the data when multiple sources are ingesting data at the same time. IRE uses identification
rules, reconciliation rules, and IRE data source rules to process the incoming data and then
inserts the data into the corresponding CMDB tables. You can extend these rules to insert the
data into tables that extend the CMDB core tables such as the Software Asset Management
tables. There are two types of identification rules for IRE:
• Independent: If the Independent check box is selected on a CI identifier, it means that the CI
is not dependent on any other CI.
• Dependent: If the Independent check box is not selected on a CI identifier, it implies that this
CI is dependent on other CIs.
For more information on IRE, see Identification and Reconciliation Engine

.

You should have already configured loading the CIs in the ServiceNow instance. For each CI in
your environment, the Hardware [cmdb_ci_hardware] table has a corresponding CI identifier rule.
When the third-party discovery application runs, the software is identified on CIs. The third-party
application constructs a payload and sends the payload via the IRE REST API endpoint to the
ServiceNow instance to insert or update data into the Software Asset Management tables.
A generic payload is used for creating installed software records. For Oracle, VMware, and Citrix,
specific payloads feed additional publisher-specific data apart from software installations.
If multiple discovery sources are enabled and if the key details of the software, such as the
display name and the version for all discovery sources, match, the Installation record is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
overwritten. If multiple discovery sources identify the same software with different field values,
an entry is created in the Software Installation [cmdb_sam_sw_install] table. When the schedule
job SAM- Deduplication install table runs and if all the normalized values of
these installations match, only one record is set to active. The rest of the records are marked as
inactive.
Domain separation is supported for third-party discovery with SAM with the following
considerations:
• The IRE REST API stamps the domain that you are logged in to when the REST call is made.
• Log in to the domain where the CI resides and from where you run the payload.
• Don't log in to the parent domain. Being logged in the parent domain updates the existing CI
and also creates a new CI in the parent domain.
• Send the payload from the same domain where the CIs reside. For example, if you send a
payload from Domain A and if the payload has CIs that belong to Domain B, a new CI gets
created in Domain A.

Use Software Asset Management with Governance, Risk, and Compliance
Use the Software Asset Management application in conjunction with the Governance, Risk, and
Compliance suite of applications to holistically work on compliance, risk, and regulatory aspects.
IT asset management directly feeds critical information required by GRC programs to monitor
™
cyber security measures such as CIS controls from The Center for Internet Security to enhance
the overall security preparedness and cyber defense posture. For example, CIS controls 2.2,
2.4 require that organizations keep an inventory of all software assets and ensure that they are
supported by the vendor. This information is automatically collected and surfaced on the CIS
control indicate template from GRC.
For detailed information on Cybersecurity Control Accelerators and regulations such as CIS
controls, ISO 27001, 27002, see Cybersecurity Controls Accelerators .

Using Software Asset Management with Agent Client Collector
Use the Agent Client Collector application to collect software inventory and usage data for the
Software Asset Management application.
An agent is useful in discovering software deployed on end user machines such as laptops as
well as machines deployed on isolated networks that only allow outgoing data transmission. You
do not need to keep track of login credentials or IP ranges, nor do you need to create a discovery
schedule. The agent, along with other software, can be deployed via a deployment image and
then it continuously performs discovery and sends data back to your ServiceNow instance. For
more details on the Agent Client Collector application, see Agent Client Collector for Visibility Content .
You can download the Agent Client Collector application from the ServiceNow Store.

Use Software Asset Management and Application Portfolio Management to
manage technology onboarding
Use the Software Asset Management application along with Technology Reference Model (TRM)
of Application Portfolio Management to manage onboarding of technologies.
TRM is a list of software products with information on their approval of use. Each product is
associated with a set of lifecycle phases with a start and end date. The TRM library is maintained
by the enterprise architect and used by application owners. For detailed information on TRM, see
Exploring Technology Reference Model - Legacy .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
The Software Asset Management application gives visibility into the TRM lifecycle phases for all
products associated with software models. When a software model is created and associated
with a product that is approved for use in TRM, the Certified check box in the software model
form is selected by default. All software models associated with that product are then available
for use.

If the same product in TRM is later marked as unapproved, the existing software models
associated with that product don't reflect that change. However, when you open the existing
software models, a banner appears stating This software is not approved for
use in the Technology Reference Model (TRM). To be in sync with
the TRM, set the Certified flag to FALSE..
If a new software model is created with this product, that software model is marked as
unapproved, and a banner isn't displayed as this software model is in sync with TRM.
If a product is marked as unapproved in TRM, reclamation candidates are automatically created
for all software installations that are associated with that product. After the product is approved
for use in TRM, the existing reclamation candidates are either marked Closed complete or
Closed canceled.

Software Asset Management and TRM use case
This section describes a use case that demonstrates how the Software Asset Management
application and TRM interact.
For example, you create a software model SW1, on September 15, 2022, and associate it with
PostgreSQL, which is an unapproved product in TRM. By default, the Certified check box in
the SW1 form is set to false and the Restricted software check box is set to true. Also removal
candidates are created for any installations discovered.
On September 18, 2022, release 14.5 of PostgreSQL gets approved for use in TRM. If you now
open SW1 a banner appears stating the following This software is approved for
use in the Technology Reference Model (TRM). To be in sync with
the TRM, set the Certified flag as true. However software models with older
versions would continue to be restricted.
If you create another software model SW2, on September 19, 2022, and associate it with
PostgreSQL, the Certified check box is set to true and the Restricted software check box is set
to false in the SW2 form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


<!-- page 192 -->
Software Asset Management Guided Experiences
The Software Asset Management Guided Experiences application provides step-by-step
guidance for completing tasks in your daily software management activities.

Playbook overview
A playbook takes a workflow and breaks it into multiple lanes. Each lane includes:
• A list of tasks that you must perform.
• Status indicators that display the current state of each task.
• Check boxes that indicate where you are in the workflow.
As you mark a task complete in a lane, you move to the next task. You can save a task at any time
and return to the playbook later. After you complete all the tasks in a lane, you can move to the
next lane. As you keep completing tasks and lanes, the status keeps getting reflected in the side
panel. An activity log on the playbook shows all the data that you’ve entered for each task. After
you complete all the tasks, you’re asked to review the details you entered in all the lanes. You can
choose to edit any field or select Finish to complete the process of creating the entitlement.
A playbook is divided into three parts:
• task lanes
• a work area
• an activity log
Playbook layout

Using playbook to set up entitlements
You can use the guided walk-through playbook for setting up entitlements. The guided walkthrough playbook takes you step by step through each stage of the entitlement creation process,
from initiation to completion.
To access the Software Asset Management playbook, you must install it from the ServiceNow
Store and then access the playbook from the landing page on the Software Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
Using Guided Setup
Guided Setup provides a sequence of tasks that help you configure the following products or
applications on your ServiceNow instance:
Software Asset Management Guided Setup
1. Navigate to Workspaces > Software Asset Workspace > Success portal.
2. Select the Product Setups tab.
3. Select Set up product.
4. In the Set up product dialog box, select SaaS or On-premise from the Setup type drop-down
list.
◦ For SaaS, select the SaaS application that you want to set up in the Integration profile field.
◦ For On-premise, select the Publisher and Product.
5. Select Next.
Microsoft SQL Server Guided Setup

Note: Only one instance of Microsoft SQL Server setup can run at a time.
1. Navigate to Workspaces > Software Asset Workspace > Success portal.
2. Select the Product Setups tab.
3. On the Product Setups page, launch the Guided Setup by selecting Get Started on the
Microsoft SQL Server tile.
Microsoft Windows Server Guided Setup

Note: Only one instance of Microsoft Windows Server setup can run at a time.
1. Navigate to Workspaces > Software Asset Workspace > Success portal.
2. Select the Product Setups tab.
3. On the Product Setups page, launch the Guided Setup by selecting Get Started on the
Microsoft Windows Server tile.
Microsoft 365 Guided Setup
Navigate to the Microsoft 365 Guided Setup by either of the following ways:
• Option 1
1. Navigate to Workspaces > Software Asset Workspace > Success portal > Product Setups.
2. Select the Product Setups tab.
3. On the Product Setups page, launch the Guided Setup by selecting Get Started on the
Microsoft 365 tile.
• Option 2
1. Navigate to Workspaces > Software Asset Workspace > Success portal.
2. Select the Product Setups tab.
3. Select Set up product.
4. In the Set up product dialog box, select SaaS from the Setup type drop-down list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
5. Select Microsoft 365 in the Integration profile field.
6. Select Next.
Adobe Cloud Guided Setup
You can use the Adobe Cloud Guided Setup to integrate your Software Asset Management
application with Adobe Cloud to manage license compliance and optimization. For details, see
Adobe Cloud Guided Setup.
Navigate to the Adobe Cloud Guided Setup using either of the following ways:
• Option 1
1. Navigate to Workspaces > Software Asset Workspace > Success portal > Product Setups.
2. Select the Product Setups tab.
3. On the Product Setups page, launch the Guided Setup by selecting Get Started on the
Adobe Cloud tile.
• Option 2
1. Navigate to Workspaces > Software Asset Workspace > Success portal.
2. Select the Product Setups tab.
3. Select Set up product.
4. In the Set up product dialog box, select SaaS from the Setup type drop-down list.
5. In the Integration profile field, select Adobe Cloud.
6. Select Next.

Important: You must complete the required tasks in the Guided Setup to move to the
next task.
Related topics
Software Asset Management publisher pack for Microsoft
Integrate with SaaS applications
Software Asset Management publisher pack for Adobe

Configuring Software Asset Management
Configure the various aspects of the Software Asset Management application based on the
needs of your organization.

Configuration overview
Configuring the Software Asset Management application by the system administrators involves
performing the following tasks. Depending on your organization's needs and requirements, some
configuration tasks are optional.

Task

Request the Software Asset
Management application

Resource

Required

Request Software Asset
Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
Task

Resource

Overwrite customizations for
Software Asset Management
migration

Optional

Overwrite customizations for
Software Asset Management
migration

Configure SCCM for Software
Asset Management.

Optional

Configure SCCM for Software
Asset Management

Request Software Asset Management
®

The ServiceNow Software Asset Management Professional (com.snc.samp) plugin requires a
separate subscription. This plugin includes demo data. Depending on your environment, you
may choose to request one or more related plugins.

Before you begin

To purchase a subscription or load demo data after activation, contact your ServiceNow account
manager. Within a few days, the account manager can activate the plugin and load any demo
data on the production and non-production instances of your organization.
If you do not have an account manager, decide to delay activation until after your purchase, or
want to evaluate the product on a non-production instance at no extra charge, you can use this
®
procedure to submit a plugin activation request through the ServiceNow Now Support Service
Portal.

Warning: If you upgrade to the Software Asset Management Professional
(com.snc.samp) plugin from the Software Asset Management plugin
(com.snc.software_asset_management), then you cannot revert to the Software Asset
Management plugin (com.snc.software_asset_management).
Role required: admin

About this task

Depending on your environment, you can request related plugins with the Software Asset
Management Professional (com.snc.samp) plugin. You can request the optional plugins through
either the Now Support Service Portal or through the ServiceNow Store.
For the list of Software Asset Management Professional plugins, see Components installed with
Software Asset Management Professional.
Only ServiceNow personnel can activate the Software Asset Management Professional
(com.snc.samp) plugin and other related plugins. The plugins are not visible in the plugin list,
even after activation.

Warning: After installing the Software Asset Management application for the first time,
or upgrading from the Software Asset Management Foundation plugin, you need to revert
customizations for all features work. The Revert Customizations module in the Software
Asset Management application can revert customized files related to Software Asset
Management back to the base configurations that were skipped during the installation or
upgrade process. See Revert Software Asset Management customizations

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. On the All Applications page, select Request Plugin to open the Activate Plugin form on Now
Support.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
3. On Now Support, select the link to access the Now Support Service Portal Service Catalog.

4. Select your instance.
5. Select Actions > Activate Plugin.
6. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Instance on which to activate the plugin.

Which plugin would you like to activate

Name of the plugin to activate.

Note: Select Software Asset
Management Professional Master
Workspace (com.sn_samp_master_ws)
plugin. If the system does not list the
plugin you want or if you are activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

The date and time to activate the plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
Field

Description

Note: Plugins are activated in two
batches, once in the morning and
once in the evening, on every business
day in the US Pacific time zone. If the
plugin must be activated at a specific
time, enter the request in the Reason/
Comments field.

Example
For example, see the following form to activate the CSM Workspace plugin on an instance
named My Instance.
Activate Plugin form

7. Select Submit.
For additional details about requesting a plugin, see Requesting a Plugin from the Service
Catalog [KB0751715] article in the Now Support Knowledge Base.

Overwrite customizations for Software Asset Management migration
When migrating from the Software Asset Management plugin (ITSM Software Asset Management
feature of Asset Management) to the Software Asset Management application, further actions
are required by the customer after plugin activation to ensure successful migration of customized
forms and lists.

Before you begin

Role required: admin

About this task

If these lists and forms have been customized before the migration, they may have been skipped
during plugin activation and, in that case, require further action.
• Software Entitlements (formerly Software Licenses)
• Software Allocations (formerly Software Entitlements)
• Software Models
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
• Discovery Models
• Software Installations
You can review plugin activation changes in the Upgrade History module
to determine what
changes have automatically been skipped so you can Resolve a skipped update and set a
resolution status , if needed.
Certain fields added by the migration also must be configured to take advantage of the new
features offered.

Procedure
1. Navigate to All > System Diagnostics > Upgrade History.
2. Identify the records that correspond to the upgrade history for the activation of the Software
Asset Management Professional (com.snc.samp) plugin.
The records in System Upgrades list that represent plugin activation contain the
value n/a in the From field, and plugin name in the To field (such as com.snc.samp,
com.snc.samp.core, com.snc.sam.core, com.glide.data_services_canonicalization.client,
com.snc.asset_management, com.snc.model, com.snc.procurement). You can determine the
list of related plugins based on the time stamp of when the Software Asset Management plugin
was activated by sorting on the Upgrade started column.
3. Open a Software Asset Management upgrade record that has changes skipped.
4. In the Upgrade Details related list, open an Upgraded Details record, and then click Resolve
Conflicts to view a side-by-side comparison of the base system file with the customized file.
5. Click Revert to Base System to overwrite the skipped change if it applies to form or list
customization, and note down the changes.
Repeat these steps for all upgrade entries with skipped changes relating to customizations.
6. In the Software Asset Management application, manually reconfigure your original form and list
customizations.
7. In the Software Asset Management application, set new field values (added as part of the
automatic changes performed by plugin activation) to take advantage of the new features
offered.
a. Navigate to Software Asset > Licensing > Software Models.
▪ Select the software product in the Product reference field.
▪ Select a discovery map, or clear the Discovery Map field and set the discovery conditions
to find all discovery models that correspond to the software model.
b. Navigate to Software Asset > Licensing > Software Entitlements (formerly Software
Licenses).
▪ Navigate to Software Asset > Licensing > Software Entitlements (formerly Software
Licenses).
▪ Select the License Metric that the software license is counted against when reconciliation
is run.
▪ Define the upgrade and downgrade scenarios covered by certain rights.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
c. In the User Allocations and Device Allocations related lists (formerly User/Device
Entitlements), verify that the number of allocated rights are not more than rights owned.
If so, delete allocations so that the number of allocations does not exceed the number of
rights owned.
8. If you have entitlements that require management of license keys, you can create multiple
license keys associated to the same entitlement, as well as allocate these license keys to a
user or device.
Related topics
plugin

Configure SCCM for Software Asset Management
Set up Microsoft SCCM for Software Asset Management to populate the Software Installation
[cmdb_sam_sw_install] table with client software found in your environment. You can also set up
SCCM for Client Software Distribution to reclaim unused and underused software.

Before you begin

Role required: sn_client_sf_dist.csd_admin or admin
Tip: Sign up for the Software Asset Management: Integration with SCCM for Reclamation
and Distribution
course to learn about SCCM setup, reclamation, and more.

Procedure
1. Activate the SCCM integration plugin

for your version of SCCM.

◦ Integration — Microsoft SCCM 2012 v2 (com.snc.integration.sccm2012v2)
◦ Integration — Microsoft SCCM 2016 (com.snc.integration.sccm2016)
If you want to pull software usage data from SCCM, activate the software usage plugin for your
version of SCCM.
◦ Integration — Microsoft SCCM 2012 v2 Software Usage (com.snc.samp_usage_sccm) plugin
◦ Integration — Microsoft SCCM 2016 Software Usage (com.snc.samp.usage_sccm_2016)
plugin

Important: These Microsoft SCCM plugins will be deprecated in the Tokyo release.
If you are integrating with SCCM for the first time, request and install the Service Graph
connector for Microsoft SCCM application from theServiceNow Store
instead. If
you have already activated one of the Microsoft SCCM plugins on your ServiceNow
instance, use the Migration Readiness Tool for Service Graph Connector for SCCM store
application to prepare your instance for migration from the Microsoft SCCM plugin to the
Service Graph connector. See Service Graph connector for Microsoft SCCM
for more
information on the Service Graph connector.
2. Optional: If you want to reclaim unused and underused software, set up SCCM for Client
Software Distribution (CSD).
a. Request the Client Software Distribution
(com.snc.orchestration.client_sf_distribution)
plugin.
Client Software Distribution requires a subscription to Orchestration .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
b. In SCCM, create an application, install collection, and uninstall collection for any software
that you have not already created these items for.
(Optional) After you create these items, you can then deploy the application for both
the install and uninstall collection. For detailed instructions, see Create and deploy an
application with SCCM
and Create collections in SCCM
from the Microsoft SCCM
product documentation.
To reclaim software, an application, install collection, and uninstall collection must exist for
the software. If you installed software manually or using an SCCM legacy package, you must
still create these items so that you can reclaim the software.

Note: If you installed software using an SCCM legacy package, you can use Microsoft
Package Conversion Manager
3. Setup the MID Server

to create the application.

.

4. Configure SCCM and the ServiceNow AI Platform

.

5. To offer an application from the Service Catalog, create a catalog item

.

What to do next

Once you've configured SCCM and discovered your software applications, you can create
reclamation rules to identify unused or underused software, view software usage, and reclaim
software.

Using Software Asset Workspace
Use the Software Asset Workspace, the intuitive and streamlined user interface of the Software
Asset Management application, to manage software licenses, compliance, and optimization.

Create entitlements in workspace
Create entitlements in the Software Asset Workspace to enter your license details and allocate
purchased software rights to users or devices.

Before you begin

These instructions are for using the standard form for creating software entitlements one
at a time. You can also use the step by step approach of a guided walk-through for creating
entitlements. If you already have software entitlement details entered in a spreadsheet, you can
also import them using the bulk import functionality.
When you start creating the entitlement it is in the build status. Once you publish the
entitlement, the status changes to in use and makes the entitlement eligible to be included in the
reconciliation process.
If you installed SaaS License Management, a software model is generated automatically after you
create an integration profile. Create an entitlement for the software model to track software used
against software owned.
if you installed the SAP publisher pack, see Create entitlements for SAP.
You can also create entitlements for RHEL and Citrix publisher packs. For details on the
entitlement form fields for RHEL, see Software Entitlement form.
Role required: sam_admin or sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select Create entitlement to open the Create new entitlement dialog box.
You can also navigate to the Create new entitlement dialog box from Software asset >
Software Asset Workspace > License operations

3. Select Fill out the details in a standard form and then select Next.
4. In the Create New Software Entitlement page, fill in the fields.
For a detailed description of the fields, see Software entitlement fields.
5. Select Save.
After you save the entitlement, the Allocations, General, Financial, and Contracts tabs
appear on the page. You can now add details in these related tabs.
6. Once you have entered the required details, select Publish.
The entitlement is created and state of the entitlement is changed to in use from build. The
entitlement is ready to be picked up for the reconciliation process.
You can perform additional configuration on the new entitlement by entering details in the
other tabs such as Contracts, Downgrade Rights, Expense Lines, Entitlement History. For a
detailed description of the fields in these tabs, see Software entitlement fields.
Related topics
Create device allocation
Software entitlement fields
Create maintenance entitlements in workspace
Define license details, for all publishers other than Microsoft in the Software Asset Workspace.
Create maintenance entitlements to manage all your software license maintenance needs such
as start and end dates of your contracts and software upgrades.

Before you begin

Role required: sam_user or sam_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Click Create entitlement to open the Create new entitlement dialog box.
You can also navigate to the Create new entitlement dialog box from Software asset >
Software Asset Workspace > License operations.
3. Select Standard form and then click Next.
The Create New Software Entitlement page opens and the entitlement is in build status.
4. On the Create New Software Entitlement page, fill in the mandatory fields and select
Maintenance in the License type field.
For a detailed description of all the fields, refer to Software entitlement fields.
If the Next Version field is populated in the software model that the maintenance entitlement
is associated with and the metric group selected in the maintenance entitlement is Common,
then the maintenance entitlement is updated with the next version of the software model. Next
version is applicable only for the Common metric group.
5. Once you have entered the required details, click Publish.
The maintenance entitlement is created and state of the entitlement is changed to in use from
build. The maintenance entitlement is ready to be picked up for the reconciliation process.

Note: If you purchase a perpetual entitlement and associate only some of the rights
of that entitlement with a maintenance entitlement, your perpetual entitlement is
automatically split into two entitlements. For example, you purchased a perpetual
entitlement with 50 active rights (E1). You associate 20 of these rights with 20 rights of
a maintenance entitlement. Your E1 perpetual entitlement is now automatically split into
two entitlements: one perpetual entitlement (E1) with 20 active rights (and 50 purchase
rights) associated with 20 rights of the maintenance entitlement (M1) and another
perpetual entitlement (E2) with 30 active rights without any maintenance association and
no purchased rights.
6. You can perform additional configuration on your new maintenance entitlement record.
For a detailed description, see Software entitlement fields.
You can't add user or device allocations for maintenance entitlements.
a. Enter information pertaining to finance such as the vendor from which the asset was
purchased, the invoice number, in the Financial tab.
b. Enter information relating to contracts such as the lease contracts, the expiration date of the
warranty in the Contracts tab.
c. Link related perpetual entitlements to your maintenance entitlement from the Related
Entitlements related list.
i. Select the Related Entitlements related list and then click New.
The Create New Related Entitlement form opens in a new tab.
ii. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
Create New Related Entitlement form
Field

Description

Active rights

Number of rights that you want to grant to the related perpetual
entitlement.

Software
Entitlement

Software entitlement that you are linking the related perpetual entitlement
to. This field populates automatically.

Related
Entitlement

Related perpetual entitlement that you want to link.

Domain

Domain that the related perpetual entitlement applies to. The default
value is global.

iii. Click Save.
To remove the relationship between the perpetual and maintenance entitlement, remove the
entitlement from the Related Entitlements related list in the maintenance entitlement.
If the entitlement has split and you've deleted the maintenance entitlement, the perpetual
entitlement is not removed.
d. View the downgrade rights for the software model associated with the maintenance
entitlement in the Downgrade Rights related list.
e. To manage license keys, and specify which licenses keys are allocated to entitlements, click
the License Keys related list
f. To track the cost of your software over its lifecycle, click the Expense Lines related list.
g. To view the history of all maintenance entitlements that you have purchased, click
theEntitlement History related list.
For example, if you purchased two maintenance entitlements, M1 (which is now retired) and
M2 (currently in use), the Entitlement History related link displays both M1 and M2.
h. To view the history of the newly upgraded software model related to your entitlement and the
previous software model, click the Upgrade History related list.
7. Once you have completed filling in the additional configuration details, click Save.
Create Microsoft Software Assurance entitlements in workspace
Define license details for Microsoft Software Assurance (SA) in the Software Asset Workspace
to manage your contracts start and end dates, software upgrades, and related software
entitlements.

Before you begin

Role required: sam_user or sam_admin

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select Create entitlement to open the Create new entitlement dialog box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
You can also navigate to the Create new entitlement dialog box from Software asset >
Software Asset Workspace > License operations.
3. Select Standard form and then select Next.
The Create New Software Entitlement page opens and the entitlement is in build status.
4. On the Create New Software Entitlement form, fill in the required fields and select SA in the
License type field.
You must enter the number of rights to be granted for the SA entitlement in the Active rights
field.
For a detailed description of the fields related to all entitlements, see Create entitlements in
Software Asset Management classic.

Note: You can't add user or device allocations for SA entitlements.
5. Select Publish.
An entitlement appears in the Software Entitlement list.

Note: If you purchase a perpetual entitlement and associate only some of its rights with
an SA entitlement, your perpetual entitlement is automatically split into two entitlements.
For example, you purchased a perpetual entitlement with 50 active rights (E1). You
associate 20 of these rights with 20 rights of a SA entitlement. Your E1 perpetual
entitlement is automatically split into two entitlements: one perpetual entitlement
(E1) with 20 active rights (and 50 purchase rights) associated with 20 rights of the SA
entitlement (M1) and another perpetual entitlement (E2) with 30 active rights without any
SA association and no purchased rights.
6. To perform additional configuration, select your new software entitlement record from the
Software Entitlements list.
a. To link related perpetual and SA entitlements, use the following steps:
i. Select the Related Entitlements related list and then select New.
The Create New Related Entitlement form opens in a new tab.
ii. On the form, fill in the fields.
Create New Related Entitlement form
Field

Description

Active rights Number of rights that you want to grant to the related perpetual or SA
entitlement.
Software
Entitlement

Software entitlement that you’re linking the related perpetual or SA
entitlement to. This field populates automatically.

Related
Entitlement

Related perpetual or SA entitlement that you want to link.

Domain

Domain that the related perpetual or SA entitlement applies to. The default
value is global.

iii. Select Save.
To remove the relationship between the perpetual and SA entitlement, remove the
entitlement from the Related Entitlements related list in the SA entitlement.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
If you delete either the perpetual or SA entitlement that is linked, the other entitlement isn't
deleted.
If the entitlement has split and you have deleted the SA entitlement, the perpetual
entitlement isn’t removed.
b. To link your software to a newer version as part of your maintenance contract, select the
Upgraded Entitlements related list.

Note: This related list is only available if you selected Step-up as the entitlement
license type.
If the Next Version field is populated on the software model, entitlements with active SA are
updated to the new version of the software model.
After you have linked your related entitlements, if there aren't enough SA rights to cover the
perpetual entitlement rights, an error message displays.
c. To view all previously related entitlements that are linked, select the Entitlement History
related list.

Note: Validation is run against the active rights of all related entitlements
automatically. If there's an error with the calculation, a message with additional
information on how to resolve the problem is displayed.
7. Select Update.

Import bulk entitlements in workspace
You can import multiple entitlements at one go in the Software Asset Workspace.

Before you begin

Role required: sam_user or sam_admin

About this task

The entitlement import records are stored in the Entitlement import [samp_bulk_import]
table. The Publisher part number, Product, and Publisher columns in the Entitlement import
[samp_bulk_import] table offer drop-down lists for value selection.
You can leverage the Activity center in the Software asset overview landing page to view import
errors and the import status.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select Create entitlement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
3. In the Create new entitlement dialog box, select Import multiple entitlements from an Excel
file and select Next.
4. In the Create New Entitlement Import page, select Download template to download a
spreadsheet template (.xlsx).
You can add software entitlement fields to the template to include additional fields in your
import. Add each field as a new column in the template. The column name must match the
field label exactly. Besides the Publisher, Product, Version, Edition, Platform and Language,
the Install condition name column is also taken into account to find the correct software model
while importing entitlements.
You can include base system software entitlement fields as well as your custom software
entitlement fields. Custom choice columns (where the type is Choice) created in the Asset
[alm_asset] or Software Entitlement [alm_license] table are also supported.

Note: By default, the Unit cost column in the spreadsheet takes into account the
currency that your system is set to. However you can manually change the currency and
the Software Asset Management application will honor the currency that you specify.
To specify a currency, enter the currency code followed by a semicolon and the cost.
For example, EUR;200. Valid currency codes are the ones listed in the Currency
[fix_currency] table and have the Active column set to true.
In the spreadsheet template, if the Publisher Part Number column doesn't have a value
or the value is invalid and the Publisher and Product columns have valid values, then
during the import process, a software model is automatically created. The source type
entitlement_import gets stamped to the automatically created software model. The
system property com.snc.samp.smcreation_on_entitlement_import is used to control the
software model creation on entitlement import. If you don't want the automatic creation of
software models during the import process, you can set this property to false.
5. Enter the entitlement details in the template and select Attach File to upload the spreadsheet.
Once the file is uploaded, the name of the file appears and the Description field is
automatically populated. You can change the description to make it more specific.
6. Select Import.
An import record is created that retains the history of the upload for you to view later.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
A confirmation message appears informing you that the import of entitlements is in progress.
Once the import record is processed, the Status field displays one of the following values:
Completed, Completed with errors, or Failed.
7. Select the link in the confirmation message to check the status of the record.
The License operations view appears displaying the entitlement record in the Entitlement
Import page
8. Open the entitlement record to view its details.
9. Click the Entitlements tab to view the list of entitlements that got successfully created.

Note: The Entitlements tab only appears if the Status field displays the values,
Completed, or Completed with errors.

10. If any errors occur and the status says Completed with errors, click Review import errors.
The Review entitlement import errors page opens containing two tabs:
◦ Import errors: displays records whose error status is Needs review.
◦ Relate entitlements: lists entitlements, such as maintenance entitlements, that are in the
build state and can be linked to the base entitlements.
11. Select the import error record to view the errors.
If an import error record doesn't have a software model but the Publisher and Product fields
have valid values, then on selecting Import, a software model is automatically created and the
status of the record changes to Manually fixed.
For a detailed description of the entitlement import error fields, see Entitlement import error
fields
12. Correct the errors and select Import.
The entitlement is successfully created. Further processing of the entitlement continues such
as validation of downgrade models for the entitlement. For more information on resolving
errors, see Entitlement import error actions.

Install Software Asset Management Guided Experiences
Install the Software Asset Management Guided Experiences (com.sn_sam_playbook)
application for step-by-step guidance for completing tasks in your daily software management
®
activities.The application includes demo data and installs related ServiceNow Store
applications and plugins if they aren’t already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Activate Software Asset Management Professional Master Workspace
(com.sn_samp_master_ws) plugin. This plugin will internally activate the Software Asset
Management Professional (com.sn_samp_master) plugin and Software Asset Workspace
(sn_sam_workspace) store application.
Role required: sam_admin or sam_user

About this task

The following items are installed with the Software Asset Management Guided Experiences
application:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
• Plugins
◦ Software Asset Management Professional (com.snc.samp)
◦ com.glide.playbook_experience.config
• Store applications:
◦ Playbook Experience (sn_playbook_exp)
◦ Playbook Experience Components (now_playbook_exp)
◦ Software Asset Workspace (sn_sam_workspace)
• Tables

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Software Asset Management Guided Experiences (com.sn_sam_playbook) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they’ll be installed, are currently installed, or
must be installed. If any plugins or applications must be installed, you must install them before
you can install the Software Asset Management Guided Experiences application.
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.

Create entitlements using the guided walk-through
Use the guided walk-through playbook for a step-by-step process of creating entitlements.

Before you begin

You can create perpetual entitlements with or without a publisher part number. You can also
create SaaS entitlements to manage software subscriptions of your pure SaaS and hybrid
applications.
The guided walk-through takes you through the entire process of creating an entitlement.
Initially the entitlement is in the build status when you start creating it. Once you publish the
entitlement, the status changes to in use and makes the entitlement eligible to be included in the
reconciliation process.
The process of creating an entitlement is organized into lanes. The lanes appear in the left pane
of the page. Each lane has a few tasks that you are asked to complete. After you complete a task,
click Mark Complete to move to the next task. You can click Save at any time in the process
to save your changes and return to the playbook later. You can also click Cancel to abort the
entitlement setup at any point of time. While you are performing a particular task, a status of in
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
progress appears for that task. As you mark a task complete, the status of that task changes to
complete. Once you complete all the tasks in a lane, you move to the next lane.
Role required: sam_user or sam_admin

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
The Software asset overview page appears.
2. Select Create entitlement.

3. Select Guided step by step walk-through and select Next.
The Create New Software Entitlement page opens and the status of the entitlement is in build.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
4. Select whether you are creating an entitlement for an on-premises product or for a SaaS
product.
◦ If you select on-premise, enter the fields listed in the on-premise entitlement table below.
◦ If you select SaaS, enter the fields listed in the SaaS entitlement table below.

Note: You are asked to select on-premise or SaaS only if the Software Asset
Management - SaaS License Management Integrations (sn_sam_saas_int)SaaS plugin is
activated. If this plugin is not activated, then the product type is automatically selected as
on-premise.
On-premise entitlement
on-premise entitlement fields

Description

Do you have a PPN

Select if you have a publisher part number (PPN) for
setting up the entitlement.

Publisher Part number

Enter the PPN if you have one; else create a custom
PPN by clicking the link in the informational message
to take you to the Custom Part Numbers page.

SaaS entitlement
SaaS entitlement fields

Description

Has an integration profile being set-up

If you have an integration profile already setup, select it; else, click the appropriate link to
create a direct or a SSO integration profile.

Note: Integration profile is needed to
view software usage information and
optimize stale licenses.
Are you using a direct or SSO integration
profile for this SaaS product

Select the type of profile, direct or SSO, that
you are using for this SaaS product.

Select an integration profile

Based on the type of profile you specified,
select an integration profile.

5. Select a software model for the entitlement.
Once you complete all the tasks in the Product Details lane, you can move to the Entitlement
Details lane.
6. Select Entitlement Details.
If you entered a PPN, then the metric group, agreement type, and license type are
automatically populated. You can change the values if required.
7. Enter a value in Asset tag to track the asset through its life cycle.
8. Select a value in License metric for the license group that the software license is counted
against when reconciliation is run.
If you select Per Core or Per Core (with CAL), you need to enter values in the following fields:
a. In Rights per license pack, enter rights associated with each pack that is purchased for
Microsoft Per Core or Microsoft Per Core with CAL licenses.
b. In Number of packs, enter the number of packs for Microsoft Per Core or Microsoft Per Core
with CAL licenses.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
9. Enter the number of rights purchased in Purchased rights.
If you've specified a Microsoft Per Core or Microsoft Per Core with CAL license type, this field
is automatically populated. This value is based on the values entered in the Rights per license
pack field multiplied by the value in the Number of packs field.
10. Enter the cost of the software in Unit cost.
Once you complete all the tasks in the Entitlement Details lane, you can move to the Additional
Details lane.
11. Select Additional Details.
12. Enter the name of the company that this asset belongs to in Company.
13. Enter the location where the license is used.
For example, you can specify a specific site, country, or region.
14. Enter the department of the person assigned to this software license in Department.
15. Enter the user or department with financial ownership of the asset in Owned by.
The asset owner can be different than the manager.
16. Enter the financial details for the vendor in Vendor, Invoice Number, Request Line,
Purchased, Opened, GL account and Cost Center fields.
17. Enter contract details in Lease Contract, Warranty expiration, Support Group and Supported
by fields.
Once you complete all the tasks in the Additional Details lane, you can move to the Review
lane.
18. Select Review to show all the details that you have entered in all the lanes.
19. You can choose to edit any field, else select Finish.
20. Select Publish to publish this entitlement for use.
The entitlement is created and state of the entitlement is changed to in use from build. The
entitlement is ready to be used for the reconciliation process.

Create a software model in the Software Asset Workspace
Create a software model in the Software Asset Workspace. Add product details that are used to
connect software rights that you purchased with software installations that are discovered on
your system.

Before you begin

Role required: sam_user, sam_admin, or model_manager

About this task

You can manually create a software model. However, you can leverage the Software Asset
Management Content Service Library to automate the creation of software models through
their relationship to software entitlements. While creating or importing a software entitlement,
specifying a publisher part number automatically creates a software model (if needed) or links to
an existing software model.
You must manually create a software model if a publisher part number isn’t available, or a
publisher part number doesn’t exist in the Content Service Library, or if you are creating a
software model for a custom product.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select the License operations view.
3. Under the Licensing section, select software models.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


<!-- page 212 -->
4. Select New.

5. On the Create New Software Model page, fill in the details in the fields.
See Software model fields.
6. Select Save.
After you save the software model, the General, Suite Components, Suite Parents, and the
Product Catalog tabs appear on the page. You can now add details in these related tabs.
7. Specify whether your software publisher is part of a suite.
◦ To designate your software model as a suite parent, select Suite Parents and add all software
included with the suite.
◦ To designate your software model as a suite component, select Suite Components and add
the parent suite.

Note: If you have added a discovery map to your product details, predefined suites are
used and suite components are created automatically for known suite parent.
8. View all the product lifecycles associated with your software model by selecting Software
Product Lifecycle.
Select New to create a custom product life-cycle.
9. View the override license cost for your entitlements by selecting Override License Cost.
10. Set the attribute value by selecting the Metric Attributes and complete the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

212


<!-- page 213 -->
When you add an attribute value, entitlements with this publisher information associated with
them automatically have the Metric Group field populated. Based on the metric group, only
license metrics related to the publisher are available.
11. Associate your software model with a vendor by selecting Vendor Catalog Items
complete the form.

and

12. Specify the number of devices or users that are accessing the software by selecting Client
Access and complete the form.
13. To create a new record for the software downgrade rights, select Downgrade Rights and
complete the form.

Note: If your software model has a discovery map associated with it and the discovery
map has downgrade rights, the downgrade rights are populated automatically.
Downgraded versions of the software appear in a hierarchical list. For more information,
see Downgrade Rights.
14. To allocate software licenses to all the members of an assignment group, select Group
Allocations and complete the form.
For more information about creating a group allocation record, see Create group allocations.
15. To enable self-service capabilities for the software that is associated with your software model,
publish the software model to your service catalog.
a. Select Publish to Software Catalog.
The Publish <software-model> to Software Catalog dialog box opens.
b. On the dialog box, set the Category field to Software.
c. Select OK.

Run software reconciliation in the workspace
Reconciliation is run as a scheduled job (default is weekly), but you can also run reconciliation
manually to reconcile software products in the Software Asset Workspace environment ondemand.

Before you begin

Reconciliation is run for products that have software entitlements or software installs. Grouping
and subgrouping are supported so you can narrow the compliance results.
When running reconciliation manually, allow enough time for the process to complete. For faster
results, narrow the scope by selecting specific publishers.
Role required: sam_user or sam_admin

Procedure
1. Navigate to the Run Reconciliation dialog box from either of the two ways:
◦ Software Asset Workspace > Software asset overview > Run Reconciliation
◦ Software Asset Workspace > License usage > Run Reconciliation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

213


<!-- page 214 -->
Note: If domain separation is enabled on your instance, then the Domain filter dropdown appears in the Run Reconciliation dialog box.
2. Select a particular publisher for which compliance should be calculated.
You can also select all publishers.
3. To narrow results further, select a group or subgroup.
Available group and subgroup values include None, Country, Department, Company, Region,
and Cost Center.
4. Select Run Reconciliation.
The reconciliation process may take some amount of time to complete. Once reconciliation is
complete, the reconciliation results are shown in the Reconciliation tab.
Reconciliation results
Field

Description

Number

Unique identifying number that is generated during the reconciliation process.

Last
Date of last reconciliation run.
reconciled
Status

Status of the reconciliation.
◦ Completed
◦ In Progress
◦ Failed

Ran for

All publishers, or specific publishers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

214


<!-- page 215 -->
Field

Description

Publishers Only shown if publishers were specified on which to run reconciliation.
Group

Group specified on which to run reconciliation. Values include None, Country,
Department, Company, Region, and Cost Center.

Subgroup

Subgroup specified on which to run reconciliation. Values include None,
Country, Department, Company, Region, and Cost Center.

Progress

Percent complete and progress bar for the reconciliation run.

Progress
summary

Specific step within the reconciliation process.

Note: This list column is not shown by default. You can personalize your
list column settings to add it, if desired.

Updated

The date and time when the particular reconciliation process was completed.

Generate an Effective License Position (ELP) report
Generate an ELP report to gain detailed insights into the consumption details of different groups
within your organization.

Before you begin

Role required: sam_user

About this task

An ELP report groups your data on existing reconciliation groups, by consumption, without
having to rerun the reconciliation process.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select License usage.
3. Select ELP Grouping.
4. Select Create ELP Grouping Report.
5. In the Select Grouping Choices box, enter a publisher, product, and group in their respective
fields.
You can optionally also select a subgroup from the Subgroup field to further divide your data.
6. Select Confirm choices.
The results appear in the form of records in the ELP Grouping report results page. Every time
you generate a report, a grouping result record gets created.
At any given time, only one grouping result exists for a particular publisher and product.
7. Optional: Select a record to view the record details page.
You can view the results for every ELP report that you have run in the ELP License Position
Grouping Reports tab. Among other details, each record displays the average price, total
price, licenses required for each publisher and product, along with the edition and the group
value.
8. Select the display name for a report to view the related list of the consumptions that
contributed to the ELP grouping record.
The Required by device related list shows you a list of devices that require licenses, within the
specific category that you selected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

215


<!-- page 216 -->
The following screenshot is an example for Microsoft Office 2016 Professional, where Sales is
the selected group. You can view the 29 devices from Sales that require licenses.

Create a software removal candidate in workspace
Removal candidates reclaim software resources in your environment. They are created
automatically from reclamation rules or can be created manually.

Before you begin

Role required: sam_admin or sam_user

About this task

Software reclamation is integrated with Workflow and Client Software Distribution to automate
the process of uninstalling software from devices and reclaiming software rights. However, you
can also create a removal candidate manually. The following steps are for manually creating a
removal candidate.
Starting from the Zurich release, the reclamation workflow can also be completed using the
Software Reclamation Flow in the Flow Designer application with additional error handling
functionality.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select License usage.
3. Select the Removal candidates tab.
4. Select New to open the Create New Removal Candidate page.
5. On the form, fill in the fields.
Removal candidate form
Field

Description

Number

Unique removal candidate number that is
automatically generated.

Assignment group

Automatically set to the software managers
group authorized to respond to removal
candidates.

Assigned to

Person primarily responsible for working on
this task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

216


<!-- page 217 -->
Field

Name

Description

Removal candidate name that is
automatically generated. Contains the
software installation display name.

Note: If you are using the bulk
reclamation functionality, for the name
to be generated, at least one software
installation must be selected in the
removal candidate form. If no software
installation is selected, a name isn't
generated and the Name field is empty.
If you add software installations and
later decide to remove all of them, the
Name field returns to being empty.
Description

Description of why the task exists and what
the user must do if they receive an approval.

State

Current state of the removal candidate.
◦ Attention Required
◦ Ready
◦ Awaiting User
◦ Awaiting Approval
◦ Awaiting Revocation
◦ Closed Complete
◦ Closed Skipped
◦ Closed Canceled

Opened

Date the task was opened.

Closed

Date the task was closed.

Justification

Justification for becoming a removal
candidate.
◦ Low Usage (default)
◦ Unallocated
◦ Unlicensed
◦ Restricted Software

Applies to

Item type to which the reclamation rule
applies.
◦ Installed Software
◦ Subscription Software
◦ Engineering App License

Software installation

The software installation being reclaimed.

Engineering App License

The Engineering application license that you
want to reclaim.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

217


<!-- page 218 -->
Field

Description

Note: Only appears if Engineering

App License is selected in the Applies
to list.
User

Name of the user assigned to the software
installation.
This value can be changed so that another
user receives the notification of software
being uninstalled.
If the Bulk Reclamation check box is
selected, this becomes a mandatory field.

User subscription

The user to whom this subscription is
allocated.

Inactive days

The number of days for which a user's
subscription has been inactive.
This field is visible only when the value in the
Justification field is Low Usage and the User
subscription field is not empty.

Bulk Reclamation

Select this check box to reclaim multiple
software installations.
Once you select this check box, the Software
installation field is no longer visible. To add
software installations, refer to the sub steps
mentioned in Step 6.

Configuration item

The device on which the software is installed.

Reclamation rule

The reclamation rule that created the removal
candidate.

Rights to reclaim

The number of rights that you want to reclaim.
For example, you have 100 rights installed on
a license server but you want to reclaim only
40 rights.

Note: Only shown if Engineering App
License is selected in the Applies to
list.
Potential savings

Estimated cost of savings if all removal
candidates are in the Closed Complete state,
meaning the software was uninstalled and
the rights were harvested (unused rights *
average price per right from entitlements).

Notify user

Check box for notifying the user assigned
to the hardware on which the software is
installed, requesting permission via email to
remove the software.

Configuration item

The device on which the software is installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

218


<!-- page 219 -->
Field

Description

Activity
Work notes

Used to track the actions that have been
performed on this task.

6. Select Save.
The removal candidate record is created. If you selected the Bulk Reclamation check box, the
state of the removal candidate changes to Attention Required. Perform the following sub steps
to add software installations before proceeding to the next step. If you didn't select the Bulk
Reclamation check box, proceed to the next step.
a. Select New in the Software Installation related list.
b. Select a software installation and select Save.
The software installation you added appears in the Software Installations related list. The
state of the removal candidate moves from Attention Required to Ready and a name is
generated in the Name field. Continue to select New to add more software installations.
If you decide to remove all software installations, then the state reverts back to Attention
Required and the name no longer appears in the Name field. For the name to be generated
and for the removal candidate to be in Ready state, at least one software installation must be
selected in the removal candidate form.
7. Select Reclaim.
Once your software installation is reclaimed and removed from your system, the Software
Installation column becomes empty. You can refer to the following fields on the Software
installation related list to give you insights into the history of the reclaimed software
installation.
◦ Display name
◦ Product
◦ Publisher
◦ Software model
You may select any action button on the form to further configure the removal candidate.
Action buttons are dependent on the removal candidate's justification and state.
Action buttons
Action

Description

Update

Update the removal candidate.

Resume Reclaim

Verify the completeness of data for
processing.
This button is displayed when the state of the
reclamation candidate is Attention Required.

Close Complete

Reclaim rights and close the removal
candidate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

219


<!-- page 220 -->
Action

Description

Close Skipped

Close the removal candidate without
reclaiming rights.

Delete

Delete removal candidate.

Reclaim software
Optimize your environment by reclaiming or removing installed software that is not being used or
used infrequently.

Before you begin

Role required: sam_admin

About this task

Reclaiming software involves a workflow to remove software for a user. You can reclaim software
for multiple reasons such as low usage, optimization generated due to consolidation, or
overlapping subscriptions. The reclamation process can be managed manually through the
creation of tasks or automatically using the Client Software Distribution (CSD 2.0) capabilities.
You can select Show Workflow at any point of time in the reclamation workflow to see the
current stage the workflow is in. For information on CSD 2.0, see Client Software Distribution 2.0
application .
Starting from the Zurich release, the reclamation workflow can also be completed using the
Software Reclamation Flow in the Flow Designer application along with additional error handling
functionality.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace.
2. Select License usage.
3. Select the Removal candidates tab.
4. Select to open a removal candidate record.
Ensure that the Assigned to field has a value. If not, select a value. Typically, the sam admin
role takes ownership of the workflow and ensures that a group is mentioned in the Assignment
group field. Having a group specified in the Assignment group field ensures that the approval
goes to the correct group. The assignment group consists of users who can approve or reject a
request to keep the software.
5. Select Reclaim
The state of the removal candidate record changes from Ready to Awaiting User. An email
notification is sent to the user to whom the software license is assigned. The user details are
mentioned under the removal candidate section.
An email notification is sent if the Notify user check box is selected in the reclamation rule
record. If you don't select the Notify user check box, the task and email isn't sent to the user.
If the user is an ITIL user, then both email and the approval task will be created for the user.
However, if the user is not an ITIL user then only an email is sent to the user.
The email mentions that the software is going to be reclaimed since it's not being used and
provides the user with following two options:
◦ Yes: indicates keeping the software.
◦ No: indicates removing the software.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

220


<!-- page 221 -->
6. Select Yes or No.
If the user selects Yes, the following steps take place:
a. A task gets created for the removal candidate record.
b. The state of the removal candidate record changes to Awaiting Approval as a member of
the assignment group needs to approve the request for keeping the software.
c. A member of the assignment group approves or rejects the request.
▪ If approved, the request in the email, the removal candidate record automatically moves to
the Close Skipped state.
▪ If the request is rejected, then the state of the removal candidate record changes to
Awaiting Revocation which is handled by the sam admin role.

Note:
In case CSD 2.0 is not installed then the sam admin can assign the request to an
individual who can manually uninstall the software. If CSD 2.0 is installed then
the software is automatically removed. For more details, refer to the CSD 2.0
documentation.
If you have optimizations generated for Microsoft 365 products for low usage,
consolidate, or overlapping subscription then you can automatically remove the
subscriptions from the Microsoft 365 portal.
If you have integrations or API support reclamations, users will be removed
automatically from the portal.
▪ If the installations or subscriptions are manually removed, then the sam admin role
must manually mark the workflow as Close Complete. However if the process happens
automatically then the system automatically updates the workflow record as Close
Complete.
If the user selects No, the following steps take place:
a. The state of the removal candidate record changes to Awaiting Revocation.
b. Based on the scenarios mentioned in the above note, software removal takes place.

Note: For removal candidates that are grouped into low usage or overlapping
justifications, you do not need to manually remove subscriptions as auto reclamation
is performed for these two justifications. Fore more information on justifications, see
Software installation optimization and removal.

Create a catalog request to reclaim assets
Create a catalog request to efficiently reclaim software assets when an employee leaves an
organization or moves to a different role.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to Service Catalog.
2. In the Service Catalog page, enter Reclaim asset in the Search catalog field on the righthand side of the page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

221


<!-- page 222 -->
3. Select Reclaim Asset.
4. On the form, fill in the fields.
Reclaim Asset form
Fields

Description

Requested by

The role of the person, such as HR, manager,
or employee, who creates this catalog
request.

Requested for

Name of the person for who you are
submitting the catalog request.

Employee separation

Whether the person for who you are
submitting the asset reclamation is leaving
the organization or moving to a different role.

Asset

Assets assigned to the person for who you
are submitting the asset reclamation.

Reclaim date

The date by which you want the asset
reclaimed by. You can enter today's date or a
date in the future.

Reclaim method

The method you intend to use to collect the
assets from the departing employee. You can
pick up the assets, the employee can drop
them off, or ship them to the organization.

Legal hold method

If the assets need to be kept on hold because
of any legal reasons.

Notes/Special instructions

Any instructions that you may want to
mention.

5. Select Submit.
The asset reclamation request is created. Once the request is created, the sam_user needs to
close all the tasks mentioned in the request. For more details, see Close an asset reclamation
request.
Close an asset reclamation request
Close an asset reclamation request to efficiently reclaim software assets when an employee
leaves an organization or moves to a different role.

Before you begin

Role required: sam_user or asset.

Procedure
1. Navigate to Inventory > Asset Reclamation > Asset Reclamation Requests.
2. Open the request that you want to fulfill.
In the Software Asset Reclamation Lines related list, a device reclamation line item is created
for each device that is returned, has a corresponding CI record, has software installations on
it, and that device was selected in the Reclaim Asset form. For example, if five computers were
assigned to an employee, then for each computer a separate device reclamation line item is
created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

222


<!-- page 223 -->
An extra user reclamation line item is created if the Employee Separation check box was
selected in the Reclaim Asset form.
3. Click the device reclamation line item.
The Software Asset Reclamation Line page opens, where a software asset reclamation task
titled Receive, evaluate and update asset is created.
4. Click the Receive, evaluate, and update task.
The Software Asset Reclamation Task page opens. You now need to manually receive the
asset, evaluate if the asset can be redeployed or reused, and then update the asset.
5. Select values for the Assignment group and Assigned to fields.
6. Click Close Task once you have completed all the tasks.
The line item state now changes to Closed Complete
For each software asset reclamation line item where the type is device reclamation, perform
steps 3 to 6.

Note: Once you receive the asset from the employee, navigate to the Asset page and

change the values for the State and Assigned to fields. Since the asset is no longer
assigned to a user, ensure that the Assigned to field is empty and the State field is not in
the In use status.
If the asset that was updated has device allocations, then a software asset reclamation line
task titled Remove device license allocations is created. All the device allocations records on
that Asset (CI) are removed, and the task is marked as Closed complete.
If the asset that was updated has software install records, then a software asset reclamation
line task titled Remove software installs is created. All the software install records on that
Asset (CI) are removed, and the task is marked as Closed complete.
Once all the device reclamation tasks are complete and if a user reclamation line item is
not created, then the status of the catalog request changes to Complete. However, if a user
reclamation task is created, then you need to take care of the following steps to complete and
close the user reclamation line item.

Note: A user reclamation task is created if the Employee Separation check box was
selected in the Reclaim Asset form.
A user reclamation workflow is initiated once the reclaimed date mentioned in the Asset
Reclamation Request form has lapsed. A user license allocation task titled Revoke user
license allocations is automatically created to remove all user license allocations. A few
manual tasks are also created that need to be completed.
7. Complete the following manual user reclamation tasks:
◦ Revoke SSO access (if the employee had any SSO provider plugin enabled)
◦ Revoke Citrix access (if the employee had the Citrix plugin enabled)
◦ Revoke SAP access (if SAP publisher pack plugin was enabled)
◦ Revoke user subscriptions. Open the task and ensure that removal candidate records are
created for each user subscription record.
8. Once all the user reclamation tasks are closed, the status of the catalog request changes to
complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

223


<!-- page 224 -->
Create and manage reports in workspace
Create and manage your report tiles in the Software Asset Workspace.

Before you begin

Role required: sam_admin or admin

About this task

All the base system Software Asset Management reports and the custom created reports are
stored in the SAM Workbench Report [samp_workbench_report] table. List reports are supported
by default. For creating other types of reports, you need to create a UIB page in the Software
Asset Workspace with the necessary data visualization. A parameter called reportSysId
needs to be passed to the UIB page. You can utilize the UIB page's route in the report tile creation
form after it has been built.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License usage.
2. In the License usage view, select the Reports tab.

3. Select Manage Reports.
4. In the Reports list view page, select New.
The Create New SAM Workbench Report page appears.

5. Fill in the details in the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

224


<!-- page 225 -->
Field

Description

Title

The title of the report tile.

Description

A brief description of the report tile.

Type

The type of the report. For example, list, bar,
pie chart. The default value is List.

Icon

The unique icon identifier from the Now
Design System icon library. Examples include
chart-bar-group-fill, chart-pie-fill. The default
value is list-fill.

Route

This the path taken by a report when it is
clicked. This takes you to the list view of
the source table with the specified filter
conditions. This can be routed to any other
page within the Software Asset Management
application provided that the page accepts
the reportSysId parameter. The default
value is list-report.

Source table

The table on which the report is based.

Filter (Set conditions)

The filter to be used on the list report.

6. Select Save.
The new report tile appears on the Reports tab. You may need to reload the Reports tab to see
the new report tile.

View your cluster setup in 360 degrees
Get a 360-degree perspective of your cluster setup to manage license consumption across the
cluster.

Before you begin

Role required: sam_admin

Procedure
1. Navigate to Software Asset Workspace > License usage.
2. Select a publisher card to open the publisher details page.
3. From the Publisher details page, select a software model from the navigation tree on the left
hand side.
4. From the License Metrics Results tab, select the value on the Licenses required column.
5. In the Licenses Required By page, select a cluster from the Cluster column.
The cluster record page opens.
6. Select SAM Cluster 360°.
The cluster setup appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

225


<!-- page 226 -->
7. View the following details on the cluster.
◦ Infrastructure: View entities such as hosts, virtual machines (VMs), host affinity rules, and
software installations in the cluster. Select an entity to view the complete list. For example,
select Software Installs to view all software installations. You can group the software
installations by normalized publisher, normalized product, or by software model results. You
can also select any software installation from the list such as SQL Server to view all SQL
Server software installations in that cluster.
◦ Licensing details: View the software models consuming licenses, allocations, device license
consumption analysis, and ignored installations on the cluster. Select an entity to view the
complete list.
◦ Health issues: View all health issues across products in the cluster. Additionally, view
installations that require your attention to be considered for reconciliation.
The 360-degree view lets you drill down from the top view of an entity to the lowest level to
better understand license composition and remediation actions across the cluster. As an
example, you can select a software model to drill down to view its metric attributes, override
license costs, downgrade rights, software entitlements, and software model results. You
can further select any of these entities, such as software model results, to get to its lowest
denominator.
8. Select Open Dependency View to view the relationship between the nodes of the cluster.
For details on Dependency Views, see Dependency Views map menus and controls .

View calculations for your licenses in workspace
Evaluate the license compliance of software applications by viewing the details for all required
licenses through the Software Asset Workspace License usage view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

226


<!-- page 227 -->
Before you begin

Role required: sam_admin and sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License usage.
2. View the summary of a software model by selecting a publisher from the left pane.
3. View the number of licenses purchased and required by selecting the License Metric Results
tab.
For more information about the fields in the License Metric Results tab, see the License metric
results table in License usage publisher fields in workspace.
4. View the details about the required licenses by selecting a value for a configuration item under
the License required column.

Licenses Required by
Field

Description

Required by (Device)

Name of the configuration item such as
server, cluster, which consumes the licenses.
The Required by (Device) field is replaced by
the Required by (SAP Cloud use type) field
when the publisher selected is SAP and the
product is SAP S/4HANA.

Cluster

◦ If the configuration item is part of any
cluster, the cluster name displays.
◦ If the configuration item is not part of any
cluster, the value is empty.

Assigned to

Name of the user assigned to that particular
configuration item.

Licenses required

Sum of rights that the configuration item
(allocated, not allocated, and installed) uses.

Licensing status

Indicates whether the configuration item is
licensed or not licensed.

Is Virtual

Indicates whether the configuration item is a
virtual or physical host.

5. View all the downgrades being used by the license.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

227


<!-- page 228 -->
This related list only appears if the specified license is used by a downgrade version of the
software. If a downgrade is not using any rights, that downgrade doesn't appear in this related
list.
Downgrades
Field

Description

Software model

Name of the software model.

Rights used

Number of rights used by the license.

Install count

The number of installations being used for
the software model for the specified license.

6. In the Licenses Required By related list, view the details of required licenses by selecting the
value for a device under the License required column.

Licenses required calculation
Field

Description

Licenses required by

The cluster for which the calculations are
shown.

Total

The total number of licenses consumed or
required.

of licenses required

Licensing status

Shows the status of licenses. Licensed
implies that all rights were used. Not
Licensed implies that rights are required.

Allocated not in use

Rights allocated on the cluster but are
unused to license any installations. The value
0 implies that there are no allocations on the
cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

228


<!-- page 229 -->
Field

Description

Note: Allocated not in use are the
rights that are wasted because the
user or device for which these rights
have been allocated does not have the
software installed.
Not allocated in use

Number of rights for license installations, but
not allocated.

Level 1 Relationships

Relationship of hosts to the current
configuration item.

Note: Appears only for server-based
calculators.
Dependency View

Graphically displays an infrastructure view for
a configuration item.

License Metric

Detailed explanation of the license metric.

License Consumption Explanation

A detailed license consumption summary
post reconciliation. The summary gives you a
thorough understanding of how your license
rights are used, the methodology behind
license calculations and the reasoning for the
consumption process.

7. View the infrastructure of a configuration item and the metric attributes applied by selecting
the License consumption breakdown tab.

License consumption breakdown
Fields

Description

Required by

Name of the configuration item that
consumes the rights.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

229


<!-- page 230 -->
Fields

Description

Processors

Number of processors on this configuration
item.

Cores

Numbers of cores in this processor.

Licensable cores

Number of core licenses required to license
this configuration item.

Licenses required

Number of licenses required to license this
configuration item.

Metric attributes applied

Software products from publishers such
as Microsoft require a minimum number
of licenses to be assigned. For example,
Microsoft SQL Server requires a minimum
of 4 core licenses for each processor on a
server. Metric attributes auto-assign these
licenses.

8. View the details of the installations covered by licensing related to the configuration item by
selecting Software installs licensing details.

Software installs licensing details
Field

Description

Normalized display name

The normalized display name of a software
product.

Discovery model

Normalizes the software you own by
analyzing and classifying models to reduce
duplication.

Installed on

Configuration item on which the software is
installed.

Assigned to

Name of the user assigned to this
configuration item.

Unlicensed install

Indicates whether the install is licensed or
unlicensed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

230


<!-- page 231 -->
a. View the licensing status of an install on various hosts within a cluster by selecting a
normalized display name for Per Core and Per Core (with CAL) license metrics.

9. Check the accuracy of the license consumption and view the host affinity rules configured for
a cluster by selecting the Host affinity rules tab.
Host affinity rules can be configured for SQL Server and Windows Server Standard while
determining license consumption. This helps to optimize the number of licenses required and
significantly minimizes the number of licenses required resulting in cost savings.

Host affinity rules
Field

Description

Name

Name of the rule configured for the cluster.

Active

Indicates whether the configured rule is
active or inactive.

Cluster

Name of the cluster where the host affinity
rule is configured.

VM Group

Name of the group of virtual machines.

Host Group

Name of the group of hosts.

Mandatory

Indicates whether the configured rule is
required.

Affinity

Indicates whether the virtual machines live
on a host group.

10. View the suite components for the software model.
This tab appears only if the software model is a suite.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

231


<!-- page 232 -->
Suite components
Field

Description

Suite parent

The parent suites to which the software is
assigned. For example, the parent suite for
several common Microsoft products is a
version of Microsoft Office.

Suite child

The child product or products of the suite.For
example, For example, Microsoft Word
and Microsoft Excel are child products of
Microsoft Office.

Mandatory

Requirement of a suite component. A
suite component can be Optional, Always
Mandatory, or Mandatory Group.

Create group allocations
Create group allocations to allocate licenses to all the members of the assignment group.

Before you begin

Role required: sam_admin or sam_user

About this task

The SAM Manager can add a group allocation record for a software model with valid software
entitlement records to create a user allocation for the group members.

Note: Licenses are allocated to the group members based on the number of unallocated
licenses available for the software entitlement.

Procedure
1. Navigate to Software Asset Workspace > License operations > Software model.
2. Select Group Allocations.
3. Select New.
4. On the Create New Group Allocations form, fill in the fields.
For a description of the field values, see Group allocations fields.
5. Select Save.

Result
• User allocation records are created for the members of the assignment group and listed in the
User Allocations tab.
• The group allocation record is saved in the Group Allocations [alm_entitlement_group] table.

What to do next

View the user allocations list by navigating to any of the following paths:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

232


<!-- page 233 -->
• Navigate to the User Allocations within the group allocation record.
• Navigate to Software Asset Workspace > License operations > Licensing > Software models
and select a software model record. Select the User Allocations tab.
• Navigate to Software Asset Workspace > License operations > Licensing > Software models
and select a software model record. Select the Software Entitlements tab and select a
software entitlement record. Select the User Allocations tab.
Related topics
Allocating licenses to a user group
Group allocations fields

Create device allocation
Create a device allocation for a software entitlement to specify devices that have been granted
rights.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to Software Asset Workspace > License operations.
2. Select Software entitlements.
3. Select a software entitlements record.
4. Select the Device Allocations tab.
5. Select New.
6. On the form, fill in the fields.
Create New Device Allocations form
Display name

Display name for device allocation. This
field value is automatically set based on the
selected Allocated to and Entitlement field
value. This field value appears only when the
allocation record is saved.

Allocated to

The device to which the license is allocated.

Entitlement

Automatically set to the selected software
entitlement.

Quantity

Quantity of licenses allocated to this device.
Default is 1.

License key

License key of the software.

7. Click Save.

Result
• Device allocation record is created for the device and listed in the Device Allocations tab.
• The device allocation record is saved in the Device Allocations [alm_entitlement_asset] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

233


<!-- page 234 -->
Related topics
Copy user or device allocations
Create entitlements in workspace
Allocation management on Software Asset Management

Copy user or device allocations
Copy user or device allocations from one entitlement to the other.

Before you begin

Copy allocations from a source entitlement to a target entitlement to renew expired entitlements
or add a new maintenance. Additionally you can also copy allocations while creating
entitlements that require the same allocations as in another entitlement.
The entitlement from which you want to copy the allocations is referred to as the source
entitlement. The entitlement to which you want to copy the allocations is referred to as the target
entitlement.
User allocations can be copied to only entitlements that support user allocations. Similarly,
device allocations can be copied to entitlements that support device allocations. For details on
license metrics, see Software license metrics.
If the selected user or device is already allocated in the target entitlement, the quantity of that
allocation is incremented.
Prior to copying allocations, ensure that the following prerequisites are met:
• The target entitlement has enough allocations available. The Copy allocations button only
appears when the allocations available on the entitlement is greater than zero. An error occurs
if the number of allocations being copied exceeds the number of available allocations in the
target entitlement
• The target entitlement is in Build, In use, or On order state.
• The target entitlement has enough available rights.
Role required: sam_admin or sam_user.

Procedure
1. Navigate to Software Asset Workspace > License operations > Software entitlements.
2. Open the target entitlement in which you want to copy the user or device allocations.
3. Select the appropriate allocations related list (User Allocations or Device Allocations).
4. Select Copy allocations.
The details of the target entitlement such as allocations available, license type, active rights
appear at the top of the page.
5. Select the entitlement from which you want to copy the allocations from in the Source
entitlement list.
All the details of the source entitlement such as license metric, metric group appear on the
Details page.
6. Select the Source allocations related list and select the allocations.
7. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

234


<!-- page 235 -->
If the copy allocation process is successful, then Submit gets disabled. A message informs
you that the copy of allocations is being processed. You can check the status by clicking the
link in the message.
The link takes you to the Software Asset Job Results [samp_job_log] table. Use the Name
column to search for the job log record, titled Copy Allocations to < >, where the
angle brackets refer to the display name of the target entitlement.
Related topics
Create device allocation

Create consumption rules
Create consumption rules to restrict license consumption to certain entities within your
organization.

Before you begin

Role required: sam_user

Procedure
1. Navigate to Software Asset Workspace > License operations > Consumption rules.
2. Select New.
The Create New Consumption Rule page opens.
3. On the form, fill in the fields.
Field

Description

Display name

Name of the consumption rule.

Company

The subsidiary company for which the con­
sumption rule is created.

Cost center

The cost center within a company for which
the consumption rule is created.

Country

The country for which the consumption rule is
created.

Department

The department for which the consumption
rule is created.

Region

The region for which the consumption rule is
created.

Company children

Select to include the children of the compa­
ny.

Department children

Select to include the children of the depart­
ment.

Cost center children

Select to include the children of the Cost cen­
ter.

4. Select Save.
The new consumption rule appears in the Consumption rules list view. You must link this rule to
one or many entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

235


<!-- page 236 -->
Link consumption rules to entitlements
After you've created a consumption rule, you must link the rule to one or more entitlements.

Before you begin

Consumption rules aren't supported for the following license metrics:
• IBM RVUs
• IBM UVUs
• Workday
• Employee
The Entitlement Consumption Rules related list on the entitlement form doesn’t appear for these
license metrics.
Role required: sam_user

Procedure
1. Navigate to Software Asset Workspace > License operations.
2. Open the entitlement to which you want to link the consumption rule.
3. Select the Entitlement Consumption Rules related list.
4. Select New.
The Create New Entitlement Consumption Rule page opens.
5. On the form, fill in the fields.
Field

Description

Software entitlement

The software entitlement to which you’re link­
ing the consumption rule.

Consumption rule

The consumption rule that you want to link
this entitlement to.

License pool

License pool associated to the consumption
rule. A license pool is a reservation of rights
for a group entity defined on a consumption
rule.

6. Select Save,
The consumption rule appears in the Entitlement Consumption Rules related list.

View discovered engineering licenses in workspace
View a list of all the discovered and normalized software for your engineering applications in the
Software Asset Workspace.

Before you begin

Role required: sam_admin or sam_user
You can view a list of all the normalized publishers and products for your engineering
applications. Additional information such as the version, quantity of licenses, and the type of
license is also displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

236


<!-- page 237 -->
Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select Discovered engineering license from the Discovery list view.
3. You can click a record to view additional details.
This takes you to the Company page in the classic view.

View engineering license servers in workspace
View the list of license management servers that OpenLM or Open iT connect with to get data
into your ServiceNow instance in the Software Asset Workspace.

Before you begin

Information such as the name and type of the server, its current status, whether it's currently
active, and the last connection time is displayed.

Note: Engineering license servers only appear if the Software Asset Management
Professional for Engineering Applications (com.sn_samp_eng_app) plugin is activated.
Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations >
Engineering license server.
2. Select a license server record to view its details.

Add custom software products in workspace
Add a custom software product for any publicly available software product that does not exist
in the Software Asset Management Content Library. Custom software products enable you to
normalize and account for software products that aren’t part of the Software Asset Management
Content Library yet.

Before you begin

If you want to enable the Software Asset Management application to submit content requests for
your custom software products, opt in to the Software Asset Management Content Service and
then enable the Custom Software Products KPI. See Enable sharing information with Software
Asset Management content service for detailed instructions.
Role required: sam_admin

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. From the Software Asset Workspace, open the License operations view.
3. From the navigation menu of the License operations view, navigate to Content > Custom
software products.
4. Select New.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

237


<!-- page 238 -->
Create New Custom Software Product form
Field

Description

Publisher

Publisher of the custom software product.

Product

Name of the custom software product.

Subscription
software

Option to indicate if the custom software product has a subscription.

Product type

Type of software product. Select one of the following options:
◦ Child: A component of a main software product. This software product
type isn’t licensable.
◦ Driver: A software product that controls a device.
◦ Licensable: A software product that is licensable.
◦ Not Licensable: A software product that is not licensable.
◦ Patch: A software product that updates, fixes, or improves an existing
computer program.
◦ Unknown: A software product that is unknown.
®

®

Product
classification

United Nations Standard Products and Services Code (UNSPSC )
classification for the custom software product.

Active

Option to indicate if the custom software product is active.

Exclude from
content service

Option to prevent the custom software product from being shared with the
Software Asset Management Content Service.

6. Select Submit.

Result

The custom software product is immediately available to use in your downstream processes,
such as normalization and reconciliation. Depending on whether you enabled or turned off the
Exclude from content service option, the Software Asset Management application can either
continue using the custom software product or begin using the corresponding software product
in the Software Asset Management Content Library.
• If you enabled the Exclude from content service option, the Software Asset Management
application continues to use the custom software product in your downstream processes.
• If you turned off the Exclude from content service option, the Software Asset Management
application proceeds as follows:
1. The Software Asset Management application automatically creates and sends a
corresponding content request to the Content Service team.
2. After the Content Service team reviews and approves the request, the software product is
added to the Software Asset Management Content Library.
3. During the next scheduled content update, the new software product in the Content Library
is pushed to your ServiceNow instance and then mapped to the custom software product.
4. The Software Asset Management application automatically generates a product suggestion
that enables you to consolidate the custom software product with the software product in the
Content Library. This consolidation updates all references to the custom software product
with references to the software product in the Content Library. You can choose to accept or
reject the suggestion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

238


<!-- page 239 -->
▪ If you accept the suggestion, the Software Asset Management application begins using
the software product in the Content Library for your downstream processes.
▪ If you reject the suggestion, the Software Asset Management application continues to use
the custom software product in your downstream processes.
For more information on product suggestions, see View custom software product
suggestions in workspace.

View custom software product suggestions in workspace
View the product suggestions that enable you to consolidate your custom software products
with corresponding software products in the Software Asset Management Content Library. By
consolidating these software products, you can update all references to your custom software
products with references to the software products in the Content Library. You can choose to
accept or reject these suggestions.

Before you begin
Role required:

• sam_admin: Accept or reject product suggestions.
• sam_user: View product suggestions.

About this task

You can add custom software products for any publicly available software products that don’t
exist in the Software Asset Management Content Library. For more information on custom
software products, see Add custom software products in workspace.

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. From the Software Asset Workspace, open the License operations view.
3. From the navigation menu of the License operations view, navigate to Content > Custom
software product suggestions.
4. View the list of all product suggestions for your custom software products.
Select a product suggestion record to view more details about the suggestion. You can also
choose to accept or reject the suggestion.
◦ If you accept the suggestion, all references to the custom software product are updated
with references to the corresponding software product in the Software Asset Management
Content Library.
◦ If you reject the suggestion, all references to the custom software product remain the same.

View license usage for your installations
Track your installation to license journey by connecting software installations to the licenses
consumed and identifying statuses such as licensed, unlicensed, ignored, or requiring action.

Before you begin

Role required: sam_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

239


<!-- page 240 -->
Procedure
1. Navigate to Software Asset Workspace > License operations > Products with installs.

The preceding page showcases all your products with installations and offers a high-level
overview of how these installations are being used and licensed.
2. Select a product to open the Details page.

3. Select License usage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

240


<!-- page 241 -->
The License use analysis page for the product opens displaying a four-level node map that
illustrates how the licenses are being used.
You can also access the License use analysis page from the Publisher details page by
selecting Product install analysis for a publisher, selecting a product, and then selecting
License usage.
4. View the four-level node map to understand the license usage for the product.
◦ The highest level in the node map represents the product.
◦ The second-level features nodes for different product versions and editions, with each
version-edition combo having its own node.
◦ The third level nodes indicate the licensing status of installations, such as licensed,
unlicensed, requiring action, and ignored.
◦ The fourth level nodes display the licensing results for installation groups, showing which
licenses are in use.
You can select a node to delve deeper into the software installation lists and examine
individual installation records.
The top-right corner of the node map shows the reconciliation number that generated the
current node map, along with the timestamp of the last reconciliation run. If reconciliation is
executed with domain separation settings enabled, multiple node maps are displayed.
5. Optional: Select the Export map icon on the right side of the page to download this node map
as an image.

Create averages for product life cycles in workspace
Create averages to calculate software End of Life (EOL) and End of Support (EOS) life cycles in
the Software Asset Workspace.

Before you begin

Role required: model_manager

About this task

You can create averages that can be used globally for all products and publishers or you
can create averages specific to a product or a publisher. These averages are used to create
calculated life cycles for products.
Ensure that com.snc.samp.generate.calculated.lifecycles system property is
enabled. For additional details, see Product life cycles.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations >
Software lifecycle averages.
2. Select New to open the Create New Software lifecycle averages page.
3. On the form, fill in the fields.

Field

Description

Type

The type of option you select for creating life
cycles. Choose from the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

241


<!-- page 242 -->
Field

Description

◦ Custom industry average: Refers to the
industry averages based on the General
Availability (GA) dates.
◦ Product: Refers to a specific product. This
includes custom products too.
◦ Publisher: Refers to a specific publisher.
This includes custom publishers too.
Display name

A unique name for this life cycle average
record.

Product

This field appears only if you select the value
Product in the Type field.

Publisher

This field is automatically populated once you
select a product. If you selected the value
Publisher in the Type field, then you select a
publisher.

Domain

Indicates the domain in which your instance
is located.

Average end of life period (months)

Specify the number of months for the EOL life
cycle.

Average end of support period (months)

Specify the number of months for the EOS life
cycle.

Active

Indicates that the life cycle average record
will be used for creating software life cycles.

4. Select Save.
The record is created and appears in the Software lifecycle averages list view.

Use publisher add-on lifecycles in the Software Lifecycle Report
If you purchase an add-on or optional support for a software product, enable the Software Asset
Management application to automatically update the life-cycle dates of that product with the
extended life-cycle dates of the add-on or optional support. These updated life-cycle dates are
populated in the Software Lifecycle Report [sam_sw_product_lifecycle_report] table.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. From the Software Asset Workspace, open the License operations view.
3. From the navigation menu of the License operations view, navigate to Licensing > Publisher
Add-On Lifecycles.
4. Select New.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

242


<!-- page 243 -->
Create New Publisher Add-On Lifecycles
Field

Description

Active

Option that indicates if the Software Asset Management application can update
the life-cycles dates of the specified software product with the extended lifecycles dates of the add-on or optional support that you have purchased.

Domain

Domain in which the life-cycles dates are updated.

Product

Software product that you want to update the life-cycle dates for.

Note: If you leave this field empty, the Software Asset Management
application updates the life-cycle dates of every product with an add-on or
optional support under the specified software publisher.
Publisher Publisher of the software product that you want to update the life-cycle dates for.
6. Select Save.

Result

When the next SAM - Generate Software Lifecycle Report scheduled job runs, the Software
Asset Management application uses life-cycle information from the Software Product Lifecycle
[sam_sw_product_lifecycle] table to automatically update the life-cycle dates of the specified
software product with the extended life-cycle dates of the add-on or optional support that you
have purchased.

View normalization suggestions in workspace
View normalization suggestion records in the Software Asset Workspace that are created for
discovery models. You can accept or reject these suggestions.

Before you begin
Role required:

• sam_admin: accepts or rejects the normalization suggestions.
• sam_user: views normalization suggestions.
The normalization suggestion records are stored in the Normalization Suggestions
[samp_normalization_suggestions] table.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select Normalization Suggestions in the Discovery list view
3. Select a normalization suggestion record to view its details.
For a detailed description of the normalization suggestion fields, see Normalization
suggestions for discovery models.
4. Select Accept to update the discovery model with the correct values or click Reject to retain
the manually normalized values.

Note: Only the sam_admin role can accept or reject the normalization suggestions.
For details on accepting or rejecting suggestions, see Normalization suggestions for
discovery models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

243


<!-- page 244 -->
Revert normalization in the workspace
You can revert the normalization of discovery models in the Software Asset Workspace.

Before you begin

Discovery models with a status of Normalized, Partially Normalized, or Publisher Normalized
revert to the status of Match Not Found. Discovery models with a status of Manually Normalized
and discovery models that have been normalized using pattern rules cannot be reverted.
Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations >
Discovery models.
2. Select a discovery model record.
3. Select Revert Normalization.
Once the revert normalization process is complete, fields are reset to their original values and
any rules associated with the software discovery model are deactivated.

Manually override edition value in workspace
If the edition of a software installation is not automatically discovered, you can specify the edition
on the Software Installation form (if known) so the software can be successfully reconciled.

Before you begin

Role required: sam_admin

About this task

For reconciliation to run successfully, the publisher, product, version, and edition fields of the
software must be set. When the edition is not discovered automatically (edition value is not
included as part of the Display name field) but you know the edition, you can manually set it to
the correct value (for example Enterprise).
Once the edition value is set, the discovery model for the software install is automatically reset. If
the appropriate discovery model does not exist, a new one is created.

Note: Not all software products consist of an edition. Of the software products consisting
of an edition, not all edition values are automatically discoverable.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select Discovery models.
3. In the Discovery models page, open a discovery model.
4. Select the Software Installations tab and open the software installation record for which you
want to set the edition value.

Note: The Edition override field is a free-form field (no lookup list) and since this field is
used as a key, the value entered must be exact.
5. Select Save.
The software installation is associated to a different discovery model containing the edition
value as part of the primary key. If the appropriate discovery model does not exist, a new one is
created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
Manually normalize a software model in workspace
You can manually normalize a software discovery model that has not been fully normalized
(partially normalized, publisher normalized, or match not found) in order to reconcile it.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations >
Discovery models.
2. Select a discovery model record that has a normalization status ofPartially Normalized,
Publisher Normalized, or Match Not Found.
3. Select the ellipsis icon on the right hand side of the page.
4. Select Normalize.
The normalization status changes to Manually Normalized.

Create parent-child relationships between software products
Create and define the parent-child relationships between your software products so that your
child products can inherit life-cycle dates from their parent products.

Before you begin

Role required: sam_admin

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. From the Software Asset Workspace, open the License operations view.
3. From the navigation menu of the License operations view, navigate to Content > Parent-Child
Relationship.
4. Select New.
5. On the form, fill in the fields.
Create New Software Product Parent-Child Relationship form
Field

Description

Parent
product

Parent product that the specified child product inherits life-cycle dates from.

Child
product

Child product that inherits life-cycle dates from the specified parent product.
If you leave this field empty, a blanket parent-child relationship is created, in
which all products under the same publisher as the specified parent product are
considered its children and inherit its life-cycle dates.

Active

Option that indicates if the parent-child relationship is active.

Exclusion Option to exclude the specified child product from any existing blanket parentchild relationships that are defined using the specified parent product.
6. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
Result

The Software Asset Management application automatically updates the life-cycle dates of the
specified child product with the life-cycle dates of the specified parent product, given that the
child product does not already have its own specific life-cycle dates.

What to do next

View life-cycle dates and other life-cycle information for both your parent and child software
products in the Lifecycle management dashboard. You can access this dashboard by navigating
to Workspaces > Software Asset Workspace > Software asset analytics > Lifecycle
management. See Lifecycle management dashboard for more information on this dashboard.

View Export Classification Control Number (ECCN) mappings for your
software products
View the list of ECCNs that are mapped to your software products. Use this information to identify
the products that are subject to U.S. export control regulations.

Before you begin

Role required: sam_user

About this task

An ECCN is a five character alphanumeric key that helps you identify products that are subject
to export control regulations under the U.S. Department of Commerce. Each ECCN defines the
export licensing requirements for a product based on the product type and the corresponding
technical parameters. You can view the complete list of available ECCNs in the Commerce
Control List (CCL), which is available on the Government Printing Office website as Supplement
No. 1 to Part 774 of the Export Administration Regulations (EAR).

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. From the Software Asset Workspace, open the License operations view.
3. From the navigation menu of the License operations view, navigate to Content > Software
ECCN Mapping.
4. View the complete list of ECCNs that are mapped to your software products.

Note: ECCN mappings are curated and stored in the Software Asset Management
Content Library. However, the Content Service team does not dictate any mappings
between the ECCNs and software products. Each ECCN is mapped to an appropriate
software product based only on either the official ECCN information that has been
published by the given software publisher or the official classifications that have been
provided by the Bureau of Industry and Security (BIS).

View or create software usage
View software usage records to track the usage of software products that you have created
reclamation rules for. You can also create software usage records manually from third party
integrations or Microsoft SCCM integrations.

About this task

If you’re using Software Asset Workspace, the option to view or create software usage in Core UI
is inactive.
The Software Usage [samp_sw_usage] table tracks down usage to the product level and not to
the version or edition level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
Before you begin

Role required: sam_admin or sam_user

About this task

Use the following steps to create software usage records manually.

Procedure
1. Navigate to the Create New Software Usage form.
Interface

Action

Core UI

Navigate to All > Software Asset > Discovery
> Software Usage.

Software Asset Workspace

Navigate to Workspaces > Software Asset
Workspace > License operations > Discov­
ery > Software usage.

2. Select New.
3. On the form, fill in the fields.
Create New Software Usage form
Field

Description

Software usage
Publisher

Publisher of the software product.

Product

Name of the software product.

Reclamation type

Type of reclamation used on the software
installation. The options are Total Usage
Time and Last Used Date.

Note: If you select Total Usage

Time, the Usage Metering Data form
section appears. If you select Last Used
Date, the Last Used Data form section
appears.
Configuration Item

Configuration item (CI) that the software
product is associated with.

Note: If the CI Status or Hardware

Status field changes to Retired or
Stolen, installations that are related to
the CI are deleted.
User

Name of the user who is using the software
product.

Usage Metering Data

Note: This form section appears only if the Reclamation type is set to Total Usage
Time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
Field

Description

Month

Month that the software product was used.

Year

Year that the software product was used.

Usage count

Number of times that the software product
was accessed.

Total seconds used

Amount of time (in seconds) that the software
product was used.

Last Used Data

Note: This form section appears only if the Reclamation type is set to Last Used Date.
Last used time

Date and time that the software product was
last used.

4. Select Save.

View SAP engines in workspace
View the monthly engine usage measurements for SAP clients based on the license metric for
each engine.

Before you begin

You can also view all the discovered users pulled from the SAP systems.
Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License Operations.
2. Select All SAP engines.
3. Select on a SAP engine record to view more details on SAP system users and SAP Engine
usage.

View SAP users in workspace
View all the discovered users pulled from the SAP systems in the Software Asset Workspace.

Before you begin

The Discovered Users [samp_discovered_user] table maps the discovered SAP users to system
user records in the Users [sys_user] table.
Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select All SAP users.
3. Select a record to view details such as SAP user roles, SAP user active transactions, SAP user
activities, and SAP web activities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
◦ SAP User Roles [samp_sap_user_has_role]: SAP users and their assigned roles.
◦ SAP User Active transactions [samp_named_user_type_has_transactions]: Data related to a
named user's transaction activity on a SAP client. User transaction activity is based on SAP
transaction codes, which are shortcuts for performing transactions or tasks on an SAP client.
For example, the ME21N transaction code enables you to create a purchase order in SAP.
◦ SAP User Activity [samp_sap_user_activity]: Data related to a user’s activity on a SAP client,
such as the amount of time spent on a SAP system or the number of database records
created or updated.
◦ SAP Web Activity [samp_sap_web_activity]: Data related to web activity or RFC connections
performed on the SAP client, such as the number of calls or amount of data received or sent
by each connection.

Create a custom named user type in workspace
Create a custom named user type that can be used with your SAP software entitlement in the
Software Asset Workspace. Creating a custom named user type allows users to track licenses
that are specific to their SAP systems.

Before you begin

Role required: sam_admin or sam_user

Note: The custom SAP named user types that you create directly on your ServiceNow
instance are not reflected in your SAP system. You must make the same changes in your
SAP system.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select SAP named user types.
3. Select New and fill in the details.

Field

Description

Name

Name of custom named user.

Price list

Default price list.

Is developer

Indicates the user has a developer role.

Grant access to

Grant access to a named user type.

Value

Value associated with the named user type.
This value can be either numbers or letters.

Rank

Priority of the named user type during
reconciliation. Lower rank values take
precedence.

Is licensable

Indicates the named user type license status.

Active

Indicates if the named user type is active.

4. Select Save.
The named user type is added to the Named User Types list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
Create custom SAP price lists in workspace
Create custom SAP price lists so that you can track and manage SAP licenses based on the
contracts that are specific to your SAP system.

Before you begin

Role required: sam_admin

Note: The custom SAP prices lists that you create directly on your ServiceNow instance
are not reflected in your SAP system. You must make the same changes in your SAP system.

Procedure
1. From the Software Asset Workspace, open the License operations view.
2. From the left navigation menu of the License operations view, select Discovery > SAP price
lists.
3. Select New.
4. On the Create New Custom Price List form, fill in the fields.
Create New Custom Price List
Field

Description

Name

Name of the price list.

Id

Unique identifier for the price list.

Default named user type

Default named user type for the price list.

Active

Option that indicates if the price list is active.

5. Select Save.
You are automatically redirected to the SAP price list record.
6. Optional: Associate SAP named user types with the custom SAP price list.
a. On the Named User Types tab of the SAP price list record, select New.
b. On the Create New Custom Named User Type form, fill in the fields.
Create New Custom Named User Type form
Field

Description

Name

Name of the named user type.

Price List

Price list that you want to associate the named user type with. This field
populates automatically.

Is
Option that indicates if users with this named user type have a developer role.
developer
Grants
access to

Applications that the named user type has access to.

Value

Alphanumerical value that identifies the named user type.

Rank

Priority of the named user type during reconciliation. Lower rank values
correlate with a higher priority during reconciliation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
Field

Description

Is
Option that indicates if the named user type can be licensed.
licensable
Active

Option that indicates if the named user type is active.

c. Select Save.
d. Repeat steps a to c for each custom named user type that you want to add.

View SSO applications in workspace
View details related to applications that you can connect through a SSO provider in the Software
Asset Workspace.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select SSO applications.
List of all connected and disconnected SSO applications is shown.
3. Select an application record to view additional details such as SSO application groups, users,
SSO subscriptions, and reclamation candidates for an application.
SSO Applications related list
List

Description

SSO Application Users

All users that have direct access to the
application, but not through membership in a
group.

SSO Application Groups

All groups that have access to the
application.

SSO Subscriptions

Total number of subscriptions for the
application. A user may have both direct
access to an app and have access through a
group. But the user's access counts as only
one subscription so as only one record in the
SSO Subscriptions list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
List

Description

Note:
◦ Add the SSO application role column
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
◦ When SSO subscriptions are created
through SSO application groups,
the Subscription assigned value is
empty. When the subscriptions are
created through SSO Application
Users, the Subscription assigned
value shows the date of when the
subscription is assigned to the user.
After you upgrade to the Software
Asset Management - SaaS License
Management 13.1.0 version or later,
the existing Subscription assigned
values for the subscriptions that were
created through SSO application
groups turns empty.
Reclamation Candidates

Subscriptions that don't meet the usage
requirements that are defined by the
reclamation rule for the application.

SSO Group Software Model Mappings

SSO groups that are mapped to specific
software models for managing licenses at the
group level.

View SSO groups in workspace
View details related to all SSO groups that have access to a SSO application in the Software
Asset Workspace.

Before you begin

Role required: sam_admin or sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select SSO groups.
3. Select a group record to view additional details such as the users and child groups within that
group.

View SSO users in workspace
View details of all users that have direct access to a SSO application in the Software Asset
Workspace, but not through membership in a group.

Before you begin

Role required: sam_admin or sam_user

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
2. Select SSO users.
3. Select a user record to view additional details related to the user.

Create a software client access record in workspace
Add a client access record to track and manage the users or devices that are accessing a
particular version of your server software using a client access license (CAL).

Before you begin

Role required: sam_admin

Note: You can also use the sam_user role to view and read client access records.
However, you cannot use this role to create client access records.

About this task

Software Asset Management uses client access records to reconcile server software based on
the following license metrics:

Metric group

Citrix

License metric

• Per User
• Per User/Device

Common

• User CAL
• Device CAL
• User/Device CAL

IBM

• Authorized User
• Authorized User Value Unit
• Employee User Value Unit
• External User Value Unit

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
Metric group

Microsoft

License metric

• User CAL
• Device CAL
• Per Core (with CAL)

Oracle
CrowdStrike

Named User Plus
• Reserved Hourly Average Sensor
• Sensor Subscription

Note: These license metrics are
available with Yokohama Patch 1,
Software Asset Management - SaaS
License Management (sn_sam_saas_int)
15.0.8, and Software Asset Management
(sn_itam_samp) 2.1.0 version onwards.
If you are on any version for Yokohama
below Patch 1, refer KB1801232 .
License metrics are set on the software entitlement form and can be accessed from the Metric
Attributes related list on the software model form.

Important: You can enable the Software Asset Management application to automatically

create client access records for Oracle Database Server using the Auto-generate client
access for allocations option on the corresponding software model. To use this option,
you must request the Data Collection for Oracle Global Licensing and Advisory Services
application from the ServiceNow Store. See Software model fields for more details on the
Auto-generate client access for allocations option. See Request Data Collection for Oracle
Global Licensing and Advisory Services (GLAS) for more details on the Data Collection for
Oracle Global Licensing and Advisory Services application.

Procedure
1. From your ServiceNow instance, navigate to Software asset > Software Asset Workspace.
The Software Asset Workspace launches in a new tab.
2. On the left navigation menu of the Software Asset Workspace, select License operations.
The License operations view opens.
3. On the Lists tab of the License operations view, navigate to Client access > Client access.
4. Select New.
5. On the Create New Client Access form, fill in the fields.
Create New Client Access form
Field

Description

Name

Name of the client access record.

Software model

Software model of the server that you are
granting users or devices access to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
Field

Description

Type

Type of CAL that is associated with the client
access record. Select one of the following
options:
◦ User CAL: Licenses each user that
accesses the associated server, regardless
of the number of devices that each user is
using to access the server.
For example, if two users are accessing
Microsoft Windows Server, the
corresponding software entitlement must
include two User CALs.
If you select this option, you can assign the
associated User CALs to specific users.
See step 7 for more details.
◦ Device CAL: Licenses each device that
accesses the specified server, regardless
of the number of users that are using each
device to access the server.
For example, if two devices are
accessing Microsoft Windows Server, the
corresponding software entitlement must
include two Device CALs.
If you select this option, you can assign
the associated Device CALs to specific
devices. See step 7 for more details.
◦ User/Device CAL: Licenses each user
or device that accesses the associated
server.

Note: If you are using a Citrix
software model, the User/Device CAL
type is based on the user/device
licenses that are assigned to your
users or shared devices.
For example, if two users and two devices
are accessing Microsoft Windows Server,
the corresponding software entitlement
must include two User CALs and two
Device CALs.
If you select this option, you can assign
the associated User and Device CALs to
specific users and devices. See step 7 for
more details.
◦ Authorized User: Licenses each user who
accesses an IBM software product.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
Field

Description

Note: This CAL type is applicable to
IBM software only.
◦ Authorized User Value Unit: Licenses the
number of select users who access an IBM
software product.

Note: This CAL type is applicable to
IBM software only.
◦ Employee User Value Unit: Licenses
the total number of users within your
organization who access an IBM software
product.

Note: This CAL type is applicable to
IBM software only.
◦ External User Value Unit: Licenses
the total number of users outside your
organization who access an IBM software
product.

Note: This CAL type is applicable to
IBM software only.
◦ Reserved Hourly Average Sensor: This
metric counts the number of unique active
endpoints per clock-hour and averages
them over a rolling 28-day period. The
count of Reserved Hourly Average Sensor
Licenses resets at the start of each clockhour.
◦ Sensor Subscription: This metric
calculates license usage by averaging
endpoint counts over four consecutive
weeks. Weekly endpoint counts are
based on the total number of endpoints
consumed in the previous seven days.

Note: The Reserved Hourly Average
Sensor and Sensor Subscription
license metrics are applicable only
for CrowdStrike and are available
with Software Asset Management
Yokohama Patch 1 and Software Asset
Management 2.1.0 version onwards.

WebLogic application

Oracle WebLogic Server application to which
your users or devices are granted access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
Field

Description

Note: This field appears only if you
select an Oracle WebLogic Server
software model.
Database instance

Note: This field appears only if you

Oracle database instance that accesses and
manages the data in your Oracle database.

select an Oracle Database Server
software model.
Source

Note: This field appears only if you
select an Oracle Database Server
software model.

Source of your Oracle data. This field is
automatically set to one of the following
options:
◦ ServiceNow: Indicates that the client
access record data was generated
automatically through the SAM - Sync Autogenerated Client Access with DB Server
Users scheduled job, which runs daily or
on-demand.
◦ Internal: Indicates that the client access
record data was added manually.

Count

Number of unique users or devices that are
granted access to the associated server.

Note: On automatically generated
client access records for Oracle
Database Server, this field populates
automatically based on the number
of users or devices that are currently
added to the record. See step 7 for more
information on how to add users or
devices to the client access record.

Note: If you are using a Citrix software
model and User/Device CAL type, the
Count field is based on the number of
user/device licenses that are assigned
to your users or shared devices.
PaaS

Note: This field appears only if you
select an Oracle Database Server
software model.

Option to indicate whether your Oracle
database instance is managed by the
Amazon Relational Database Service (RDS)
on Amazon Web Services (AWS).

Cost Center

Cost center of the users or devices that are
granted access to the associated server.

Department

Business department of the users or devices
that are granted access to the associated
server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
Field

Description

Location

Geographic location of the users or devices
that are granted access to the associated
server.

Company

Company of the users or devices that are
granted access to the associated server.

6. Select Save.
The form reloads with the Users and Devices tabs.
7. To assign the associated CALs to specific users or devices, add those users or devices to your
client access record based on the CAL type that you selected in the Type field.
By assigning CALs to specific users or devices, you can prevent those users or devices from
being counted multiple times across different client access records during reconciliation.
◦ If you set the Type field to User CAL, User/Device CAL, Authorized User, Authorized User
Value Unit, Employee User Value Unit, or External User Value Unit, add the users that you
want to assign your user-based CAL to.

Note: If you are using a Citrix software model and User/Device CAL type, add the
users that you want to assign a user/device license to.
a. Select the Users tab and then click New.
The Create New Client Access User Breakdown form opens in a new tab.
b. In the User field, search for and select a user that you want to assign a user-based CAL to.
The Device, Active, User Type, and Source fields populate automatically for the specified
user. However, you can modify the Device, Active, and User type fields as needed.
c. Select Save.
d. Close the form to return to your client access record.
e. Repeat steps a-d for each user that you want to assign a user-based CAL to.
◦ If you set the Type field to Device CAL or User/Device CAL, add the devices that you want
to assign your device CALs to.

Note: If you are using a Citrix software model and User/Device CAL type, add the
devices that you want to assign a user/device license to.
a. Select the Devices tab and then select New.
The Create New Client Access Device Breakdown form opens in a new tab.
b. In the Device field, search for and select a device that you want to assign a device CAL to.
The Active and Source fields populate automatically for the specified device. However,
you can modify the Active field as needed.
c. Select Save.
d. Close the form to return to your client access record.
e. Repeat steps a-d for each device that you want to assign a device CAL to.
8. To track and license the configuration items (CIs) that the associated server is installed on, add
them to the client access record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
Important: This step is not applicable if you have enabled the License all installs

accessed by clients option on the associated software model. If this option is enabled,
CIs are licensed based on conditions that you specify on the software model, such as
software install conditions. See Software model fields for more details on this option.
For Windows Server, each server installation requires Per Core (with CAL) rights that are
licensed separately from the User and Device CAL rights in associated client access
records. Other products like Oracle Java do not require rights to be licensed separately for
server installations. For example, if you use CALs to license the users and devices that are
accessing Oracle Java, you can enable Software Asset Management to automatically mark
the corresponding Oracle Java installations as licensed. In this scenario, Software Asset
Management licenses the Oracle Java installations as part of CAL licensing.
To enable this capability, you must add all CIs that a given server is installed on to the
associated client access record. By specifying these CIs, you can enable Software Asset
Management to determine which server installations your users and devices are connected to.
After all users and devices on the client access record are licensed, all server installations on
the specified CIs are also marked as licensed. No additional licenses are consumed for these
installations.
a. Select the Devices with Installations tab and then click New.
b. In the Device field of the Create New Client Access Installed Device form, search for and
select a CI that the associated server is installed on.
The Active field populates automatically for the specified CI. However, you can modify this
field as needed.
c. Select Save.
d. Close the form to return to your client access record.
e. Repeat steps a-d for each CI that the associated server is installed on.

What to do next

After you create a client access record, reconciliation runs on the associated server software as
a scheduled job or on-demand. You can view your reconciliation results in the License usage
view. Use these results to determine your license compliance position and to remediate any noncompliance.
You can remediate non-compliance for your server software using the following remediation
options:
• Purchase Rights: Generates a purchase order when the number of rights needed is greater
than the number of rights owned across all client access records for the specified server
software.
• Create Allocations: Allocates rights to unlicensed users or devices that have been added to
the client access records for the specified server software.
• Remove Allocations: Removes rights from licensed users or devices when sufficient rights are
unavailable.

Create a resource value record
Create a resource value record for each software model for which you want to calculate licensing
requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > Software Asset Workspace > License operations > Resource
Value.
2. Select New.
3. On the form, fill in the fields.
Resource Value form
Field

Description

Name

Name of the resource value.

Software
model

Software model of the software product that the resource value is associated
with.

Company

Company of the associated resource value record.

Location

Physical location of the associated resource value record.

Units
consumed

Total number of resource value units of the associated software product that
you’re currently consuming. For example, if you’re protecting 50 terabytes of
data using a data protection software product, set the Units consumed field to
50.
For the Java SE software model with the Employee license metric, the Units
consumed field must be set to the number of employees consuming the
licenses.

Department Department that the resource value record is assigned to.
Cost
Center

Cost center that is financially responsible for the resource value.

4. Select Save.

Note: You can create multiple resource value records for the same software model and
give them unique names. All the resource value records with the same software model
are taken into consideration before reconciliation is run.

Result

The resource value record that you created appears in the Resource Value list view.

Create user subscriptions in the workspace
Create software subscriptions for SaaS and SSO applications for users in the Software Asset
Workspace.

Before you begin

The User subscription option is available only if the Software Asset Management - SaaS License
Management (sn_sam_saas_int) plugin is activated.
Role required: sam_admin or sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


<!-- page 261 -->
About this task

If you’re using Software Asset Workspace, the option to create user subscriptions in Core UI is
inactive.

Procedure
1. Navigate to the Create New Software Subscription form.
Interface

Action

Core UI

Navigate to All > Software Asset > Software
Subscriptions.

Software Asset Workspace

a. Navigate to Workspaces > Software Asset
Workspace > License operations.
b. Select User subscription.

2. Select New.
3. On the Create New Software Subscription form, fill in the fields.
For more information on the Software subscription form fields and their descriptions, see
Software subscription fields.
4. Select Save.
Related topics
Software models and Software entitlements
Create a software model in the Software Asset Workspace
Create entitlements in workspace

View publisher part number (PPN) suggestions in workspace
View Content Service suggestions for your custom PPNs and DMAPS in the Software Asset
Workspace.

Before you begin

PPN suggestions are available only if a corresponding match is found for your custom PPN in
the Content Service. The PPN suggestion records are stored in the Part number suggestions
[samp_sw_part_number_suggestion] table.
Role required: sam_admin.

Procedure
1. Navigate to All > Software asset > Software Asset Workspace > License operations.
You can also view the part number suggestions from the License Usage view by navigating to
the Publisher details page and the Progress indicators section.
2. Select Part number suggestions from the Content suggestions list view.
3. Open a suggestion record to view the Part number suggestion page.
You can view the custom PPN details in the top part of the Part number suggestion page. The
second half of the page contains the suggested part number details. All the entitlements
where the custom PPN is used appear in the Impacted entitlements tab. All the software
models where the custom DMAP is used appear in the Impacted software models tab. If no
impacted software models exist, then this tab doesn't appear.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
4. Select Accept or Reject.
◦ Accept: The Content Service PPN and DMAP replace the custom PPN and DMAP. In the
impacted entitlement, the Content Service PPN is replaced. Similarly, the Content Service
DMAP is replaced on the software model.
◦ Reject: The status of this record changes to rejected and you continue to use the custom
PPN.

Manage phase-wise Software Asset Management implementation
Carry out phase-wise Software Asset Management implementation by publishing only on a few
software products that you want to manage initially. You can also remove the software products
from the published list when you no longer want to manage those products.
Set the domain-specific property to publish your software products
Use the domain separation application property of Software Asset Management to set the
publish software products property for specific domains.

Before you begin

To set up domain separation application properties for Software Asset
Management, you must activate the Domain Support - Domain Extensions Installer
(com.glide.domain.msp_extensions.installer) plugin on your ServiceNow instance.
Role required: sam_admin or admin

About this task
The com.snc.samp.manage.published.product application property enables you to
specify the domains for which you want to enable publishing the software products in a phasewise implementation of Software Asset Management.

Procedure
1. Navigate to All > Software Asset Management > Administration > Application Properties.
2. From the list of available application properties, select
com.snc.samp.manage.published.products.
3. Create or update an application property value.
◦ To create an application property value, select New.
◦ To update an existing application property value, select that application property value from
the list of available values.
4. On the form, fill in the fields.
Application Property Values form
Field

Description

Value

Value of the application property. You can specify one of the following:
◦ true to enable the property.
◦ false to disable the property.

Domain

Domain that you want the application property value to apply to.

5. Save the application property values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
◦ To update an existing application property value, select Update.
◦ To save a new application property value, select Submit.

What to do next

Publish the software products that you want to manage as part of phase-wise implementation of
Software Asset Management. For more information, see Publish a specific set of your software
products.
Publish a specific set of your software products
Report only on the licensable software products that are part of the current implementation
phase of Software Asset Management by publishing those software products. By publishing only
a few software products initially, you can assess the initial progress and gradually increase the
scope of the implementation.

Before you begin

To be able to publish your software products, enable either the
com.snc.samp.manage.published.products system property or the
com.snc.samp.manage.published.products application property on your
ServiceNow instance.

Note: The application property is domain-specific and available only on a ServiceNow
instance that has domain separation activated for Software Asset Management. For more
information, see Domain separation and Software Asset Management and Set the domainspecific property to publish your software products.
Role required: sam_admin

About this task

Note: To view accurate data on the reports, you must run software reconciliation
whenever the following occur:
• The system property com.snc.samp.manage.published.products is updated.
• The software products are published or removed from the list of published software.

Procedure
1. Navigate to All > Software Asset Management Workspace > License operations.
2. From the SAM Implementation list, select Published products.
3. Select Add.

Note: If the Add option isn’t available, make sure the

com.snc.samp.manage.published.products property is enabled.
4. In the Add to published products dialog box, select the licensable software products that you
want to publish and select Add.

Note:
When you publish a software product that is part of a suite, messages with links that
contain the details of the parent software suite and its child software components are
shown. You can view the details and publish these software products if necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
Result
• The software products are added to the Published products list that is grouped by the
publisher.
• After you publish the products and run software reconciliation, you can view reports specific to
only those published products in the License usage view and Software asset overview.
Remove published software products
Remove published software products that you no longer manage or report on as part of your
Software Asset Management implementation.

Before you begin

To be able to remove software products from the list of published software products, make sure
that either the com.snc.samp.manage.published.products system property or the
com.snc.samp.manage.published.products application property is enabled on your
ServiceNow instance.

Note: The application property is domain-specific and available only on a ServiceNow
instance that has domain separation activated for Software Asset Management. For more
information, see Domain separation and Software Asset Management and Set the domainspecific property to publish your software products.
Role required: sam_admin

Procedure
1. Navigate to All > Software Asset Workspace > License operations.
2. From the SAM Implementation list, select Published products.
3. Select the published software products that you want to remove from the list.
4. Select Remove.

Result

The software products that you removed are no longer shown in the Published products list.

Create product install conditions
Create product install conditions in the Software Asset Workspace that apply across all software
models of a product during reconciliation.

Before you begin

Installs that do not meet the required product install conditions will be included in the
reconciliation process; however, they are likely to be flagged as unlicensed.
To create product install conditions, you must request and activate the Software Asset
Workspace (sn_sam_workspace) store application. For details on requesting and activating the
Software Asset Workspace (sn_sam_workspace) store application, see Request Software Asset
Management.
Role required: sam_admin

About this task

Install conditions define where a software product can be installed. Product install conditions
account for all the software model installations of a product during reconciliation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
Note: If you want to set up install conditions for specific software models and not the
entire software product suite, you can choose to add software install conditions. For details
on adding software install conditions, see Create a software model in the Software Asset
Workspace.

Procedure
1. Navigate to Software Asset > Software Asset Workspace > License operations > Licensing.
2. Select Product install condition.
3. Select New.
4. From the list of available products, select a product.
5. Select Set conditions.
6. Add filter conditions that contain a field, operator, and value.
You can add multiple install conditions to a software product using the following options:
◦ or: Enables you to specify any of the conditions that a software installation can meet to be
included in reconciliation.
◦ and: Enables you to specify all the conditions that a software installation must meet to be
included in reconciliation.
◦ + New condition set: Enables you to specify additional sets of conditions that a software
installation can meet to be included in reconciliation.
7. Select Set.
8. After setting up the install conditions successfully, select Save.
The install conditions are added for the complete suite of the software product. You can view
the install conditions you have created on the Product install condition landing page.

Create or update an override license cost record
Create or update an override license cost record for your software entitlements based on your
requirements.

Before you begin

Role required: sam_user, sam_admin

About this task

You can manually add or update the override license cost information for your software models
and entitlements. When you create an entitlement for the Employee license metric, override
license cost records are populated for Oracle Java, based on the data present in the Price tier
[samp_price_tier] table. You can update the existing override license cost records according
to the licensing agreement. For details on the tier-based pricing model, see Pricing model for
Oracle Java SE Universal.

Procedure
1. Navigate to Software Asset Workspace > License operations.
2. Select the target software model that you want to create or update the override license cost for.
3. Select the Override License Costs tab.
4. Select New/Edit ranges.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
◦ If you select New, the lower limit is calculated based on the employee count range in the
Price tier [samp_price_tier] table, incrementing the previous upper limit by 1. For example,
if the previous employee range is 40000-49999, then the lower limit is automatically
populated as 50,000 for a new record.
◦ If you select Edit ranges, all the existing records are set to inactive. You can select Activate
after completing your updates to override license cost ranges.
5. On the form, fill in the fields.
For details on the override license cost fields and descriptions, see Override License Costs
tab.

Note: You can revert your changes to the default values by selecting Restore to default.
6. Select Save.

Result

The override license cost record you created or modified appears in the Override License Cost
list view. The following details are displayed for each record:
• Metric group
• License metric
• License cost
• License and maintenance cost

Create an end of life workflow request for your software products
Manage risks associated with your software product installations that have reached the end of
life (EOL) or are reaching EOL in the next 18 months. You can create an EOL request and take the
required action for the EOL software.

Before you begin
Role required:

• Create or modify an EOL request: sam_admin, itil users
• Read an EOL request: sam_user, users with an itil role to whom a task is assigned
• Complete an EOL task: sam_user, users with an itil role to whom a task is assigned

About this task

When software products reach EOL, end of support, or end of extended support, their risk of
failure increases. You can choose to remove such software products that are reaching or have
reached EOL, upgrade them to the latest software version, or purchase additional support for
their maintenance. The EOL workflow takes you through the process of completing your change
request based on the action you choose for your EOL software products. If you want to purchase
additional support for your EOL software, you can create a purchase order.

Note: You must have the Procurement plugin (com.snc.procurement) activated to
complete a purchase order.
The EOL workflow can also be completed using the Software End of Life Flow in the Flow
Designer application. You can customize the Software End of Life Flow according to your
requirement by creating a copy of the flow and customizing the copy that you have created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
Procedure
1. Navigate to Software Asset Workspace > Software asset analytics > Lifecycle management.
2. On the Lifecycle management dashboard, select the Upcoming end of life product lifecycles
in next 18 months report or the Current and past end of life product lifecycles report.
The End of life products page displays the current and upcoming life-cycle phases calculated
using the Software Product Lifecycle [sam_sw_product_lifecyle] table. For more details, see
Software models and Software entitlements.
3. Select a record that has the Current phase as either End of Support, End of Extended Support,
or End of Life.
The Software Product Lifecycle report opens for the selected record.

Note: You can also access the Software Product Lifecycle report by navigating to
Software Asset Workspace > License usage > Reports.
4. Create an EOL request by selecting Manage EOL risk.
The product details in the Software EOL request form are populated from the Software Product
Lifecycle Report [sam_sw_product_lifecycle_report] table.
5. On the Software EOL request form, fill in the fields.
For details on the fields and descriptions, see Software EOL request fields.
6. Start the EOL workflow to take required action for your EOL software.
a. Select Start EOL Workflow.
b. Select the Software EOL Tasks tab.
c. On the Software EOL task form, fill in the fields.
For details on the form fields and descriptions, see Software EOL tasks tab.
d. Complete the subtasks for the parent task by selecting the Software EOL Subtasks tab.

Note: If a parent task has subtasks, you must close all the subtasks.
e. Repeat steps b through d for all the tasks listed on the Software EOL Tasks tab.
◦ If you select one of the following values in the Action field on the Software EOL Tasks tab, a
change request is generated:
▪ Remove EOL software
▪ Upgrade
▪ Move to Azure
For details on removing an EOL software product, see Complete the end of life workflow
request for your software product. For details on completing a change request and the role
required for it, see Process a change request .
◦ If you select Purchase support in the Action field and select the Auto create PO option in
the EOL task, a purchase order is created. For details on completing a purchase order and
the role required for it, see Create a purchase order line item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
After you complete the parent task, the Stage field is updated to reflect the stage of the task.
Additionally, the Action initiated field is updated to reflect the action you have selected for the
EOL request.

Note: You can cancel the EOL workflow anytime by selecting the More Actions ellipsis
icon and then selecting Cancel EOL request.

Result

After the change request or the purchase order is complete, the workflow request is complete.

Complete the end of life workflow request for your software product
Perform all the tasks that are required to remove the end of life (EOL) software products from your
asset inventory.

Before you begin

Before you proceed with removing the EOL software, you must start an EOL workflow request. For
details, see Create an end of life workflow request for your software products.
If you set the Action field to Remove EOL Software in the Decide on IT strategy task, you must
perform these software EOL tasks.
Role required: sam_user, users with an itil role to whom a task is assigned

About this task

To close an EOL request, you must complete and close all the tasks required to complete the
workflow. The following procedure explains how to close the EOL request, when you set the
Action field to Remove EOL Software in the Decide on IT strategy task. You can apply the same
approach to close the EOL request for the following possible values in the Action field in the
Decide on IT strategy task:
• Upgrade
• Purchase support
• Move to Azure
• Accept risk
Additionally, the EOL workflow can be completed using the Software End of Life Flow in the
Flow Designer application. You can customize the Software End of Life Flow according to your
requirement by creating a copy of the flow and customizing the copy that you have created.

Procedure
1. Navigate to Software Asset Workspace > Software Asset Analytics > Lifecycle management.
2. On the Lifecycle management dashboard, open the End of life (EOL) products page by
selecting the Upcoming end of life product lifecycles in next 18 months report or the Current
and past end of life product lifecycles report.
3. From the list of available EOL products, select the product for which you want to complete the
EOL workflow.
4. On the product record, select the Software EOL Requests tab.
5. From the list of available software EOL requests, select the request number for which you want
to complete the tasks.
6. Complete the first task, which is the Assess IT architecture impact task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
a. On the Software EOL tasks tab, select the task number for the Assess IT architecture
impact task.
b. On the Details tab of the Assess IT architecture impact task, fill in the fields.
For details on the form fields and their description, see Software EOL tasks tab.
c. Complete the subtasks for the Assess IT architecture impact task by selecting the Software
EOL Subtasks tab.

Note: If a parent task includes subtasks, you must close all the subtasks. After you
close all the subtasks, the parent task is automatically updated with a state of Closed
Complete. Additionally, a new task appears on the Software EOL tasks tab only after
you have closed and completed the preceding task.
7. Complete the Assess IT security impact task.
a. On the Software EOL tasks tab, select the task number for the Assess IT security impact
task.
b. On the Details tab of the Assess IT security impact task, fill in the fields.
For details on the form fields and their description, see Software EOL tasks tab.
c. Complete the subtasks for the Assess IT security impact task by selecting the Software EOL
Subtasks tab.
8. Complete the Decide on IT strategy task.
a. On the Software EOL tasks tab, select the task number for the Decide on IT strategy task.
b. On the Details tab, select Remove EOL software in the Action field.
For details on the form fields and their description, see Software EOL tasks tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
c. Select Close Task.
The Decide on IT strategy task is automatically updated with a state of Closed Complete.
The corresponding Assess software licensing impact task appears in the list view on the
Software EOL Tasks tab.
9. Complete the Assess software licensing impact task.
a. On the Software EOL tasks tab, select the task number for the Assess software licensing
impact task.
b. On the Details tab of the Assess software licensing impact task, fill in the fields.
For details on the form fields and their description, see Software EOL tasks tab.
c. Select Close Task.
The Assess software licensing impact task is automatically updated with a state of Closed
Complete. The corresponding Complete secure backup task appears in the list view on the
Software EOL Tasks tab.
10. Complete the Complete secure backup task.
a. On the Software EOL tasks tab, select the task number for the Complete secure backup
task.
b. On the Details tab of the Complete secure backup task, fill in the fields.
For details on the form fields and their description, see Software EOL tasks tab.
c. Select Close Task.
The Complete secure backup task is automatically updated with a state of Closed Complete.
The corresponding Create IT change plans task appears in the list view on the Software
EOL Tasks tab.
11. Complete the Create IT change plans task.
a. On the Software EOL tasks tab, select the task number for the Create IT change plans task.
b. On the Details tab of the Create IT change plans task, fill in the fields.
For details on the form fields and their description, see Software EOL tasks tab.
c. Select Close Task.
The Create IT change plans task is automatically updated with a state of Closed Complete. A
change request appears on the Change Requests tab.
12. Select the change request and review the values that are automatically populated in the
Change Request form.
For details on completing a change request, see Process a change request .

Result

After the change request is complete, the workflow request is also complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Create demand to rationalize software applications
Create demands to rationalize SaaS and SSO applications by discontinuing software
subscriptions, reducing software usage, and migrating users to approved software.

Before you begin

Role required: sam_admin or sam_user

Note: The sam_admin and sam_user roles must have the it_demand_user role to create
demand.
The PPM Standard (com.snc.financial_planning_pmo) plugin must be installed to create
demands.
The Software Asset Management application includes the following demand actions that are
ready for you to use:
• Discontinue after expiration
• Migrate to approved product
• Discontinue immediately
• Reclaim licenses
• No action

About this task

Use the Overlapping usage view to drive SaaS and SSO application rationalization by viewing the
feature level usage of each application. For more information, see Overlapping usage view.

Procedure
1. Navigate to Software Asset Workspace > Overlapping usage.
2. Select the Application feature usage tab.
3. Select the application in a category for which you want to create a demand.
4. Select Create demand.
The Create demand option is available only when you select an application that you want to
create a demand for.
5. On the form, fill in the fields.
Software Asset Demand
Field

Description

Name

Name of the demand.

Number

Unique auto-generated identification number
for the demand.

Submission status

Stage of the demand record.
◦ Draft
◦ Submitted
◦ Screening
◦ Qualified
◦ Approved

Start date

Start date for the demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
Field

Description

The field name is replaced by Planned start
date when the demand type is converted to a
Project.

Note:
When you change the planned start
date of a demand or project, the
associated cost and resource plans also
change.
Due date

Requested completion date for the demand.
The field name is replaced by Planned end
date when the demand type is converted to a
Project.

Category

Software category of the demand.
◦ Strategic
◦ Operational

Type

Type of demand.
◦ Enhancement
◦ Project
◦ Change
◦ Defect
The Category field selection determines the
selections available in this field.

Assessment required

Option for enabling the assessments for the
demand.
By default, the field is selected. When clear,
the assessment questionnaire isn’t triggered
for the demand.
When this field is clear, and you reset
the demand to Draft, the value for the
Assessment Required field is retained as
clear.

6. Optional: Select the Demand Requirements tab to view the details of the already-created
requirements.
You can also create a demand requirement. For more information, see Create a demand
requirement.
7. Select Save.

Result

The demand is created with the Submission status field set to Submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
What to do next

®

Use the ServiceNow Demand Management application to approve and complete the demand.
For more information, see Demand Management .
You can create a project for the demand by selecting the Create Project related link. A project
enables you to track the status, percent complete, and duration of the work required to
accomplish the demand. You can also create project tasks to define the work items that are
required to complete the project. For more information, see Project Management .
To view all Software Asset Management demands, navigate to Software Asset > Software Asset
Demand > Demands.
To view all Software Asset Management demand requirements, navigate to Software Asset >
Software Asset Demand > Demand Requirements.

Create a demand requirement
Create a demand requirement for rationalizing your SaaS and SSO applications.

Before you begin

Role required: sam_admin or sam_user

Note: The sam_admin and sam_user roles must have the it_demand_user role to create
demand.
The PPM Standard (com.snc.financial_planning_pmo) plugin must be installed to create
demands.

Procedure
1. Navigate to Software Asset Workspace > Overlapping usage.
2. Select the Application feature usage tab.
3. Select the application in a category for which you want to create a demand.
4. Select Create demand.
The Create demand option is available only when you select an application that you want to
create a demand for.
5. Select the Demand Requirements tab.
6. Select New.
All the fields are auto-populated.
7. On the form, fill in the fields.
Create New Demand Requirement
Field

Description

Demand Requirement
Number

Unique auto-generated identification number
for the demand requirement.

Software asset demand

Software asset demand for which you’re
creating the requirement.

Product

Product or application for which the demand
requirement is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
Field

Description

Main category

Category of the application. For example,
if you select Zoom in the Product field, the
Main category field would be set to Video
Conferencing.

Action

Action items identified for the demand.
◦ Discontinue after expiration
◦ Migrate to approved product
◦ Discontinue immediately
◦ Reclaim licenses
◦ No action

Description

Description of the demand requirement.

Notes

Additional notes for the demand requirement.

Spend Information
Spend amount

Total spend on the application based on
entitlements.

8. Select Save.

Result

The demand requirement for the demand is created. You can view the created demand on the
Software Asset Demand [samp_demand] table.

What to do next

To view all Software Asset Management demand requirements, navigate to Software Asset >
Software Asset Demand > Demand Requirements.

Install Content library portal for Software Asset Management
Install the Content library portal store application to view the data stored in the Software Asset
Management Content Service.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• The Content library portal application requires the following plugins. Ensure that these plugins
are activated before you install the Content library portal application.
Required ServiceNow plugins
Activate Software Asset Management Professional Master Workspace
(com.sn_samp_master_ws) plugin
This plugin will internally activate the Software Asset Management
Professional (com.sn_samp_master) plugin and Software Asset
Workspace (sn_sam_workspace) store application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
◦ The Software Asset Management Professional
(com.sn_samp_master) plugin loads the following Software Asset
Management Professional plugins in one step:
▪ Software Asset Management Professional (com.snc.samp)
plugin
▪ All publisher pack add-on plugins
▪ Software Asset Management UI Components
(com.sn_samp_workbench)
To enable SaaS License Management, you must request the
Software Asset Management — SaaS License Management
Integrations (sn_sam_saas_int) plugin separately from the
ServiceNow Store.
◦ The Software Asset Workspace (sn_sam_workspace) store
application is required to use the Software Asset Workspace, the
new user interface of the Software Asset Management application.
AI Search plugin (com.glide.ais)
Activates AI search functionality.

Note: If you have installed Software Asset Management Professional
(com.sn_samp_master) plugin, you can view data stored in the Software Asset Management
Content service. If you have installed both Software Asset Management Professional
(com.sn_samp_master) and Hardware Asset Management Professional (com.sn_hamp)
plugins, you can view both Software Asset Management and Hardware Asset Management
data stored in the Content service. For more information about installing Content lookup
portal for Hardware Asset Management, see Install Content lookup to view Hardware Asset
Management data.
Role required: sam_admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Content library portal application using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If any plugins or applications need to be installed, you must install them
before you can install the Content library portal application.
4. Select Install.

Using Software Asset Management classic
Use the classic Software Asset Management framework to manage your licenses, compliance,
and optimization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


<!-- page 276 -->
Create entitlements in Software Asset Management classic
Create entitlements in the Software Asset Management application classic to record your license
details and allocate purchased software rights to users or devices.

Before you begin

Role required: sam_user

About this task

These instructions are for manually creating software entitlements or maintenance entitlements
one at a time. If you already have software entitlements recorded in a spreadsheet, you can
import them.
To automate the process of creating a software entitlement, specify a publisher part number in
the software entitlement form. Based on the publisher part number, the software model, metric
group, agreement type, and software lifecycle data (if it exists) automatically appears in the form.
To better manage your existing entitlements, you can edit certain fields in entitlements. You can
edit fields such as Purchased rights, Software model, License type, Number of packs, and
Publisher part number. Entitlements that have related entitlements, upgrade history, entitlement
history, or upgraded entitlement are not editable.

Note: Microsoft reserve entitlements and source entitlements are not editable.
If you installed SaaS License Management, a software model is generated automatically after
you create an integration profile. Create an entitlement for the software model to track software
used against software owned. For more information about tracking SaaS licenses and usage, see
Viewing your SaaS and SSO subscriptions.
If you installed the SAP publisher pack, see Record software rights for SAP.
If you installed the Citrix publisher pack, see Record software rights for Citrix

Procedure
1. Navigate to All > Software Asset > Licensing > Software Entitlements.
2. Select New.
3. On the form, fill in the fields to record your license information.
For detailed descriptions of the fields, see Software entitlement fields.
4. Right-click the form header and select Save.
Saving the form instead of submitting keeps you on the entitlement record so you can perform
additional configuration.
5. To specify users and devices that have software rights allocated to them, select the User
Allocations or Device Allocations section.
The Device Allocations section is not visible for the IBM Resource Value Unit (RVU) license
metric. The Resource Value Unit (RVU) license metric is licensed at the product level and so
rights are not used by individual devices. When you upgrade from a prior release, that had
device allocations, to the Zurich release, the existing device relocations are removed.
6. To track your software downgrade rights, select the Downgrade Rights related list and specify
the version.
Creating a new record allows you to set an entitlement to previous versions of software.
For example, the purchase of Microsoft Office Professional Plus 2016 rights entitles you to
Microsoft Office Professional Plus 2013 too).
For more information, see Downgrade Rights.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
7. To track the cost of your software over its lifecycle, configure expense lines

.

8. To manage license keys, select the License Keys related list and specify which licenses keys
are allocated to entitlements.
9. To view the history of all maintenance entitlements that you have purchased, select the
Entitlement History related list.
For example, if you purchased two maintenance entitlements, M1 (which is now retired) and M2
(currently in use), the Entitlement History related link displays both M1 and M2.
10. To view the history of the newly upgraded software model related to your entitlement and the
previous software model, select the Upgrade History related list.
11. Select Update.
The entitlement is created and added to the entitlement list view.
Related topics
Software entitlement fields
Software models and Software entitlements
Software license metrics
Create maintenance entitlements in Software Asset Management classic
Define license details, for all publishers other than Microsoft, to manage all your software license
maintenance needs such as start and end dates of your contracts and software upgrades.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Software Asset > Licensing > Software Entitlements.
2. Click New.
3. On the Software Entitlement form, fill in the mandatory fields and select Maintenance in the
License type field.
For a detailed description of all the fields, refer to Software entitlement fields.
If the Next Version field is populated in the software model that the maintenance entitlement
is associated with and the metric group selected in the maintenance entitlement is Common,
then the maintenance entitlement is updated with the next version of the software model. Next
version is applicable only for the Common metric group.
4. Right-click the form header and select Save.

Note: If you purchase a perpetual entitlement and associate only some of the rights
of that entitlement with a maintenance entitlement, your perpetual entitlement is
automatically split into two entitlements. For example, you purchased a perpetual
entitlement with 50 active rights (E1). You associate 20 of these rights with 20 rights of
a maintenance entitlement. Your E1 perpetual entitlement is now automatically split into
two entitlements: one perpetual entitlement (E1) with 20 active rights (and 50 purchase
rights) associated with 20 rights of the maintenance entitlement (M1) and another
perpetual entitlement (E2) with 30 active rights without any maintenance association and
no purchased rights.
5. Perform additional configurations on your new maintenance entitlement record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


<!-- page 278 -->
For a detailed description, see Software entitlement fields.
You can't add user or device allocations for maintenance entitlements.
a. Enter information pertaining to finance such as the vendor from which the asset was
purchased, the invoice number, in the Financial tab.
b. Enter information relating to contracts such as the lease contracts, the expiration date of the
warranty in the Contracts tab.
c. Link related perpetual entitlements to your maintenance entitlement from the Related
Entitlements tab.
i. Select the Related Entitlements tab.
ii. In the Related Entitlement field of the Related Entitlements list, double-click Insert a new
row....
iii. When prompted, search for and select the related perpetual entitlement that you want to
link and then click the Save (

) icon.

iv. Double-click the corresponding Active rights field.
v. When prompted, enter the number of rights that you want to grant to the related perpetual
entitlement and then click the Save (

) icon.

vi. Click Save on the Software Entitlement form header.
To remove the relationship between the perpetual and maintenance entitlement, remove the
entitlement from the Related Entitlements list.
If the entitlement has split and you've deleted the maintenance entitlement, the perpetual
entitlement is not removed.
d. View the downgrade rights for the software model associated with the maintenance
entitlement in the Downgrade Rights related list.
e. To manage license keys, and specify which licenses keys are allocated to entitlements, click
the License Keys related list
f. To track the cost of your software over its lifecycle, click the Expense Lines related list.
g. To view the history of all maintenance entitlements that you have purchased, click
theEntitlement History related list.
For example, if you purchased two maintenance entitlements, M1 (which is now retired) and
M2 (currently in use), the Entitlement History related link displays both M1 and M2.
h. To view the history of the newly upgraded software model related to your entitlement and the
previous software model, click the Upgrade History related list.
6. Click Update.
Create entitlements for Microsoft Software Assurance in Software Asset Management classic
Define license details for Microsoft Software Assurance (SA) to manage your contracts start and
end dates, software upgrades, and related software entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278


<!-- page 279 -->
Before you begin

Role required: sam_user or sam_admin

Procedure
1. Navigate to All > Software Asset > Licensing > Software Entitlements.
2. Click New.
3. On the Software Entitlement form, fill in the details about the software publisher rights that
you've purchased and select Maintenance in the License type field.

Note: Make sure that you enter the number of rights to be granted for the SA

entitlement in the Active rights field. You can't add user or device allocations for SA
entitlements.
For a detailed description of the fields related to all entitlements, see Create entitlements
in Software Asset Management classic.
4. Right-click the form header and select Save.
An entitlement appears in the Software Entitlement list.

Note: If you purchase a perpetual entitlement and associate only some of the rights
of that entitlement with a SA entitlement, your perpetual entitlement is automatically
split into two entitlements. For example, you purchased a perpetual entitlement with 50
active rights (E1). You associate 20 of these rights with 20 rights of a SA entitlement. Your
E1 perpetual entitlement is now automatically split into two entitlements: one perpetual
entitlement (E1) with 20 active rights (and 50 purchase rights) associated with 20 rights
of the SA entitlement (M1) and another perpetual entitlement (E2) with 30 active rights
without any SA association and no purchased rights.
5. To perform additional configuration, select your new software entitlement record from the
Software Entitlements list.
a. To link related perpetual and SA entitlements, use the following steps:
i. On the Software Entitlement form, select the Related Entitlements tab.
ii. In the Related Entitlement field of the Related Entitlements list, double-click Insert a new
row....
iii. When prompted, search for and select the related perpetual or SA entitlement that you
want to link and then click the Save (

) icon.

iv. Double-click the corresponding Active rights field.
v. When prompted, enter the number of rights that you want to grant to the related perpetual
or SA entitlement and then click the Save (

) icon.

vi. Click Save on the Software Entitlement form header.
To remove the relationship between the perpetual and SA entitlement, remove the
entitlement from the Related Entitlements list.
If you delete either the perpetual or SA entitlement that is linked, the other entitlement isn't
deleted.
If the entitlement has split and you've deleted the SA entitlement, the perpetual entitlement
is not removed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
b. To link your software to a newer version as part of your maintenance contract, click the
Upgraded Entitlements related list.

Note: This related list is only available if you selected Step-up as the entitlement
license type.
If the Next Version field is populated on the software model, entitlements with active SA are
updated to the new version of the software model.
After you've linked your related entitlements, if there aren't enough SA rights to cover the
perpetual entitlement rights, an error message displays.
c. To view all previously related entitlements that are linked, click the Entitlement History
related list.

Note: Validation is run against the active rights of all related entitlements
automatically. If there's an error with the calculation, a message with additional
information on how to resolve the problem is displayed.
6. Click Update.

Result

After you've created an entitlement, you can begin viewing license usage.

Example: Record software rights for Microsoft Software Assurance
You have purchased 100 rights of Microsoft SQL Server 2016.

You have also purchased SA for your Microsoft SQL Server 2016 licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
To accurately track your licenses, associate your perpetual and SA entitlements.

While you are under active maintenance, Microsoft releases SQL Server 2016 datacenter. Step
up from your current version to the new release by creating an entitlement for your upgraded
software and link the related entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
Import bulk entitlements in Software Asset Management classic
You can import multiple entitlements together using a Microsoft Excel spreadsheet in Software
Asset Management classic.

Before you begin

Role required: sam_user or sam_admin

About this task

The entitlement import records are stored in the Entitlement import [samp_bulk_import] table.

Procedure
1. Navigate to All > Software Asset > Entitlement Import.
2. In the Entitlement imports page, select New.
A new entitlement import record opens.
3. In the Entitlement import page, click Download template to download a spreadsheet
template(.xlsx).
You can add software entitlement fields to the template to include additional fields in your
import. Add each field as a new column in the template. The column name must match the field
label exactly. You can include base system software entitlement fields as well as your custom
software entitlement fields. To learn how to create a custom field, see Add and customize a
field in a table .
By default, the Unit cost column in the spreadsheet takes into account the currency that your
system is set to. However you can manually change the currency and the Software Asset
Management application will honor the currency that you specify. To specify a currency,
enter the currency code followed by a semicolon and the cost. For example, EUR;200. Valid
currency codes are the ones listed in the Currency [fx_currency] table and have the Active
column set to true.
4. Enter the entitlement details in the template and select Click to add to select and upload the
spreadsheet.
Once the file is uploaded, the name of the file appears and the Description field is
automatically populated.
5. Select Import.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
A confirmation message appears informing you that the import of entitlements is in progress.
Once the process is completed, the fields on the page show the number of rows that were
processed, successful, and with errors. Once you attach and import a spreadsheet, an import
record is created that retains the history of the upload for you to view later.
6. Select the link on the confirmation message to view the status of the import record.
The Entitlement Imports page appears listing all the entitlement import records.
7. Select the entitlement import record to display the Entitlement Import page.
The Entitlement Import page contains two tabs:
◦ Entitlements: lists all the entitlements that got successfully created.
◦ Relate entitlements: lists entitlements, such as maintenance entitlements, that are in the
build state and can be linked to the base entitlements.
8. If any errors occur, select Review import errors to open the Entitlement Import Errors page.
Only records whose error status is Needs review are listed by default. You may need to reload
the page to view Review import errors.
9. Select an import error record to view its errors.
The Entitlement Import Errors page appears. For a detailed description of the entitlement
import error fields, see Entitlement import error fields.
10. Correct the errors and then select Import.
The entitlement is successfully created. For more information on resolving errors, see
Entitlement import error actions.

Create software models in Software Asset Management classic
Create a software model to add product details that are used to connect software rights you
purchased with software installations discovered on your system.

Before you begin

Role required: sam_user or model_manager

About this task

You can manually create a software model. However, you can leverage the Software Asset
Management Content Service Library to automate the creation of software models through
their relationship to software entitlements. While creating or importing a software entitlement,
specifying a publisher part number automatically creates a software model (if needed) or links
to an existing software model. You need to manually create a software model if a publisher part
number is not available, a publisher part number does not exist in the Content Service Library, or
if you are creating a software model for a custom product.

Note: If you have the model_manager role, you can navigate to Product Catalog >

Product Models > Software Models but cannot administer all aspects of software models.
View and track life cycle information of your product versions (licensable, minor or build)
via product life cycles. Product life cycles are associated to software models. Product life
cycles are based on attributes such as publisher, product, edition, edition condition, version,
and version condition. The life cycle information is maintained in the Product Lifecycle
[sam_sw_product_lifecycle] and Custom Product Lifecycle [sam_custom_sw_product_lifecycle]
tables.
You can view a detailed product life cycle report in the Software Asset Analytics dashboard and
drill-down to the software installations. You can also manually create product life cycles and view
product life cycles associated to a software model in the Software Product Lifecycle related list in
the Software Model form layout.

Note: Duplicate product life cycles can be created but in different domains.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
You can view the life cycles for all the versions of the product on the software model form layout
by clicking the Show Product Lifecycles for all Versions related link.
If you've installed the SAP publisher pack, see Record publisher details for SAP.

Procedure
1. Navigate to Software Asset > Licensing > Software Models.
2. Select New.
3. On the Software Model form, fill in the details about the software publisher.
4. Right-click the form header and select Save.
5. Specify whether your software publisher is part of a suite.
◦ To designate your software model as a suite parent, select the Suite Parents related list and
add all software included with the suite.
◦ To designate your software model as a suite component, select the Suite Components
related list and add the parent suite.

Note: If you've added a discovery map to your product details, predefined suites are
used and suite components are created automatically for known suite parent.
6. To enable self-service capabilities for the software that is associated with your software model,
publish the software model to your service catalog.
a. Select the Publish to Software Catalog related link.
The Publish <software-model> to Software Catalog dialog box opens.
b. On the dialog box, set the Category field to Software.
c. Select OK.
7. To see discovery maps that have the match the software publisher and product fields of the
software model, select the Show Matching Discovery Models related link.
8. To view all the product lifecycles associated with your software model, select the Software
Product Lifecycles.
Select New to create a custom product life-cycle.
9. To set the attribute value, select the Metric Attributes related list and complete the form.
When you add an attribute value, entitlements with this publisher information associated with
them automatically have the Metric Group field populated. Based on the metric group, only
license metrics related to the publisher are available.
10. To associate your software model with a vendor, select the Vendor Catalog Item related list
and complete the form.
11. To specify the number of devices or users that are accessing the software, select the Client
Access related list and complete the form.
12. To create a new record for the software downgrade rights, select the Downgrade Rights related
list and complete the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
Note: If your software model has a discovery map associated with it and the discovery
map has downgrade rights, the downgrade rights are populated automatically.
Downgraded versions of the software appear in a hierarchical list. For more information,
see Downgrade Rights.
13. Select Update.
Related topics
Supported software publisher licenses
Software models and Software entitlements
Software model fields

View normalization suggestions in Software Asset Management classic
View normalization suggestion records that are created for discovery models. You can accept or
reject these suggestions.

Before you begin
Role required:

• sam_admin: accepts or rejects the normalization suggestions.
• sam_user: views normalization suggestions.
The records are contained in the Normalization Suggestions [samp_normalization_suggestions]
table.

Procedure
1. Navigate to All > Software Asset > Discovery > Normalization Suggestions For details on the
normalization suggestion fields, see Normalization suggestions for discovery models.

Note: Suggested field values that differ from actual field values are indicated by a blue
dot.
2. Select Accept to make the suggested changes to the discovery model, or click Reject to keep
the existing settings.

Note: Only the sam_admin role can accept or reject the normalization suggestions. For
more details on accepting or rejecting suggestions, see Normalization suggestions for
discovery models.
View a software job result
You can view the results of Software Asset Management jobs that have run to verify completion.

Before you begin

Role required: sam_admin

About this task

Job results include:
• Discovery Model Normalization
• Identify Restricted Installs
• Identify New Reclamation Candidates

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
• Software Usage Import
• Update Existing Reclamation Candidates
• Software Asset Management Content Service Upload/Download
All Software Asset Management scheduled jobs are listed in the System Definition > Scheduled
Jobs navigation area. Software Asset Management scheduled job names begin with the product
name (SAM).

Note: The default date, time, and order of Software Asset Management scheduled jobs
are configured for optimal performance. Changing a scheduled job from the default run
setting may not be optimal for performance or data availability.

Procedure
1. Navigate to Software Asset > Administration > Job Results.
2. Open a record to view the job results.
Software Asset Job Result form
Field

Description

Number

Number of the job result that is generated when the job is run.

Name

Name of the job.

Status

Status of the job.

Created

Date and time job was created.

Updated

Date and time job was updated.

Manually normalize a software discovery model in Software Asset Management classic
You can edit a software discovery model to manually normalize discovered software that has not
been fully normalized (partially normalized, publisher normalized, or match not found) on the
Software Discovery Models form so that it can be reconciled.

Before you begin

Role required: sam_user

About this task

If the information automatically added to the software discovery model is incomplete, you can
add the missing fields to manually normalize the software discovery model.

Procedure
1. Navigate to All > Software Asset > Discovery > Discovery models and open a discovery
model record that has a normalization status of Partially Normalized, Publisher Normalized, or
Match Not Found.
2. Fill in the Publisher, Product, and Version fields, as appropriate.
You can create a custom product from the Product lookup list, if desired.
3. Select Save.
The normalization status is set to Manually Normalized.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
4. Optional: To revert normalization, select Revert Normalization.

Note: Discovery models with a status of Normalized, Partially Normalized, or Publisher
Normalized revert to the status of Match Not Found. Discovery models with a status of
Manually Normalized and discovery models that have been normalized using pattern
rules cannot be reverted.
Fields are reset to their original values, and any rules associated with the software
discovery model are deactivated.
Manually override edition value in Software Asset Management classic
When the edition of a software install is not automatically discovered, you can specify the
edition on the Software Installation form with the correct value (if known) so the software can be
successfully reconciled.

Before you begin

Role required: sam_admin

About this task

For reconciliation to run successfully, the publisher, product, version, and edition fields of the
software must be set. When the edition is not discovered automatically (edition value is not
included as part of the Display name field) but you know the edition, you can manually set it to
the correct value (Enterprise, for example).
Once the edition value is set, the discovery model for the software install is automatically reset. If
the appropriate discovery model does not exist, a new one is created.

Note: Not all software products consist of an edition. Of the software products consisting
of an edition, not all edition values are automatically discoverable.

Procedure
1. Navigate to All > Software Asset > Discovery > Software Installations and open the software
installation record for which to set the edition value.
2. Fill in the Edition override field, as appropriate.

Note: The Edition override field is a free-form field (no lookup list) therefore, since this
field is used as a key, the value entered must be exact.
3. Select Update.
The software installation is associated to different discovery model containing the edition
value as part of the primary key. If the appropriate discovery model does not exist, a new one is
created.
Discovered engineering licenses in Software Asset Management classic
View a list of all the discovered and normalized software for your engineering applications.
Navigate to Software Asset > Discovery > Discovered Engineering Licenses
You can view a list of all the normalized publishers and products for your engineering
applications. Additional information such as the version, quantity of licenses, and the type of
license is also displayed.

Software license usage
Review reconciliation results in a simplified workbench view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
The License Workbench lets you forecast the needs of your organization by trending the number
of rights consumed against the number of active rights purchased. You can stay in compliance
by purchasing additional rights before software consumption surpasses the number of rights
owned.
Workbench features include:
• Color-coded compliance banner
• Financial calculations on card
• Publisher pinning functionality (user specific, saved)
• Sort card functionality
• Active filtering
• Card drill down to Product Results list
• Keyboard control
• Group and subgroup reconciliation information, if applicable
License workbench

Pinned publishers are listed in the Pinned Publishers tab. The list of pinned publishers is saved

on a per-user basis.
License Workbench tabs
Tab

Description

All Publishers

List of all publishers.

Publishers Out of Compliance

List of all publishers where status is not
compliant.

Pinned Publishers

User-specific saved list of publishers that have
been grouped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
Publisher workbench navigation tree
Drill down on a specific publisher, product, software model, or license metric in the workbench
navigation tree to view the calculation and compliance information from the latest reconciliation
results.
The navigation tree features are:
• Filter products (active filtering, including collapsed items)
• Compliance toggle switch
• Expand and collapse tree links
• Software model compliance icons

By default, the navigation tree on the publisher license overview page is collapsed. When
expanded, it's grouped by publisher.
Publisher: Product Results related lists:
• Software Model Results
• Licensed Installs
• Unlicensed Installs (SAP: Unlicensed Users or Unlicensed Engines)
• Unlicensed Subscriptions (Subscription-based software)
• Removal Candidates
Software Model Results related lists:
• License Metric Results
• Remediation Options: The Rights Needed By tab is not visible for the Resource Value Unit
(RVU) IBM license metric. Rights are not used by individual devices, as the Resource Value Unit
(RVU) license metric is licensed at the product level.

Note: For more details on the remediation options, see View software model results.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
• Licensed Installs
• Unlicensed Installs (SAP: Unlicensed Users)
• Unlicensed Subscriptions (Subscription-based software)
• Unlicensed Consumptions (Consumption-based software models)
• Unlicensed Options (Oracle only)
• Removal Candidates
• Purchase Orders (only when the Procurement (com.snc.procurement) plugin is active)
License Metric Results related list:
• Rights Used By: Not visible for the Resource Value Unit (RVU) IBM license metric. The Resource
Value Unit (RVU) license metric is licensed at the product level; it is calculated based on the
total consumption of the product in your enterprise.

Note: Four additional fields are visible in the Rights Used By related list if you have
cloud installations.
• Licensed Installs
• Installs Used (SAP: System Users)
• Downgrades/Upgrades
• Licensed Subscriptions
• Cloud Special Rights: This tab is available only if you have cloud installations on cloud
platforms such as AWS or Azure. This tab is a subset of the Rights Used By tab and displays
fields pertaining to cloud installations. For detailed descriptions on the Cloud Special Rights
fields, refer to the Rights Used By tab.
Report calculations
Report

Description

Publisher, product, software model
Total Spend

Total cost of rights owned.

True-up Cost

Estimated cost of remediating unlicensed
installations based on the lowest number of
rights needed (rights needed multiplied by
average price per right from entitlements).
The lowest cost from Purchase Rights
remediation options.

Over-licensed Amount

Estimated cost of rights not being used. The
sum of the Over Licensed amount from the
True-up value costs.

Potential Savings

Cost saved if removal candidates are
reclaimed.

Agreement Type

Software license type.

License Metric results

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
Report calculations (continued)
Report

Description

Display name

Name of the license metric that the software
license is counted against when reconciliation
runs.

Rights owned

Sum of all active rights from entitlements that
share a license metric.

Rights used

Sum of rights that are used during
reconciliation (allocated plus not allocated
and installed).

Rights available

Sum of rights that are not used during
reconciliation (rights owned minus rights
used).

Legacy license

Indicates licenses purchased before 1 Oct
2019.​

Note: This field appears only if your
environment has dedicated hosts on
AWS or on Azure.

Over-licensed amount
Right allocations

Note: Microsoft has updated licensing
rules for dedicated hosts based on the
purchase date.

Estimated cost of unused rights.
• Allocated in use
• Not allocated in use
• Allocated not in use
• Not allocated
• Allocations needed

Note: For Microsoft Per Core and
Microsoft Per Core with (CAL), you can
have non-transferable rights. Nontransferable rights are any remaining
rights from a core pack that cannot be
used to license any additional devices.
Rights needed

Note: This field is hidden by default.

Number of rights that are required to cover
unlicensed installations.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Unlicensed installs

Note: This field is hidden by default.

Number of unlicensed software installations
that are not covered by any entitlements.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
Report calculations (continued)
Report

Description

Unlicensed SAP users (SAP only)

Number of unlicensed SAP users that are not
covered by any entitlements.

Note: This field is hidden by default.
Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Unlicensed options (Oracle only)

Note: This field is hidden by default.

Number of unlicensed Oracle database
options that are not covered by any
entitlements.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Unlicensed subscriptions

Note: This field is hidden by default.

Number of unlicensed software subscriptions
that are not covered by any entitlements.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
True-up cost

Note: This field is hidden by default.

Estimated cost of remediating unlicensed
installations that are based on the lowest
number of rights needed.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Potential savings

Note: This field is hidden by default.

Estimated cost saved by reclaiming removal
candidates.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Downgrade rights

Note: This field is hidden by default.

Previous software versions that you can
license using software entitlements for the
latest software version.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.

Rights Used By
Field

Description

Used by

User or device using the rights.

Rights
used

Sum of rights used during reconciliation (allocated + not allocated and installed).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
Field

Description

Cloud
Provider

Name of the cloud provider.

Note: This field appears only if you have cloud installations on AWS or
Azure.

Dual Use
Rights
Applied

Indicates if the concurrent rights provided by Microsoft Azure that allows
simultaneous usage of rights on-premise and on cloud is applied or not.

Note: This field appears only if you have cloud installations on AWS or
Azure.

Host Type

Type of host on the cloud: shared or dedicated.

Note: This field appears only if you have cloud installations on AWS or
Azure.
Edition
Flexibility
Applied

Indicates if the edition flexibility benefits provided by Microsoft Azure for Windows
Server and SQL Server is applied or not.

Note: For details on the edition flexibility benefits, refer to Licensing rules
for BYOL and BYOS.
This field appears only if you have cloud installations on AWS or Azure.
Allocated
in use

Rights that are allocated and are used to license installations.

Not
allocated
in use

Number of rights that are used to license installations, but not allocated.

Allocated
not in use

Rights that are allocated but are not being used to license any installations.

When this value is greater than 0, two remediation options (Create Allocations and
Remove Unallocated Installs) are automatically created for each unique license
metric in the software model that meets this requirement, except User CAL and
Device CAL.

Note: Allocated not in use reflects rights that are wasted because the
user or device for which these rights have been allocated do not have the
software installed.
When this value is greater than 0, a Remove Allocations remediation option is
automatically created for each unique license metric in the software model that
meets this requirement.
Allocations Number of allocations needed for compliance. Only used for Per Named User and
needed
Per Named Device license metrics.
Run software reconciliation in Software Asset Management classic
Reconciliation is run as a scheduled job (default is weekly), but you can also run reconciliation
manually to reconcile software products in your environment on demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
Before you begin

Role required: sam_admin

About this task

Reconciliation is run for products that have software entitlements or software installs. Grouping
and subgrouping are supported so you can narrow the compliance results.
When running reconciliation manually, allow enough time for the process to complete. For faster
results, narrow the scope by selecting specific publishers.

Procedure
1. Navigate to All > Software Asset > Reconciliation > Run Reconciliation and select the
publishers for which compliance should be calculated, or select all publishers.
2. To narrow results further, select Group and Subgroup, if desired.
Available group and subgroup values include None, Country, Department, Company, Region,
and Cost Center.
3. Select Continue.
The reconciliation process may take an extended amount of time to complete. Once
reconciliation is complete, the reconciliation results are shown.
View software model results
View compliance information for software model results from the Product Results list after
reconciliation is run.

Before you begin

Role required: sam_user

About this task

You can view License Metric Results, Remediation Options, Licensed Installs, Unlicensed
Installs, and Removal Candidates related lists for a software model result from a Product Result
record. When the Procurement
application (com.snc.procurement) is active, you can also
create and view purchase orders directly from the Remediation Options form. More remediation
options include automatically create and remove allocations, remove unallocated installs, and
remove unlicensed installs.
For example, if the status of a product result shows that it isn’t compliant, you can drill down
on the product result to view software model details. These details can include the number of
unlicensed installs and the true-up cost to become compliant. Further, you can drill down on the
software model result to view the license metric result, which is based on the entitlements for the
product.
License metric result information includes rights owned and rights used as well as the license
allocation breakdown so you can determine your options to become compliant. The Remediation
Options related list shows the number of rights needed and calculates the cost of those rights for
you, based on the license metric.
You can use the dashboard field action (
) icon on the Software Model Results form to view the
Rights Owned vs Rights Used chart to forecast when additional licenses are needed.

Note: Software model results (SMRs) aren’t generated for software models for Oracle
Database options without associated software entitlements. However, you can set the
system property com.snc.samp.unlicensed_smr_creation to True to create
SMRs for these models even if there are no entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
Procedure
1. Navigate to All > Software Asset > Reconciliation > Historical Results and select a
reconciliation result.
2. On the Reconciliation Result form, select a Product Results record to view the product result
details.
3. In the Software Model Results related list, open a record to view the software model result
details.
Software Model Results form
Field

Description

Software model

Software model associated with the product.
Drill down on the software model to see the
software model result.
The dashboard field action (
) icon shows
the Rights Owned vs Rights Used chart for
the software model.

Product result

Unique product result number generated
during the reconciliation process.

Group

Group specified on which to run
reconciliation. Values include None, Country,
Department, Company, Region, and Cost
Center.

Subgroup

Subgroup specified on which to run
reconciliation. Values include None, Country,
Department, Company, Region, and Cost
Center.

Latest

Indicates whether this software model result
is from the most recent reconciliation run.

Status

Status of the software model.
◦ Compliant
◦ Not Compliant

Agreement type

Agreement type is set on the software
entitlement.
◦ Common: Generic, Enterprise License
Agreement (ELA)
◦ IBM: Generic, Enterprise License
Agreement (ELA), International Program
License Agreement (IPLA), IBM Customer
Agreement (ICA), Unlimited Level
Agreement (ULA)
◦ Microsoft: Generic, Enterprise License
Agreement (ELA)
◦ Oracle: Generic, Unlimited Level
Agreement (ULA)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
Field

Description

◦ VMware: Generic, Enterprise License
Agreement (ELA), Enterprise Purchasing
Program (EPP), Volume Purchasing
Program (VPP)

Note: If the agreement type is
Enterprise Level Agreement or
Unlimited Level Agreement, the
Status is Compliant even if there are
unlicensed installations or unlicensed
subscriptions.
Unlicensed installs

Number of unlicensed software installations
that aren’t covered by any entitlements.

True-up cost

Estimated cost of remediating unlicensed
installations based on the lowest number of
rights needed (rights needed * average price
per right from entitlements). The lowest cost
from Purchase Rights remediation options.

Over-licensed amount

Estimated cost of rights not being used. The
sum of the Over Licensed amount from the
True-up value costs.

Potential savings

The cost that can be saved by acting on
underutilized or incorrect consumption of
licenses in related removal candidates.

License Metric Results
Display name

Name of the license metric that the
software license is counted against when
reconciliation runs.
Select the Display name to open the
corresponding License Metric Results
record, where you can view more in-depth
information about the license metric result.
See Software model results license metric
results fields for more details.

Rights owned

Sum of all active rights from entitlements that
share a license metric.

Rights used

Sum of rights used during reconciliation
(allocated plus not allocated and installed).

Rights available

Sum of rights not used during reconciliation
(rights owned minus rights used).

Over-licensed amount

Estimated cost of unused rights.

Legacy license

Indicates licenses purchased before 1 Oct
2019. This field appears only when the
environment has dedicated hosts on AWS or
on Azure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Field

Description

Note: Microsoft has updated licensing
rules for dedicated hosts based on the
purchase date.
Allocated in use
Not allocated in use

Rights that are allocated and are used to
license installations.
Number of rights that are used to license
installations, but not allocated.
When this value is greater than 0, two
remediation options (Create Allocations
and Remove Unallocated Installs) are
automatically created for each unique license
metric in the software model that meets this
requirement, except User CAL and Device
CAL.

Allocated not in use

Rights that are allocated but aren’t being
used to license any installations.

Note: Allocated not in use reflects
rights that are wasted because the user
or device for which these rights have
been allocated don’t have the software
installed.
When this value is greater than 0, a
Remove Allocations remediation option is
automatically created for each unique license
metric in the software model that meets this
requirement.
Nontransferable rights

Remaining rights from a core pack that can’t
be used to license any additional devices.
Nontransferable rights are available only for
Microsoft Per Core and Microsoft Per Core
with (CAL).

Not allocated

Number of rights that haven’t been allocated
(rights owned minus allocated regardless of
whether installed or not).

Allocations needed

Number of allocations needed for
compliance. Only used for Per Named User
and Per Named Device license metrics.

Rights needed

Number of rights that are required to cover
unlicensed installations.

Note: This field is hidden by default.
Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
Field

Description

Unlicensed installs

Number of unlicensed software installations
that aren’t covered by any entitlements.

Note: This field is hidden by default.
Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Unlicensed SAP users (SAP only)

Note: This field is hidden by default.

Number of unlicensed SAP users that aren’t
covered by any entitlements.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Unlicensed options (Oracle only)

Note: This field is hidden by default.

Number of unlicensed Oracle database
options that aren’t covered by any
entitlements.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Unlicensed subscriptions

Note: This field is hidden by default.

Number of unlicensed software subscriptions
that aren’t covered by any entitlements.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
True-up cost

Note: This field is hidden by default.

Estimated cost of remediating unlicensed
installations that are based on the lowest
number of rights needed.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Potential savings

Note: This field is hidden by default.

Estimated cost saved by reclaiming removal
candidates.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Downgrade rights

Note: This field is hidden by default.

Previous software versions that you can
license using software entitlements for the
latest software version.

Select the personalize list icon ( )
to modify the fields that appear in the
License Metric Results.
Remediation Options
Remediation action

Action to take to for compliance.
◦ Purchase Rights
◦ Remove Allocations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


<!-- page 299 -->
Field

Description

◦ Create Allocations
◦ Remove Unallocated Installs (Not available
for Oracle database options)
◦ Remove Unlicensed Installs (Not available
for Oracle database options)
◦ Remove Unlicensed Installs - Cloud
(available only if you have cloud
installations).
◦ If the actionable rights value is 0, the
Remediation action button will not appear.
Affects compliance

Specifies whether the remediation options
affect compliance.

License metric

Specific license metric of the software model
result.

Software model result

Specific software model result pertaining to
the remediation option.

Status

Status of the remediation option.
◦ New (blue)
◦ Complete (green)
◦ Completed with Errors (yellow)
◦ Void (red)
◦ In Progress (yellow)
In Progress state indicates that the
remediation action is in progress. If removal
candidates are being created, the status
changes to completed once the removal
candidates are created.

Rights not in use
Rights not allocated
Rights needed
Reclaimable rights
Unlicensed rights

◦ Remove Allocations action shows Rights
not in use field.
◦ Create Allocations action shows Rights
not allocated field.
◦ Purchase Rights shows Rights needed
field.
◦ Remove Unallocated Installs action shows
Reclaimable rights field.

(Field shown is based on Remediation action
◦ Remove Unlicensed Installs action shows
type)
Unlicensed rights field.
Actionable rights

Total rights affected by the action.

Purchase order

Purchase order number associated with the
remediation option, if a purchase order was
created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
Field

Description

True-up cost

Estimated cost of remediating unlicensed
installations based on the lowest number of
rights needed.

Unlicensed Subscriptions

Note: This related list is shown only for subscription-based software products.
Display name

Name of the unlicensed software
subscription that is not covered by any
entitlements.

User principal name

Name of the user that is associated with the
unlicensed software subscription.

Software model

Software model that the unlicensed software
subscription is associated with.

Subscription profile

Integration profile that the unlicensed
software subscription is associated with.

Subscription type

Type of subscription.

Unlicensed Consumptions

Note: This related list is shown only for consumption-based software models.
Software model

Software model that has unlicensed software
consumptions.

Subscription profile

Integration profile that has unlicensed
software consumptions.

Units consumed

Number of software units that your users
have consumed.

Contract start

Start date of your licensing contract.

Contract end

End date of your licensing contract.

Actual monthly consumption

Actual number of software units that your
users consume per month.

Expected monthly consumption

Number of software units that you expect
your users to consume per month.

Cost Center

Business unit that has unlicensed software
consumptions.

Department

Department that has unlicensed software
consumptions.

Location

Geographic location in which there are
unlicensed software consumptions.

Company

Name of the company that has unlicensed
software consumptions.

The Licensed Installs related list contains the software installations that are licensed. To view
more information about a licensed software installation, open the corresponding Software
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
Installation record by selecting the Display name. Refer to Software installation fields for
detailed descriptions of each field in the Software Installation record.
The Unlicensed Installs related list contains the software installations that are unlicensed.
To view more information about an unlicensed software installation, open the corresponding
Software Installation record by selecting the Display name. Refer to Software installation fields
for detailed descriptions of each field in the Software Installation record.
The Unlicensed Users related list contains the SAP system users that are unlicensed.

Note: This related list is shown only for the SAP publisher.
The Removal Candidates related list contains removal candidates related to software
installations. For more information, see Removal candidates.
4. Execute remediation options for specific remediation actions by selecting an option from the
Remediation Options related list and then selecting the applicable action.
Remediation option action buttons
Remediation option action

Action button

Result

Remove Unlicensed Installs

Create All Removal
Candidates

When removal candidates
are created for unlicensed
installs, the status is set to
Awaiting Revocation.

Remove Unallocated Installs

Create All Removal
Candidates

When removal candidates
are created for unallocated
installs, the status is set to
Ready.

Remove Allocations

Remove All Allocations

When allocations are
removed, the number of
allocations is adjusted.
When you select this button,
a message is displayed on
the screen indicating that the
action is in progress.

Create Allocations

Create All Allocations

When allocations are
created, the status of
Remove Unallocated Installs
remediation options (for the
same license metric of the
same software model result)
are then set to Void.
When you select this button,
a message is displayed on
the screen indicating that the
action is in progress.

Purchase Rights

Create Purchase Order

When a purchase order is
created, the status of any
Purchase Rights remediation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
Remediation option action

Action button

Note: The Create

Purchase Order button
creates a purchase
order
but is only
shown when rights
needed is greater than
0, and Procurement is
active.
The Create Purchase
Order button remains
active until the
purchase order has
finished processing.
Therefore, to avoid the
creating a duplicate
purchase order for the
same item, wait to run
reconciliation again until
after the purchase order
has finished processing.

Result

options for the same software
model result are then set to
Void.
Purchase order fields Part
number, Metric group,
License metric, and Ordered
quantity are automatically
populated with the content
from the remediation option.
Metric group and License
metric fields are added to
the purchase order form
so the entitlement can be
automatically created when
the order is complete.
A notification is shown if at
least one active purchase
order line item exists for the
software model.
Once a purchase order is
created, the Purchase order
field, containing the purchase
order reference, is added to
the remediation option.

A confirmation message is shown and all applicable removal candidates are added to the
Removal Candidates related list.
Add a software removal candidate in Software Asset Management classic
Removal candidates reclaim software resources in your environment. They are created from
reclamation rules, or can be created manually.

Before you begin

Role required: sam_user

About this task

Software reclamation is integrated with Workflow and Client Software Distribution to automate
the process of uninstalling software from devices and reclaiming software rights. However, you
can also create a removal candidate manually.

Procedure
1. Navigate to All > Software Asset > Removal Candidates
2. Select New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
Removal Candidate form
Field

Description

Number

Unique removal candidate number that is
automatically generated.

Assignment group

Automatically set to the software managers
group authorized to respond to removal
candidates.

Assigned to

Person primarily responsible for working this
task.

Name

Removal candidate name that is
automatically generated. Contains the
software installation display name.

Description

Description of why the task exists, and what
the user must do, if they receive an approval.

State

Current state of the removal candidate.
◦ Attention Required
◦ Ready
◦ Awaiting User
◦ Awaiting Approval
◦ Awaiting Revocation
◦ Closed Complete
◦ Closed Skipped
◦ Closed Canceled

Opened

Date the task was opened.

Closed

Date the task was closed.

Justification

Justification for becoming a removal
candidate.
◦ Low Usage (default)
◦ Unallocated
◦ Unlicensed
◦ Restricted Software

Removal Candidate
Applies to

Item type to which the reclamation rule
applies.
◦ Installed Software
◦ Subscription Software
◦ Engineering App License

Software installation

The software installation being reclaimed.

Engineering App License

The Engineering application license that you
want to reclaim.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
Field

Description

Note: Only appears if Engineering

App License is selected in the Applies
to list.
User

Name of the user assigned to the software
installation.
This value can be changed so that another
user receives the notification of software
being uninstalled.
If the Bulk Reclamation check box is
selected, this becomes a mandatory field.

Bulk Reclamation

Select this check box to reclaim multiple
software installations.
Once you select this check box, the Software
installation field is no longer visible. To add
software installations, refer to sub steps
mentioned in step 4.

Reclamation rule

The reclamation rule that created the removal
candidate.

Rights to reclaim

The number of rights that you want to reclaim.
For example, you have 100 rights installed on
a license server but you want to reclaim only
40 rights.

Note: Only shown if Engineering App
License is selected in the Applies to
list.
Potential savings

Estimated cost of savings if all removal
candidates are in Closed Complete state,
meaning the software was uninstalled and
the rights were harvested (unused rights *
average price per right from entitlements).

Notify user

Check box for notifying the user assigned
to the hardware on which the software is
installed requesting permission via email to
remove the software.

Configuration item

The device on which the software is installed.

Activity
Work notes

Used to track the actions that have been
performed on this task.

4. Select Save.
The removal candidate record is created. If you selected the Bulk Reclamation check box,
perform the following sub steps to add software installations, before proceeding to the next
step. If you didn't select the Bulk Reclamation check box, proceed to the next step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


