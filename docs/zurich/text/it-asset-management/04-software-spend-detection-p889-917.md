# Zurich IT Asset Management — Software Spend Detection / Software Asset Management administration

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 889–917 of 2359

Sections: Software Spend Detection (p889); Software Asset Management administration (p897)

---

<!-- page 889 -->
Field

Description

This field is not visible in the default view.
You can add this field to the form using the
custom view.
Domain

Domain to which the data belongs.

Active

The option when the exclusion rule is active.

6. Select Save.

Result

The user-based exclusion rule is created for the subscription identifier. The specified
subscription identifier remains excluded when the scheduled job is executed for license
calculations.

Software Spend Detection
Use the ServiceNow Software Spend Detection application to track, analyze, and optimize
software spending from imported financial data.
Use Software Spend Detection to optimize software spending.
• Streamline business processes and reduce costs by consolidating software products with
similar functionality.
• Reinforce company software purchasing policies by viewing all software purchased in each
department.
• Start managing any unmanaged software by creating software models and entitlements with
Software Asset Management.

Request Software Spend Detection
Request Software Spend Detection to track, analyze, and optimize software spending. To
access Software Spend Detection, enable the Software Asset Management - Spend Detection
(com.sn_sam_spend) plugin. This plugin includes demo data.

Before you begin

Before you can request Software Spend Detection, you must sign the Software Spend Detection
legal agreement. For more information about the Software Spend Detection legal agreement,
contact your ServiceNow account representative.
To use Software Spend Detection, you must activate the Software Asset Management
Professional (com.snc.samp) plugin on your ServiceNow instance. For more information about
activating Software Asset Management Professional, see Request Software Asset Management.

Note: Software Spend Detection is not supported for on-premises users hosting their own
ServiceNow instance.
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

889


<!-- page 890 -->
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.

Software Spend Detection Overview dashboard
View all software spend from uploaded financial data in the Software Spend Detection Overview
dashboard.
Access the Software Spend Detection dashboard by navigating to Software Spend Detection >
Overview.
Expand a publisher in the left menu bar to see their products. Select a publisher or product to
show only those transactions. Select Edit date range to filter transactions by date. By default, the
dashboard shows all transactions from within the past year. Move your cursor over the Software
Spend Over Time graph to view exact spend amounts. You can also view transactions grouped
by cost center, department, or location using the tabs at the bottom of the dashboard.
Sharing the dashboard's URL displays your currently selected publisher, product, and date
range. To view the applied filters, the URL recipients must already be logged in to their
ServiceNow instance.

Note: Transactions that aren't labeled with a software publisher aren't included in the
dashboard. You can manually update these transactions with a publisher to add them to the
dashboard. For more information, see Manually update transactions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

890


<!-- page 891 -->
Indicator

Description

Total
Publishers

Total number of publishers. This includes publishers automatically detected from
imported financial transactions and publishers manually added to transactions.

Unmanaged Number of publishers that have unmanaged products.
Publishers
Total
Products

Total number of products. This includes products automatically detected from
imported financial transactions and products manually added to transactions.

Unmanaged Number of products that don't have a software model.
Products
Total
Detected
Spend

Total amount spent on software. This value is equal to Accounts Payable Spend
plus Expense Spend.

Unmanaged Total spend for transactions where the publisher and product are identified but
Spend
there's no software model for the product. You can create software models and
entitlements to start tracking those products and turn unmanaged spend into
managed spend.
Accounts
Payable
Spend

Total spend for transactions where the type is Accounts Payable. These
transactions are from an accounting or procurement system.

Expense
Spend

Total spend for transactions where the type is Expense. These transactions are
from an employee expense system or credit card feed.

Software
Amount spent on software each month.
Spend Over
Time

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

891


<!-- page 892 -->
Opt in to Content Service
Opt in to Content Service for Software Spend Transactions to get more accurate predictions in
Software Spend Detection by sharing financial transaction data with the ServiceNow Content
Service team.

Before you begin

Role required: sam_admin

About this task

Opting in to Content Service for Software Spend Transactions means that you agree to have
a copy of your financial transaction data securely sent to ServiceNow. Your data is used only
to improve future publisher and product predictions when importing data into Software Spend
Detection. You can opt out of Content Service at any time.
If you already opted in to Software Asset Management Content Service, you still need to
manually enable data sharing for Software Spend Detection by selecting the Software Spend
Transactions toggle button on the Content Service Setup page. Software Spend Transactions
data sharing is disabled by default.
If you opt in after you've already imported data into Software Spend Detection, data from
previous imports is shared as well as data from future imports.

Note: If you want to hide the ability to opt in, a user with the admin role can set the

glide.samp.spend_detection_opt_in.enabled system property to false. Setting this value
to false hides the toggle button used to turn on sharing for software spend transactions.
Also, if this property is set to false when you're already opted in, your transaction data is
no longer shared.

Procedure
1. Navigate to All > Software Spend Detection > Administration > Content Service Setup.
2. Select the check the box to accept the opt-in agreement and then select Opt-in.

Note: If you already opted in to Content Service through Software Asset Management,
you don't see the opt-in screen.
Data sharing for Software Discovery Models, Software Model Lifecycles, Part Numbers and
Discovery Maps, and Processor Names KPIs is automatically enabled after opting in. If you
don't want to share data for some KPIs, individually disable sharing by selecting the toggle
button next to the KPI and then selecting Save. For more information about Content Service
KPIs, see Software Asset Management Content Service.
3. To turn on sharing for software spend transaction data, select the toggle button next to
Software Spend Transactions and then select Save.

What to do next

You can return to the Content Service Setup page to adjust your data sharing settings for each
KPI. You can completely opt out by selecting I would like to opt my company out of the Software
Asset Management Content Service Program. After opting out, you can opt back in at any time.
Content Service for Software Spend Detection
Opt in to Software Asset Management Content Service for Software Spend Transactions to get
more accurate predictions in Software Spend Detection by sharing financial transaction data with
the ServiceNow Content Service team.
Opting in to Content Service for Software Spend Transactions means that you agree to have a
copy of your financial transaction data securely sent to the ServiceNow Content Service team.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

892


<!-- page 893 -->
ServiceNow uses your data only to improve future publisher and product predictions when
importing data into Software Spend Detection. ServiceNow protects all data using the same
policies that protect customer instances.
Opting-in shares the following data with ServiceNow:
• Vendor name
• Transaction description
• GL account
• Prediction results (Publisher ID, Product ID, Is Software)
Your data is sent anonymously to the Content Service team. Your data isn't linked to any
identifiable information, such as company or instance name. Before importing data, it's your
responsibility to ensure that the fields Vendor name, Transaction Description, and GL account
don't contain any identifiable information such as company or employee names.
The ServiceNow Content Service team uses these data points to improve machine learning
models used by ServiceNow Artificial Intelligence (AI) Services. The AI Services are a set of web
services that reside within every ServiceNow datacenter. All Software Spend Detection users
benefit from continual improvements to ServiceNow AI Services, but users who are opted-in
to Content Service benefit the most. ServiceNow AI Services learns how to identify software
products and publishers in your transactions that Software Spend Detection previously was not
able to identify. This learning improves the functionality for your future imports.

You can opt out of Content Service at any time. If you opt out, no data from future imports is
sent to the ServiceNow Content Service team, but your previously shared data is not deleted.
If you would like to participate in Content Service but exclude some transactions from being

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

893


<!-- page 894 -->
shared with ServiceNow, you can select the Exclude from content service check box on those
transaction records.

Import financial transactions
Import a Microsoft Excel spreadsheet of financial transaction data to start managing software
spending.

Before you begin

Role required: sam_spend_import or sam_admin
Note: Users with the sam_user role can manually create transaction records by selecting
New at the top of the All Imported Transactions page.

About this task

Your imported data can include all financial transaction data for your company. Software Spend
Detection automatically determines whether each transaction is a software purchase. Before
importing data, ensure that the fields Vendor name, Transaction Description, and GL account
don't contain any identifiable information such as company or employee names. Make any
necessary changes to the data before you import. All imported financial transaction data fields
are read-only once loaded in your instance.
The import may take several hours when importing large numbers of transactions.

Note: Software Spend Detection currently supports transaction data in English only. If
you would like to help train ServiceNow artificial intelligence using data in other languages,
contact the ServiceNow IT Asset Management product team.

Procedure
1. Navigate to All > Software Spend Detection > Administration > Import Transactions.
2. Select Download Template File (.xlsx).
3. Copy your financial data into the template file.
The required fields are Transaction date, Vendor name or Description, and Type. Fill in as
many fields as possible for the most robust results.
Software Spend Transactions import template
Field

Description

Transaction Required. Transaction date.
date
Vendor
name

Company associated with the transaction. Don't include any identifiable
information such as your company or employee names. Provide at least one of
vendor name or description.

Description Description of the purchase. Don't include any identifiable information such
as your company or employee names. Provide at least one of vendor name or
description.
GL account General ledger account or expense category. Don't include any identifiable
information such as your company or employee names. Optional.
Amount

Transaction amount. Optional.

Type

Required. Select Accounts Payable or Expense. Accounts Payable transactions
are from an accounting or procurement system. Expense transactions are from
an employee expense system or credit card feed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

894


<!-- page 895 -->
Field

Description

Location

Location. Optional.

Cost center Cost center. Optional.
Department Department. Optional.
Source

Name of the system that the transaction came from. Optional.

Type detail

Description for the Type field. For Accounts Payable, examples are vendor
bill or invoice payment. For Expense, examples are credit card purchase or
employee reimbursement. Optional.

External ID

ID of the transaction in the source system. Optional.

Employee
ID

Employee ID. Optional.

Employee
name

Employee name. Optional.

Employee
email

Employee email. Optional.

4. Upload the completed file.
5. Navigate to Software Spend Detection > Administration > Transaction Import Results to view
information about the import and resolve any import errors.
When the import is complete, Software Spend Detection begins matching your transactions
to software publishers and products. Software Spend Detection also assigns a 0 - 1 value to
the Is software probability, Product confidence, and Publisher confidence fields for every
transaction. For example, a value of .85 for Publisher confidence means that Software Spend
Detection is 85% sure that it matched the correct publisher to the transaction. When the
matching process is complete, you can view the data in the Overview, Overlapping Software,
and Software Spend Transactions modules under Software Spend Detection.

What to do next

Navigate to Software Spend Detection > Unnormalized Transactions to view any transactions
that Software Spend Detection wasn't able to match with a software publisher and product.
You can manually update these transactions to add a publisher and product. Opt in to Content
Service to improve matching for future imports.
If necessary, you can mass delete all transactions from an import. Navigate to Software Spend
Detection > Administration > Transaction Import Results, select the import record, and then
select Delete.

Manually update transactions
Manually update imported software transactions that weren't automatically labeled with a
software product and publisher to track all software spending.

Before you begin

Role required: sam_user

About this task

Sometimes, Software Spend Detection can't match a transaction to a software publisher
and product. If Software Spend Detection can identify the publisher but not the product, the
transaction is categorized as Unnormalized in the list of products for that publisher in the
Software Spend Detection dashboard. The transaction amount is added to the total cost for that
publisher. If Software Spend Detection can't identify the publisher, the transaction is added to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

895


<!-- page 896 -->
Unnormalized Transactions and is excluded from the Software Spend Detection dashboard. The
transaction amount isn't included in any of the spend amounts shown on the dashboard.

Procedure
1. Navigate to All > Software Spend Detection > Unnormalized Transactions.

Note: By default, this list shows only transactions identified as software by Software
Spend Detection. To include transactions not identified as software, remove the filter
condition Is software = true.

2. Select a transaction date.
3. Select values for the Publisher and Product fields.

Note: You can create software publishers and products directly from this form by
selecting the Lookup using list icon (

) next to the field and then selecting New.

4. Clear or select the Is software check box to indicate if the transaction is a software purchase.
5. Select Update.
The transaction is removed from the list of unnormalized transactions and is added to the
Software Spend Detection dashboard.

Installed with Software Spend Detection
User roles and tables are installed with Software Spend Detection. Demo data is available for
Software Spend Detection.

User roles
Role

Description

sam_spend_import Role required to import financial transaction data into Software Spend
Detection. Users with this role can view all modules in Software Spend
Detection except Content Service Setup. Users with this role cannot view
Software Asset Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

896


<!-- page 897 -->
Tables
Table

Description

Software Spend Transactions
[sam_spend_transaction]

Financial transaction data.

Software Spend Transactions Import
[sam_spend_transaction_import]

Import summary table showing number of rows
imported and any import errors.

Software Spend Transactions Import
[imp_sam_spend_transaction]

Staging table for financial transaction data
imports.

Overlapping Software Configuration
[sam_sw_overlap_configuration]

List of reports shown on the Overlapping
Software dashboard.

Overlapping Software Summary
[sam_sw_overlap_summary]

List of software products with spend transactions.

Software Asset Management administration
Software Asset Management administration tasks include adding custom part number records
and custom license metrics. You can also refresh processor definitions and migrate software
installations. Software Asset Management content service can be enabled, and migration
procedures are also included.
The sam_admin role is required to configure administrative tasks. However, the sam_user role
can view and read configurations.
Software Asset Management job results show the status of discovery model normalization and
software usage import jobs.
Software Asset Job Results records are listed in the navigation path All > Software Asset >
Administration > Job Results (see table for field descriptions).
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

Enable sharing information with Software Asset Management content service
Opt in to share unnormalized software installation data from your organization with Software
Asset Management Content Service. You can opt out at any time.

Before you begin

Role required: sam_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

897


<!-- page 898 -->
About this task

Note: If you are managing a National Security Cloud (NSC) Department of Defense (DOD)
Impact Level 5 (IL5) deployment, you cannot share any unnormalized software installation
data with ServiceNow even if you opt to participate in the Software Asset Management
Content Service. If a software product does not exist in the Software Asset Management
Content Library, you can create a software content request for it manually. For detailed
instructions, see Create IT Asset Management content request.

Important: If you're using the Software Asset Management application on-premise,
you can set up your ServiceNow instance to connect directly to the Content Service. For
detailed instructions, see the knowledge base article KB1585263 .

Procedure
1. Navigate to All > Software Asset > Administration > Content Service Setup.
2. Select Opt-In Agreement to read the agreement.
3. After reading the agreement, select Done.
4. Select the Yes, I have read and accept the Opt-In Agreement check box and then select OptIn.
After you opt in, the Software Discovery Models, Software Product Lifecycles, Part Numbers
and Discovery Maps, Processor Names, and Product License Exception Rules KPIs are
automatically enabled. The Custom Software Products KPI is automatically disabled.
5. To enable or disable a KPI, select the toggle button next to the KPI and then select Save.
6. To opt out, select I would like to opt my company out of the Software Asset Management
Content Service Program and then select Opt-Out.
The Software Discovery Models, Software Product Lifecycles, Part Numbers and Discovery
Maps, Processor Names, Product License Exception Rules, and Custom Software Products are
disabled and your unique normalization content is no longer provided to the Software Asset
Management content service.
Related topics
Software Asset Management Content Service

Exclude software assets on CIs
You may want to manage software assets installed on a subset of your configuration items in the
Software Asset Management application.

Before you begin

Role required: sam_admin

About this task

For example, some of your devices may be leased from a third party and you are not responsible
for license compliance for the software on those devices. Or, you may want to start with
managing software installed on devices only at a specific location (for example the New York
office). Then, you can expand to managing software on devices in other locations. Convey to
the Software Asset Management application which devices you want to exclude. The system
excludes any software installed on these devices in license compliance calculations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

898


<!-- page 899 -->
Procedure
1. In the Hardware [cmdb_ci_hardware] table, add a true/false column, for example, Exclude from
SAM [u_exclude_from_sam].
2. Set the value of the Exclude from SAM column to true for devices you don’t want to manage
installed software for in the application.

Note: The default value of the Exclude from SAM column is false. By default, the system
manages installed software on all devices.
3. Navigate to Software Asset > Administration > Properties and then enter the column name,
[u_exclude_from_sam], in the field next to the property Enter the name of the true/false field
added to cmdb_ci_hardware table to exclude software installed on selected devices from
Software Asset Management.
Ensure that you enter the column name without the brackets.
Once the scheduled job (SAM — Adjust Installs for excluded CIs) runs, the software installed
on devices with the Exclude from SAM column set to true are excluded from the application.
4. To start managing software installs on previously excluded devices in the application, set the
value of the Exclude from SAM column for the device to false.
Once the scheduled job (SAM — Adjust Installs for excluded CIs) runs, the system starts
managing software installs on these devices.
5. Complete the following steps to start managing the software installs on all previously excluded
devices.
a. Navigate to Software Asset > Administration > Properties.
b. Delete the column name [u_exclude_from_sam] from the property
c. Select Save.
Once the scheduled job (SAM — Adjust Installs for excluded CIs) runs, the system starts
managing the software installed on all previously excluded devices.

Engineering license servers
View the list of all the license management servers that OpenLM or Open iT connect with to get
data into your ServiceNow instance.
You can view information about all the license management servers by navigating to All >
Software Asset > Administration > Engineering License Server.
Information such as the name of the server, the current status of the server, and the last
connection time is displayed in the Engineering Application License Servers
form layout.

Add a software pattern normalization rule
You can add a pattern normalization rule to normalize specific software products in your
environment based on a common pattern.

Before you begin

Role required: sam_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

899


<!-- page 900 -->
About this task

Note: When creating a pattern normalization rule for custom products and publishers,
create the custom product and company records first.

Procedure
1. Navigate to All > Software Asset > Administration > Pattern Normalization Rules and create a
new record (see table for field descriptions).
Pattern Normalization Rule form
Field

Description

Name

Specify a unique name for pattern
normalization rule.

Discovered publisher contains

Specify text to search for in the software
publisher field.

Discovered product contains

Specify text to search for in the product field.

Active

Option that activates the rule.

Discovered publisher is empty

Option that includes products that have an
empty publisher field (the rule applies to
discovery models where the publisher is
unknown).

Normalized Attributes
Publisher

Specify the normalized name of the publisher
of the software.

Product

Specify the normalized name of the product.

Edition

Specify the product edition.

Product type

Choose the product type.
◦ Child: A subcomponent of main software
(not licensable).
◦ Driver: Software product that controls a
device.
◦ Licensable: Software product that is
licensable.
◦ Not Licensable: Software product that is
not licensable.
◦ Patch: Software product designed
to update, fix, or improve an existing
computer program.

Version

Specify the version of the product.

Platform

Choose the platform.
◦ Windows
◦ macOS
◦ UNIX

Language

Choose the language.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

900


<!-- page 901 -->
Field

Description

◦ Dutch
◦ English
◦ French
◦ German
◦ Italian
◦ Spanish
2. Once the rule is created, to apply the rule so applicable discovery models are normalized
without delay, click the Apply Rule related link.

Add a software reclamation rule
Add a reclamation rule to aggregate usage records and to identify unused software.

Before you begin

Role required: sam_admin

About this task

If you select the Notify user option in the reclamation rule, then the user has a chance to
respond with approval during the process of reclamation. If no response is received during a
specified period, the software rights are automatically reclaimed. If the user still wants to keep
the software installation, it becomes the responsibility of the manager to approve or decline the
removal.
For information on creating a reclamation rule for SCCM products, see Create a reclamation rule
to import Microsoft SCCM usage data.

Procedure
1. Navigate to All > Software Asset > Administration > Reclamation Rules.
2. Select New.
3. On the form, fill in the fields.

Note: You can edit the software members of the Software Products list after the
reclamation rule is created.
Reclamation Rules form
Field

Description

Name

Name for the reclamation rule.

Applies to

Item type that the reclamation rule applies to.

Reclamation type

Type of reclamation rule. The possible values
are the following:
◦ Total Usage Time (default)
◦ Last Used Date

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

901


<!-- page 902 -->
Field

Description

◦ Peak Concurrent Usage (appears only
when you select Engineering App License
from the Applies to list)
◦ Active Transaction Codes (appears only
when you select SAP Named User from the
Applies to list)
Named user type

SAP named user type. This field appears only
when you select SAP Named User from the
Applies to list.

Note: This field is applicable to only to
the SAP publisher.
Create reclamation candidate

When selected, a removal candidate is
created for this reclamation rule, in addition
to pulling in usage for all the software
products associated with this rule.
By default, this check box is selected. If you
unselect this check box, a removal candidate
is not created for this rule, although usage of
the software products is still pulled in.

Include no activity

When selected, software products that have
installations on devices but don’t have usage
records in the usage table are also reclaimed
based on the following rules:
◦ Usage is available for the selected product
(at least one usage record) within the time
period of the reclamation rule.
◦ For the Last Used Date reclamation type,
the install must be created greater than the
Last used before value.
◦ For the Total Usage Time reclamation type,
the install date must be greater than the
Aggregate usage by value.

Assignment group

The assignment group to manage the
removal candidates created by the specific
reclamation rule. Whenever a removal
candidate is created based on this rule,
the assignment group mentioned in the
reclamation rule is copied over to the removal
candidate.
By default, the value Software managers
is selected. You can select any other
group or create a group from the Group
[sys_user_group] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

902


<!-- page 903 -->
Field

Description

Notify user

Option to notify the relevant user that
you’re requesting permission to remove the
software.

Days before auto-reclamation

Software install condition/Subscription
condition

This field appears if you select Notify
user. Once the removal candidate goes for
approval and no response is received from
the user, after the number of days mentioned
in this field, the software product is revoked.
The software install condition field appears if
you select Installed Software in the Applies
to field.
The Subscription condition field appears
if you select Subscription software in the
Applies to field.

Usage Metering Data
This section appears only when you select Total Usage Time, Peak Concurrent Usage, or
Active Transaction Codes from the Reclamation type field.
Aggregate usage by

Time period over which usage information is
aggregated. Possible values are the following:
◦ Last Month
◦ Last Two Months
◦ Last Three Months
◦ Last Six Months (available only if you select
Installed Software from the Applies to list)

Total hours used

Amount of time that the software must be
used to avoid reclamation.

Percent utilized

License utilization percentage. For example,
If you specify 60% and you utilized less
than 60%, then a reclamation candidate is
automatically created for the remaining 40%
rights. This field is available only when you
select Engineering App License from the
Applies to list.

Minimum transaction codes required

Minimum number of SAP transaction codes
that must be active so that a named user
can avoid reclamation. You can specify
the applicable transaction codes in the
SAP Transaction Codes related list. The list
appears after you submit the reclamation
rule.
This field is applicable to only to the SAP
publisher. This field is available only when
SAP Named User is selected from the
Applies to list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

903


<!-- page 904 -->
Field

Description

Last Used Data
This section appears only when you select Last Used Date from the Reclamation type field.
Last used before

Amount of time to keep unused software
before it’s reclaimed.
◦ One Month Ago
◦ Two Months Ago
◦ Three Months Ago
◦ Six Months Ago
◦ Nine Months Ago
◦ One Year Ago

4. Select Submit.
After the reclamation rule is created, add software products to the reclamation rule. You can
also add a custom software product.
Additionally, you can specify filter conditions on software products that are suite parents. For
details on adding a custom software product, see Add a custom software product in Software
Asset Management classic. For details on filter conditions, refer to Software reclamation rules.
5. Select Edit in the Software Products related list to add software products.
When you add a product that is also a suite parent, all the suite components automatically
get added and appear in the Software Product related list. The Parent field is automatically
populated for all the suite components but it's empty for the suite parent.
Additionally, when a product is added to the related list, the product process related list
appears as well as any product processes (if already present in the system) for the parent and
suite products.
6. If a product process doesn’t exist for the software product, you can add a custom product
process.
a. Select New in the Product Process related list.
b. On the form, fill in the fields.

Note: The Product Process related list appears only when you select a software
product with a product process.

Field

Description

Product

Software product.

File name

File name of the software product. The file
name is required for the SCCM Usage to pull
data.

Platform

Platform of the software product.

c. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

904


<!-- page 905 -->
Note: The Product Process related list is displayed only when a software product with a
product process is selected.
7. If you selected SAP Named User from the Applies to list, specify the SAP transaction codes
that must be active to help prevent reclamation.

Note: This step is applicable to only the SAP publisher.
Not all specified transaction codes must be active to help prevent reclamation. The minimum
number of transaction codes that must be active is based on the value of the Minimum
transaction codes required field.
a. From the SAP Transaction Codes related list, select Edit....
b. On the Edit Members form, select a transaction code from the Collection list or from the SAP
Transaction Codes List.
The Collection list displays all available transaction codes. The SAP Transaction Codes List
displays only the transaction codes that must be active to help prevent reclamation.
c. Select the right and left arrow icons to move the transaction code between the lists.
d. Select Save.

Create a custom file rule to manually define file sets
Create custom rules to manually define file sets and normalize data not recognized by the SAM
API. After you have created custom rules, custom file sets can be discovered with File Signature
Normalization and software records can be generated.

Before you begin

Role required: sam_admin

About this task

File Signature Normalization identifies software installation packages based on file attributes in a
configuration item. The input is then sent to the SAM API. If there are files properties discovered
that are not associated with the File Signature Normalization rule, you can manually normalize the
data and send the input to the API to create a software installation record.

Note: File signature rules discovered in the content service library take precedence over
custom file signature rules.

Procedure
1. Navigate to All > Software Asset > Administration > Custom File Normalization Rules and
create a new record (see table for field descriptions).
Unidentified File Set form
Field

Description

Publisher

Publisher of the software. You can use the lookup list provided.

Note: Publisher is a reference to the company [core_company] table.
Only companies you are using internally are shown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

905


<!-- page 906 -->
Field

Description

Product

Software product name. The same lookup list provided on the Software
Discovery Models form. You can create a custom product from the lookup list, if
desired.

Note: If the relationship between the software publisher
[samp_sw_publisher] table and the company [core_company] table is not
correct, products for that publisher may not be shown.
Version

Version of the software product.
Required if version condition value is [starts with] or [is-].

Edition

Edition of the software product to use when searching for the normalized
discovery model.
Required if edition condition value is [starts with] or [is].

Platform

Platform of the software product to use when searching for the normalized
discovery model.
The default is Anything for Windows, macOS, UNIX.

Language

Language of the software product to use when searching for the normalized
discovery model, which is populated once it has been normalized or added
manually.
The default is Anything.

Exclude
from
content
service

Option to exclude file set rule from being included in content service library.

File name

Name of file associated with software installation as it exists in the system.

File size

Size of file name file in bytes.

File
version

Version of file name file.

2. Click Submit.

Result

The custom rule is added to the Unidentified File Sets list.

Configure third-party discovery sources for Software Asset Management
Set up a third-party discovery source for Software Asset Management to populate the Software
Installation [cmdb_sam_sw_install] table with the software found in your environment.

Before you begin

To use the features of the Software Asset Management application with any third-party discovery
source, you must populate the CMDB application and the related tables that reside on the
ServiceNow instance. The Software Asset Management application uses the IRE API to help
you populate the Software asset management tables. As the IRE API relies on the configuration
item (CI) identifiers, the SAM tables require a relationship to the CI for IRE support. For more
information on the IRE API, see Identification and Reconciliation Engine .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

906


<!-- page 907 -->
Role required: sam_developer

Procedure
1. Navigate to All > Software Asset > Properties.
2. Select the Enable scheduled jobs when using third party Datasource Integration Framework
[com.snc.samp.ire.datasource.integration] property.
3. Run your discovery source to identify software on the CIs.
The CI is used to construct a payload.
4. Send the payload to the ServiceNow instance using the IRE REST API.
For information on a sample payload, see Sample payload for generic software install records.
In the payload, make sure to send the sys_class_name of the CI, so that the CI is not
reclassified when an insert or update operation is performed.
An entry is created in the Software Installation [cmdb_sam_sw_install] table with a display
name, publisher, and version. Reconciliation is run against the content service and a discovery
model is identified for that software. If a discovery model does not exist, a discovery model is
automatically created for the software. You can start using the Software Asset Management
application.

Delete uninstalled software from the Software Installation table
Delete installations from the Software Installation [cmdb_sam_sw_install] table if those software
installations are also uninstalled from a CI.

Before you begin

After the discovery process runs and you identify software installations that are uninstalled from
a CI, delete those installations from the Software Installation [cmdb_sam_sw_install] table in the
CMDB application.
Create a script to delete multiple software installation records from the Software Installation
[cmdb_sam_sw_install] table. You can use the Table API to query the Software Installation table
to get the installation list for the CI.
Role required: sam_developer

About this task

You can also delete software installation records for specific publishers like Oracle, VMware, and
Citrix.

Procedure
1. Use the REST Table API api/now/table/cmdb_sam_sw_install?

sysparm_query=installed_on%3D28c9c3b8c0a8000b009b2d941d7e3ee9 to
query and identify the list of software installs on a specific CI.
For more information on the REST endpoint API, see Table API-GET

.

a. Specify the table name, Software Installation [cmdb_sam_sw_install] table, and query
parameters.
For the query parameters, specify either the sys_id of the CI or a list of fields that are
separated by commas such as publisher, version, and product on which you want to perform
the delete operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

907


<!-- page 908 -->
b. After entering the query parameters, send the request.
You get a response in a JSON format listing of all the software installations for that specific
CI. You can view the sys_id for all the software installations in the response.
2. Based on the response, identify the sys_ids of the software installations that are deleted on a
CI.
Only the sys_ids of those software installations must be passed through the Delete API.
3. Use the Delete API request.setEndpoint('http://xyz/api/now/table/

cmdb_sam_sw_install/728e87dafd841010fa9bea491bfdc1ff');
request.setHttpMethod('DELETE'); to delete the software installs from the
Software Installation [cmdb_sam_sw_install] table.
xyz in the URL refers to your ServiceNow instance.

a. Specify the table name, Software Installation [cmdb_sam_sw_install] table, and the sys_ids
of the software installations that are deleted on the CIs.
b. Send the request.
The software installations are deleted from the Software Installation [cmdb_sam_sw_install]
table.

Create a reclamation rule to import Microsoft SCCM usage data
To import your Microsoft SCCM data, create a reclamation rule for the product that you want the
usage information for.

Before you begin

Role required: sam_admin

About this task

A software product must have a product process, which consists of a filename, that is required
for SCCM Usage to pull data. When adding a software product to a reclamation rule, any product
processes associated with the software product are shown in the Product Process related list.
Product processes are stored in the Software Product Process [samp_sw_product_process]
table.
If a product process doesn’t exist for a software product, you can create a custom
one on the form. Product processes are stored in the Custom Product Process
[samp_custom_product_process] table.
Some software products may not include a product process, but new product processes are
added twice every week through the content library updates.

Procedure
1. Navigate to All > Software Asset > Administration > Reclamation Rules and select New.
2. On the Reclamation Rule form, create a new record (see table for field descriptions).
Reclamation Rule form
Field

Description

Name

Name of the product for which you’re creating the reclamation rule.

Applies to

Type of software to which the reclamation rule applies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

908


<!-- page 909 -->
Field

Description

◦ Installed Software
◦ Engineering App License
Reclamation Type of data pulled from SCCM.
type
◦ Total Usage Time
◦ Last Used Date
Notify user

Check box for notifying the user assigned to the software requesting
permission via email to remove the software.

3. If you selected Total Usage Time in the Reclamation type field, complete the fields in the
Usage Metering Data section.

Field

Description

Aggregate usage by

Time period over which to aggregate usage information.
◦ Last Month
◦ Last Two Months
◦ Last Three Months
◦ Last Six Months

Total hours used

Amount of time the software must be used to avoid being reclaimed.

4. If you selected Last Used Date in the Reclamation type field, complete the fields in the Last
Used Data section.

Field

Description

Last used before

Amount of time a user can keep unused software before it’s reclaimed.

5. Select Save.
6. On the Software Product related list, complete the following steps if a product doesn't exist for
your reclamation rule.
a. Select New.
b. On the Custom Software Product form, fill in the details to add the product information.
c. Select Submit.
d. On the Reclamation Rule form, select Edit in the Software Product related list.
7. On the Software Product related list, select Edit.
8. Select the product that you created with on the Custom Software Product form.
9. Select Save.
10. Complete the following steps if the software product that you selected doesn't have a product
process associated with it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

909


<!-- page 910 -->
a. Select the link in the banner that displays on the Reclamation Rule form after you have
applied the software product.
b. On the Custom Product Process form, fill in the details to add a process to the product.
Custom Product Process form
Field

Description

Product

Name of the product.

File name

Name of the file associated with the product.

Platform

Platform of the product.

c. Select Submit

Example: Create a reclamation rule to import Microsoft SCCM usage data
Create a reclamation rule to pull in the total usage data for Microsoft Excel from Microsoft SCCM.
To begin creating a reclamation rule, add the following information to the Reclamation Rule form.

Field

Description

Name

Microsoft Excel

Applies to

Installed Software

Reclamation type

Total Usage Time

Usage Metering Data
Aggregate usage by

Last Month

Total hours used

20

Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

910


<!-- page 911 -->
A software product exists for Microsoft Excel, so you must associate the product with the
reclamation rule.
On the Software Product related list, select Edit.
On the Edit Members form, navigate to Excel in the Collection column and select Excel. Add it to
the Software Product List column.

Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

911


<!-- page 912 -->
Two product processes are associated with Excel. Select the Product Process related list to view
the product processes.

On the Reclamation Rule form, select Save.

What to do next

The reclamation rule is added to the Reclamation Rules list and the data of the product gets
imported from SCCM during the next monthly scheduled import.

Add a custom part number
You can add a custom part number to resolve an entitlement import error that occurs when a part
number does not exist in the Software Library.

Before you begin

Role required: sam_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

912


<!-- page 913 -->
Procedure
Navigate to All > Software Asset > Administration > Custom Part Numbers and create a new
record (see table for field descriptions).
Custom Part Number form
Field

Description

Publisher part number

Manufacturer product code.

Entitlement definition

Discovery map associated with the part
number.
• Publisher
• Product
• Version
• Edition
• Language
• Platform

License type

Specifies whether the rights grant full access
to the software or if they are being upgraded
from a previous version of the software.
• Full
• Upgrade

License metric

The license metric that will be used during
reconciliation to determine how software
rights are consumed.

Exclude from content service

Option that excludes the custom product
details from being shared with Software Asset
Management Content Service if opted in.

Add a custom license metric
You can add a custom license metric to modify the default reconciliation process.

Before you begin
Role required:

• to create or modify a custom metric script: sam_developer
• to read custom metric script: sam_admin
Role required to create or modify a custom metric script: sam_developer

About this task

Custom license metrics can be created to define specific software calculations not included
in the predefined license metrics list. Custom license metrics are useful so reconciliation can
calculate rights per user or device for certain software products and bundles of lesser-known
software publishers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

913


<!-- page 914 -->
For example, you can create a custom metric to avoid over counting installs for products that are
part of an unrecognized bundle.
You can use the Resource Value [samp_sw_resource_value] table to enhance the custom license
metric capability by doing a 1:1 calculation between the Units consumed column in the Resource
Value [samp_sw_resource_value] table and the Licenses required column in the License Metric
Results [samp_license_metric_result] table. You can create your own calculations in your custom
license metric scripts and write your own logic to further customize your custom license metric.
For information on adding resource values to the Resource Value [samp_sw_resource_value]
table, see Specify resource values for your custom license metrics.
Custom metrics can be disabled using the custom license metric property. This feature is
enabled by default.

Procedure
1. Navigate to All > Software Asset > Administration > Custom License Metrics and create a
new record (see table for field descriptions).
Custom License Metric form
Field

Description

License metric

Name of the custom license metric. This
name is shown in the License Metric field
of software entitlements, and in the license
metric results for the software model.

Table Source

Specify if this custom license metric
belongs to the Software Installations
[cmdb_sam_sw_install] table or the Resource
Value [samp_sw_resource_value] table.

Note: If the table specified is the
Resource Value table, the following
fields: Reconciliation order – allocated,
Reconciliation order – unallocated,
and Allocation type are not displayed.
Additionally, the Calculation Script
shows a sample script related to
resource value.
Metric group

Custom license metric.

Allocation type

Allocation type of the metric license, per
device or per user.
◦ Device
◦ User

Description

Description of the custom license metric.

Reconciliation order — allocated

Reconciliation metric rank priority for
allocated licenses. Lower rank value takes
precedence.

Reconciliation order — unallocated

Reconciliation metric rank priority for
unallocated licenses. Lower rank value takes
precedence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

914


<!-- page 915 -->
Field

Description

Calculation
Calculation Script

The calculation method for the license metric
is script. Specify the reconciliation script.

2. Select Submit.
Custom license metric example script
The following is an example of a custom license metric script.

Note: This example is for demo purposes only and is not meant to be used for actual
compliance scenarios.
<script><![CDATA[getRightsForDevice();
function getRightsForDevice(){
var rightsForDevice = -1;
var deviceRecord = new GlideRecord('cmdb_ci_computer');
if(deviceRecord.get(entity)){
rightsForDevice = deviceRecord.getValue('disk_space');
}
return rightsForDevice;
}]]></script>
Specify resource values for your custom license metrics
If you create a custom license metric based on resource values, specify the resource value for
each software product that you want to calculate licensing requirements for.

Before you begin

Role required: sam_user

Procedure
1. Open the Resource Value [samp_sw_resource_value] table.
◦ If you're using the Software Asset Workspace, open the License operations view. From the
License operations view, navigate to Resource value > Resource value.
◦ If you're using the Software Asset Management classic application, navigate to All >
Software Asset > Administration > Resource Value.
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

Company of the associated software product.

Location

Physical location of the associated software product.

Units
consumed

Total number of resource value units that you are currently consuming of the
associated software product. For example, if you are protecting 50 terabytes of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

915


<!-- page 916 -->
Field

Description

data using a data protection software product, set the Units consumed field to
50.
Department Department that the associated software product is assigned to.
Cost
Center

Cost center that is financially responsible for the associated software product.

4. Save the resource value.
◦ If you're using the Software Asset Workspace, select Save.
◦ If you're using the Software Asset Management classic application, select Submit.

Result

When subsequent reconciliations run, the Software Asset Management application determines
the license compliance position of the associated software product by comparing the value of
the Units consumed field against the value of the corresponding Licenses required field in the
License Metric Results [samp_license_metric_result] table.

Refresh processor definitions
After activating Software Asset Management, refresh processor definitions to normalize
processors on servers in the CMDB.

Before you begin

Role required: sam_admin

About this task

Refresh processor definitions after activating Software Asset Management and before running
reconciliation. Refreshing processor definitions enables CPU types (name of the processor
discovered) to be mapped to the correct processor definition.
Refreshing processor definitions can be time consuming when running for the first time. Allocate
enough time to complete this task before proceeding.

Procedure
Navigate to All > Software Asset > Administration > Refresh Processor Definitions and select
Proceed.
The Processor definitions list is shown.

Migrate software installations
If you are using Discovery, run this script after installing the Software Asset Management
application to copy previously discovered software installation records from the
[cmdb_software_instance] table to the [cmdb_sam_sw_install] table, which is used by the
Software Asset Management application to store software installation records.

Before you begin

Role required: sam_admin

About this task

If you are running Discovery and have used a version of Software Asset Management previously,
there is no need to run this script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

916


<!-- page 917 -->
When running the Migrate Software Installs script, allow enough time for the process to
complete.

Procedure
Navigate to All > Software Asset > Administration > Migrate Software Installs and select
Proceed.
The Software Installations list is shown. If the data has already been migrated, a message is
shown.

Revert Software Asset Management customizations
After installing the Software Asset Management application for the first time, or upgrading
from the Software Asset Management Foundation plugin, you need to revert customizations
for all features work. The Revert Customizations module in the Software Asset Management
application can revert customized files related to Software Asset Management back to the base
configurations that were skipped during the installation or upgrade process.

Before you begin

Role required: sam_admin

About this task

The Revert Customizations module shows the Software Asset Skipped Files list. All
customizations and configurations related to Software Asset Management can be reverted to the
base application version.
To ensure feature functionality, you must revert customizations after:
• A new installation of the Software Asset Management Professional (com.snc.samp) plugin
• Upgrading from the Software Asset Management Foundation (com.snc.sams) plugin
You can also revert customizations using the System Diagnostics > Upgrade History navigation.

Procedure
1. Navigate to Software Asset > Administration > Revert Customizations to view the Software
Asset Skipped Files list.
2. Select Revert to revert all files with a disposition of Skipped to the base application version.
3. Verify that the disposition of all skipped files is Reverted in the customization summary.
You can also verify the disposition of all skipped files in the Upgrade Details
[sys_upgrade_history_log] table and the current OOB version in the Update Versions
[sys_update_version] table.

Manage Software Library
Use the Manage Software Library module to manually upload software library data to on-premise
instances (instances not in the cloud to receive automatic Software Library updates). You
can also choose to export your normalization content for participation in the Software Asset
Management content service.

Before you begin

Role required: admin (to enable module), sam_admin (to manage software library)
Activate the Manage Software Library module to manage Software Library content imports or
exports by navigating to System Definition > Modules. Ensure that the Active column in the
Manage Software Library module is set to true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

917


