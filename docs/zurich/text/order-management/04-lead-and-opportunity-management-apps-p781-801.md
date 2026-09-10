# Zurich Sales and Order Management — Lead and opportunity management apps

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 781–801 of 1408

Sections: Lead and opportunity management apps (p781)

---

<!-- page 781 -->
});
/**
* Event fired when the BOM changes during configuration
* @event logik-ui:bom
* @type {CustomEvent}
* @property {Object} detail - The event details
* @property {LogikConfigurationData} detail.data - The
configuration data with BOM information
*/
window.addEventListener('logik-ui:bom', function (event) {
console.log('BOM event received', event);
});
</script>
</body>
</html>

Configuring the lead and opportunity management applications
Learn how to install and configure the lead and opportunity management applications to support
pre-sales workflows.
Installing and configuring the following applications involve installing the application from the
ServiceNow Store store, assigning appropriate roles to users and groups, and then configuring
app-specific features such as lead assignment rules, opportunity stages, forecasting settings,
and so on.
1. Install and configure Lead Management
Install the Lead Management application, which enables sales agents and sales development
representatives to create leads and provide pre-sales product recommendations based on
customer needs. You then assign the user roles and configure related features, such as needs
analysis and kanban view used in Lead Management.
2. Configuring Customer Engagement Sequences
Install and configure Customer Engagement Sequences so that the sales representatives can
receive predefined sequence steps for interacting with prospects and customers.
3. Install and configure Opportunity Management
Install the Opportunity Management application to enable your sales agents and account
executives to create and manage opportunities that identify and track potential sales based on
identified customer needs.
4. Configure Sales Forecasting
Activate and configure the Sales Forecasting plugin help your sales teams project future sales
volumes and revenue based data from opportunities and pipeline analysis.
5. Configuring Sales Territory Management​
Install the Sales Territory Management​ application from the ServiceNow Store store.
Configure the features and components that help distribute accounts, consumers, leads, and
opportunities to manage sales territories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
Install and configure Lead Management
Install the Lead Management application, which enables sales agents and sales development
representatives to create leads and provide pre-sales product recommendations based on
customer needs. You then assign the user roles and configure related features, such as needs
analysis and kanban view used in Lead Management.
Admins and users with various roles, such as application admins and sales operation specialists,
complete the following configuration tasks to set up Lead Management.
Configuration tasks for Lead Management
Task

Description

Role

Install Lead Management

Install Lead Management from Admin
®
the ServiceNow Store Store.

Assign user roles in Sales
and Order Management
applications

Assign the user roles for Lead Admin
Management, Product Catalog
Management, and Pricing
Management.

Configuring product offerings
and catalogs

Create the product offerings
and catalogs, unless they've
been previously defined.

Product catalog admin

Configuring needs analysis

Create the needs templates
for questionnaires that sales
agents complete to get
product recommendations for
leads.

Product catalog admin

Install Lead Management
If you have the admin role, you can install the Lead Management application. The application
®
includes the demo data and installations that are related to ServiceNow Store applications and
plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you may have to install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The following items are installed with Lead Management:
• Plugins
• Store applications
• Roles
• Tables
For more information on viewing components that are installed with an application, see Find
components installed with an application .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Lead Management application (sn_quote_mgmt) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you can't find the application, request it
from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install Lead Management.
4. If you want to install demo data, do one of the following depending on your entitlements.
Demo data install task

Description

a. Select the Load Demo Data option.
If demo data is available and you want to in­
stall it

b. Select Install.

Important: If you don't load the demo
data during installation, it's unavailable
to load later.
Load the demo data after installing Opportuni­
ty Management.
a. Install Lead Management.
b. Navigate to the All and in the Filter, type v_­
plugin.list.

If the Load Demo Data option isn’t available
c. In the System Plugin list, search for Lead
but you want demo data
Management data model (sn_l2c_lead_­
mgmt_data_model) plugin.

d. In the System Plugin Lead Management da­
ta model window, under Related Links, se­
lect Install Demo Data Only.

Configuring Customer Engagement Sequences
Plan and configure your implementation of Customer Engagement Sequences.

Configuration overview
Create multi-trigger, multi-step sequences using the Customer Engagement Sequences
application so that sales representatives can engage with prospective leads or customers on
outreach-related activities in an organized format. Build telesales workflows using schedule
call activity and decision nodes. Integrate with platforms such as Amazon Connect to enable
outbound calling from the sequence task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
1. Install Customer Engagement Sequences
You can install the Customer Engagement Sequences application (com.sn_crm_sequence) if
®
you have the admin role. The application installs related ServiceNow Store applications and
plugins if they are not already installed.
2. Grant delegated developer permissions for managing sequences
Assign delegated developer roles to designated Customer Engagement Sequences users so
they can create and manage sequences without needing a system admin role.
3. View feature availability and compatibility information
Which features are supported in Customer Engagement Sequences is determined by
combinations of the ServiceNow AI Platform, Playbooks in Workflow Studio, and the Customer
Engagement Sequences app version. Review the feature availability and compatibility
information to make informed decisions during upgrades or deployments and take advantage
of optimal functionality.

What to do next
Create a customer engagement sequence
Drive personalized outreach by creating customer engagement sequences that automate
timely, relevant interactions, ideal for nurturing leads, onboarding clients, or reengaging inactive
customers.
Related topics
Using Customer Engagement Sequences
Components installed with Customer Engagement Sequences
Install Customer Engagement Sequences
You can install the Customer Engagement Sequences application (com.sn_crm_sequence) if you
®
have the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Customer Engagement Sequences
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Customer Engagement Sequences:
• Roles
• Tables
For more information, see Components installed with Customer Engagement Sequences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Customer Engagement Sequences application (com.sn_crm_sequence) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Grant delegated developer permissions for managing sequences
Assign delegated developer roles to designated Customer Engagement Sequences users so
they can create and manage sequences without needing a system admin role.

Before you begin

Role required: admin

Procedure
Assign the Manage Update Set delegate developer permission to the following users:
• sn_crm_sequence.admin
• sn_crm_sequence.writer
• pd_author or playbook.admin (for version 1.0.0.)
For more information, see Exploring Delegated Development

and Developer permissions

.

Compatibility information for Customer Engagement Sequences
The features that are supported in Customer Engagement Sequences are determined by
combinations of ServiceNow AI Platform, Playbooks in Workflow Studio, and the Customer
Engagement Sequences app version.
The following versions of the Customer Engagement Sequences application are compatible with
®
the ServiceNow Xanadu, Yokohama, and Zurich releases:
• Customer Engagement Sequences 1.0.0
• Customer Engagement Sequences 2.0.1
The following table provides a comparison of features available with two Customer Engagement
Sequences version 1.0.0 and 2.0.1.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
Feature

Customer Engagement
Sequences 1.0.0

Customer Engagement Sequences
2.0.1

Roles

• Sequence viewer

• Sequence admin (granular
admin role)

For more information, see
Components installed with
Customer Engagement
Sequences.

• Sequence task read
granular

• Sequence executor (renamed
from Sequence viewer)
• Sequence writer
• Sequence reader
Provides the ability to view
the sequences in Playbooks
starting with the Zurich
release.
• Sequence task read granular

Schedule call activity

Unavailable

Available starting with the
Xanadu release.

Multi-trigger capability

Available starting with
the Zurich release and
Playbooks version 28.1.

Available starting with the Zurich
release and Playbooks version
28.1.

Available starting with
the Zurich release and
Playbooks versions 28.3.

Available starting with the Zurich
release and Playbooks version
28.3.

Available starting with
the Zurich release and
Playbooks version 28.1.

Available starting with the Zurich
release and Playbooks version
28.1.

Decision branches for stages
Demo data
Runtime permissions

Install and configure Opportunity Management
Install the Opportunity Management application, which enables sales agents and account
executives to get pre-sales product recommendations based on customer needs. You
then assign the user roles and configure related features, such as needs analysis, used in
Opportunity Management.
Admins and users with various roles, such as application admins and sales operation specialists,
complete the following configuration tasks to set up Opportunity Management.
Configuration tasks for Opportunity Management
Task

Description

Role

Install Opportunity
Management

Install Opportunity
Management from the
®
ServiceNow Store Store.

Admin

Assign user roles in Sales
and Order Management
applications

Assign the user roles for
Admin
Opportunity Management,
Product Catalog Management,
and Pricing Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
Configuration tasks for Opportunity Management (continued)
Task

Description

Role

Configuring product offerings
and catalogs

Create the product offerings
and catalogs, unless they've
been previously defined.

Product catalog admin

Configuring product pricing

Define the price lists, pricing
strategies, and other pricing
features that you want to
use, unless they've been
previously defined.

Pricing admin

Configure needs analysis

Create the needs templates
for questionnaires that sales
agents complete to get
product recommendations for
sales opportunities.

Product catalog admin

Configure location-based
transactionsConfigure
location-based transactions

Activate the system
property for location-based
transactions and set up
the rule entity and product
eligibility decision rules.

Admin and product catalog
admin

Create opportunity stages

Create sales cycle stages for
an opportunity.

Sales operation specialist

Create a sales cycle for an
opportunity

Create a sales cycle type for
an opportunity.

Sales operation specialist

Associate a sales cycle with
the opportunity stage

Link one or multiple
opportunity stages with a
sales cycle.

Sales operation specialist

Install Opportunity Management
If you have the admin role, you can install the Opportunity Management application. The
®
application includes the demo data and installations that are related ServiceNow Store
applications and plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you may have to install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The following items are installed with Opportunity Management:
• Plugins
• Store applications
• Roles
• Tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Opportunity Management application (sn_opty_mgmt) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you can't find the application, request it
from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install Opportunity Management.
4. If you want to install demo data, do one of the following depending on your entitlements.
Demo data install task

Description

a. Select the Load Demo Data option.
If demo data is available and you want to in­
stall it

b. Select Install.

Important: If you don't load the demo
data during installation, it's unavailable
to load later.
Load the demo data after installing Opportuni­
ty Management.
a. Install Opportunity Management.
b. Navigate to the All and in the Filter, type v_­
plugin.list.

If the Load Demo Data option isn’t available
c. In the System Plugin list, search for Oppor­
but you want demo data
tunity Management data model (sn_l2c_op­
portunity_mgmt_data_model) plugin.
d. In the System Plugin Opportunity Manage­
ment data model window, under Related
Links, select Install Demo Data Only.
Create opportunity stages
Create sales cycle stages for an opportunity.

Before you begin

Role required: sales_ops_specialist

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
Procedure
1. Navigate to All > Opportunity Management > Opportunity Stages.
2. Select New to create an opportunity stage or select an existing opportunity stage to make
changes.
3. Fill in the fields in the Opportunity Stage form.
Opportunity Stage form
Fields

Descriptions

Name

Name of the opportunity stage. For example,
Qualify or Develop or Propose or Negotiate.

Order

Number of orders that is in the opportunity
stage.

Type

Type of the opportunity stages. For example,
Open or Closed.

Active

When the checkbox is selected, the
opportunity stage is active.

4. Select Submit.
The sales cycle stage has now been created for the opportunity.
Create a sales cycle for an opportunity
Create a sales cycle type for an opportunity.

Before you begin

Role required: sales_ops_specialist

Procedure
1. Navigate to All > Opportunity Management > Sales Cycle Types.
2. Select New to start a new sales cycle type or select an existing sales cycle type to make
changes.
3. Fill in the fields in the Sales Cycle Type form.
Sales Cycle Type form
Fields

Descriptions

Code

Type of sales cycle. For example, NEW
RENEW or NEWCUST or UPSELL.

Short Description

More information about the new opportunity
sales cycle.

Active

When the checkbox is selected, the sales
cycle is active.

4. Select Submit.
The sales cycle type has been created for the opportunity.

What to do next

Add sales cycle stages to your opportunity. To learn more, see Create opportunity stages.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
Associate a sales cycle with the opportunity stage
Link one or multiple opportunity stages with a sales cycle.

Before you begin

Role required: sales_ops_specialist

Procedure
1. Navigate to All > Opportunity Management > Sales Cycle Types.
2. Select an existing sales cycle type to make changes.
3. On the Sales Cycle Stages related list, select Edit.
4. Select and move one or multiple opportunity stages from Collection on the left to Sales Cycle
Stages List on the right.
5. Select Save.
The sales cycle and opportunity stages have been associated.
Revise existing opportunities after an upgrade
Run a scheduled job to modify older opportunities so they can support parent-child opportunity
line items.

Before you begin

Role required: admin

About this task

The scheduled job helps update opportunity lines on the opportunities created on or before
the Yokohama Q1 release. From Yokohama Q2 release onward, the opportunity lines follow
a hierarchical parent-child structure. The hierarchy is achieved by adding new fields on an
opportunity line and affects the pricing functionality. For the existing lines to incorporate the
updated pricing functionality, the newly added fields must be populated and the hierarchical
structure must be in place.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. On the scheduled job menu, search for the Revise existing Opportunities on upgrade job.
3. Open the job and select Execute Now.
4. Navigate to All > System Logs > System Log > All.
5. Confirm that the job has been completed by checking for the Opportunity Upgrade
Job completed message.
The log lists the total number of records processed, along with their success and failure count.

Note: If the job is abruptly stopped, the log displays Opportunity Upgrade Job
encountered errors in addition to the error message.

Result

The scheduled job updates the open opportunities (not in any of the closed stages). The job
works differently for opportunities that are synced to Quote than the ones that aren't.

Example:

For open, non-synced opportunities:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
1. The scheduled job updates the newly added Top Opportunity Line Item and Product
Specification fields for all the opportunity lines.
2. If a complex product offering has a child offering, the job creates child opportunity lines under
the parent line. Newly created child lines contain correct values populated for the newly added
fields.
3. A subsequent pricing call is made to populate pricing fields for all the lines in the hierarchy.
For open, synced opportunities:
1. A scheduled job updates the newly added Top Opportunity Line Item field for all the
opportunity lines.
2. The Product Specification field, new hierarchy, and pricing fields for this line are updated only
if any change is done on the corresponding synced quote line.

Note: After upgrading to the Yokohama Q2 release, run the scheduled job before working
with Opportunity. Failure to do so results in inconsistent behavior in Opportunity and the
related tables.

Configure Sales Forecasting
Use the Sales Forecasting application to project your future sales volumes and revenue based
data from opportunities and pipeline analysis.

Activate Sales Forecasting
As an admin, you can activate the following plugins to enable users to access Sales Forecasting.
For more information, see Activate a plugin .
Sales Forecasting plugins
Plugin

Description

com.snc_sales_forecasting

Project your future sales
volumes and revenue based
on data from opportunities
and pipeline analysis.

Dependency

• com.snc_app-l2c-core
• com.snc_app-prd-pm
• com.snc_app_l2c_oppty_mgmt
• com.snc_app-tmt-core

com.sn_sales_quota_applicationAssign the quota targets to the com.snc_app_l2c_oppty_mgmt
sales reps in the sales team
hierarchy.
You need the Sales Quota Application plugin to assign the quota targets to each team and
sales agent. You can view and track the targets achieved for each agent and team on the sales
forecasting dashboard and the gap remaining to achieve the target.
Roles in Sales Forecasting
Role

ID

Functions

Forecast Administrator

sn_sales_forecast.forecast_admin
• Setup group hierarchy
and sales teams with
the managers and sales

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
Roles in Sales Forecasting (continued)
Role

ID

Functions

agents’ information for the
organization.
• Set up Sales forecasting
settings and be able to
initiate calculate forecasts.
• Create/edit/view forecast
category choices and
forecast model details.
Forecast Analyst

sn_sales_forecast.forecast_analyst
View all forecasts item entries,
forecast category, forecast
model, and associated
opportunities.

Sales Quota Admin

sn_quota_core.quota_admin

Sales Quota Manager

sn_quota_core.quota_manager Edit the sales quota for the
groups.

Sales Quota Owner

sn_quota_core.quota_owner

Adjustment Viewer

sn_sales_forecast.adjustment_viewer
View forecast-adjusted
records assigned to them and
the people below them in the
hierarchy.

Adjustment Writer

sn_sales_forecast.adjustment_writer
Edit the forecast-adjusted
records that they own.

Forecast Viewer

sn_sales_forecast.forecast_viewer
View all the forecast data
that they own and the data
of people below them in the
hierarchy.

Submission Viewer

sn_sales_forecast.submission_viewer
View forecast-submitted
records that they own and
the records owned by people
below them in the hierarchy.

Submission Writer

sn_sales_forecast.submission_writer
Edit the forecast-submitted
records that they own.

Create/import/edit/delete
quota for different sales teams
and individuals.

View the Sales quota
assigned to the owner.

Set up a sales team for forecast hierarchy
The system administrator can create groups, sales teams, associating them with specific
managers. The sales hierarchy determines how the forecast rolls up in your company and how it
can be viewed.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
About this task

Once the users, teams, and opportunity data are added, along with selection of category, you
can view the sales forecast for any group or specific sales team on the Sales Forecast dashboard
on the CSM workspace.

Procedure
1. Navigate to All > System Security > Groups.
2. Select New.

3. On the form, fill in the fields.

Field

Description

Name

Name of the team that will be visible on the
Sales Forecast dashboard.

Group email

Email ID of the team.

Manager

Name of the manager of the group.

Parent

Parent group of the team for which you want
to forecast.

Description

Short description about the team and its
sales activities.

Type

Select Sales Team only.

4. Select Submit.
The new team is created and added on the Groups page.
Configure Forecast Categories
Configure the forecast categories in CSM configurable workspace.

Before you begin

For current opportunities in the system, the default value of the field Forecast Category is
Pipeline. Every sales agent working on that opportunity, updates this field once the sales process
starts. When the agents update the category, the dashboard reflects more accurate analysis
and sales forecast prediction. These categories classify the sales based on the level of certainty
regarding their closure. By default, six forecast categories are available. For more info, refer
Forecast terminologies topic.
Role required: admin

Procedure
1. Navigate to All > Sales Forecast > Forecast Categories.
2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
3. On the form, fill in the fields:

Fields

Description

Name

Name of the forecast category that you want
to create.

Description

Short description of the category.

Active

Select the Active check box to activate the
forecast category.

Order

Select the order number in the current
category cycle.

Type

From the list, select the type of category this
new forecast category belongs to.

4. Select Submit.
The new category is created.

Result

If required, users can either delete or make a forecast category inactive. When a category
becomes inactive, the forecast items in that category will be deleted automatically.
Set up forecast schedule
Forecast schedule automatically fetches all the opportunities in the system and generates
forecast data.

Before you begin

Create a scheduled job to update or create the forecast data at a specific time or recurring
schedule. A default sales forecast scheduler is available with the Sales Forecasting application.
You can edit that scheduler according to your requirements.
Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Job.
2. Enter Sales forecast schedule in the Search field.
3. Select Sales forecast schedule from the schedule list.
4. From the Run list, select the option to customize the timing of the scheduler according to your
requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
5. Select Update to save the settings of your scheduler.
6. Select Execute Now to run the scheduler.

Note:
You can copy the script provided in the Run this script field to create your own scheduler.
Set up sales quota
Assign quota targets to sales representatives and managers based on their hierarchy, role, and
forecast period.

Before you begin

Sales agents and managers can set the quotas/targets for a specific period and distribute. The
quota can be assigned to a sales group as well. Quotas can be imported from external sources or
entered manually in the system. Bulk import can be done by system administrator only.
Role required: sn_quota_core.quota_admin

Procedure
1. Navigate to All > Sales Quota Management > Sales Quota.
2. Select New.
3. On the form, fill in the fields.

Fields

Description

Owner

Name of the owner of the team the quota has
been assigned to.

External ID

ID of the owner of external source from which
the quota is imported from.​

Sales team

Reference field to User Group in which the
quota is assigned for.

Territory

Reference field to the Territory in which the
quota is assigned for.

External Source

Name of the external source in which the
quota is imported from.​

Period

Select a specific time period to assign this
quota.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
Fields

Description

Amount

Select the currency and the amount of money
to assign as quota to a team or an individual.

Type

Indicates if the quota is owned by an
individual or at the roll up level.​

Forecast Model

Select the forecast model.

Note: By default, Opportunity Amount
Forecast is available to the users.
Select the Active check box to activate this
quota.

Active

4. Select Submit.
The sales quota has been assigned to sales team.

Configuring Sales Territory Management​
Learn how to configure the features and components that help distribute accounts, consumers,
leads, and opportunities to manage sales territories.

Activate Sales Territory Management​
As an admin, activate the plugin (com.sn_sales_territory) to enable users to access Sales
Territory Management​. For more information, see Activate a plugin .
Sales Territory Management​ plugin
Plugin

com.sn_sales_territory

Description

Dependency

• Provides the core territory
tables and APIs that extend
base Territory Planning.

• CRM Territory Extensions com.sn_tp_crm_extn

• Provides the roles for
granting access to CRM
entities via Responsibility
Framework.

• Sales Common com.sn_l2c_sales_common
• Lead to Cash Core com.snc.l2c_core

• Provides SOM Tracker to
help to run assignment rules
algorithm asynchronously.

Related topics
Using Sales Territory Management​
Components installed with Sales Territory Management​
Configuring Territory Level
Create territory levels to categorize territories such as regional, district, area, and global for better
organization of territories.​

Before you begin

Role required: sales territory admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


<!-- page 797 -->
Procedure
1. Navigate to All > Sales Territory Management > Territory Level.
2. Select New.
3. On the form, fill in the fields:
Territory Level form
Fields

Description

Name

Name of the territory level that you want to
create, for example: Global, Industry, Area,
Region, District, and Territory.

Description

Short description of the level.

Order

Integer to define order of records for sorting
purpose.

4. Select Submit.
The new territory level is created.
Configuring the Territory Model
Territory model contains the territory hierarchies mapped to it and maintains the organizational
structure for a territory hierarchy. Create a Territory Model to add territories that can be assigned
to accounts, consumers, leads, and opportunities.

Before you begin

Role required: admin
Set the Application scope to Sales Territory Management.

Note:
The Sales Territory Model is shipped by default with the necessary configurations that can
be used.

Procedure
1. Navigate to All > Sales Territory Management > Territory Model.
2. Select New.
3. On the form, fill in the fields:
Territory Model form
Fields

Description

Name

Name of the territory model that you want to
create.

Description

Short description of the model.

Territory Role

Roles that can access the sales territory
model and its related territories must include
Sales Territory Basic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
Fields

Description

Application

Read-only field, the set value is Sales
Territory Management

Active

Select the Active check box to use the
territory model.

4. Select Submit.
The new territory model is created. You can update the new territory model with the associated
Territory Model Sources and Territory Model Level Mappings.
Configuring the Territory
Create territories to optimize the assignment of a territory to CRM data. Map these territories
to the territory model and levels to maintain the hierarchy. Provide conditions for automated
assignments, and onboard members with role-based access in a territory for restricted
permissions.

Before you begin

Role required: sales territory admin, sales territory manager

Procedure
1. Navigate to All > Sales Territory Management > Territory.
2. Select New.
3. On the form, fill in the fields:
Territory form
Fields

Description

Name

Name of the territory.

Description

Short description of the territory.

Model

Name of the territory model to which to map
this territory.

Level

The associated Territory Level.

Parent

Name of the parent territory to create the
territory hierarchy.
If no parent territory is specified, this territory
will serve as the highest-level (parent)
territory.

Rank

Rank of the territories. Helps in the
automated assignment algorithm where the
territory with the lowest rank becomes the
primary territory.

Territory Code

A unique identifier assigned to each territory.

Active

Select the Active check box to indicate the
territory is available for assignments.

Cascade condition

Used during assignment rules, this flag
indicates whether the parent territory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
Fields

Description

conditions must be evaluated for all the child
territories (under its hierarchy).
4. Select Submit.
The new territory is created.
Configuring resources for territories
Territory managers and members to the territory are added with their appropriate responsibility.
Managers of the territory get access to manage the members in their hierarchy. Members get
access via the roles and the linked responsibility to the CRM entities that belong to the hierarchy.
Add managers to a territory
Managers get access to a territory to manage members of the assigned territory and its child
territories.

Before you begin

Role required: sales territory admin

Procedure
1. Navigate to All > Sales Territory Management > Territory.
2. From the territories list, open the territory where you want to add managers.
3. In the related list for the Territory Managers, select New.
4. On the form, fill in the fields.
Territory Manager form
Fields

Description

Territory

Name of the territory.

Manager

Name of the manager.

Note: The added user must have
Sales Territory Manager role to access
the territory hierarchy.
From

Manage territory from the selected date.

Manager Type

Select the type either Territory manager or
Resource manager.

Primary

Option to indicate whether the manager is
primarily dedicated for all activities in the
territory.

To

Manage territory until the selected date.

5. Select Submit.
The territory manager is added to the territory and can manage the territory members of the
territory and child territories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
Result

The manager appears in the Territory Managers related list when you open the territory.
Add members to a territory
Add territory members with their appropriate responsibility to get access to the CRM entities
belonging to the territory.

Before you begin

Role required: sales territory admin, sales territory manager

About this task
• A territory comprises a team, where different members play different roles.​
• A member can belong to one or more territories, where they can play different/same roles.​
• A member can have different roles in the same territory. Their membership and role grant
them access and permission to the CRM entities. The access is driven by the responsibility
framework, for additional information see Create a responsibility definition .
• Only active members during their membership period get access to the CRM entities.

Procedure
1. Navigate to All > Sales Territory Management > Territory.
2. From the territories list, open the territory where you want to add members and member roles.
3. On the Territory Members tab, select New.
4. On the form, fill in the fields.
Territory Membership Override form
Fields

Description

Territory

Name of the territory.
This field is automatically set to the territory
for which the member is added.

User

Name of the member.

From

Date from which the member is available to
work in the territory.

Membership type

Type of membership for the member, either
primary or secondary.

Active

Option to indicate whether the member is
available to work in the territory.

To

Date until which the member is available to
work in the territory.

The member appears in the Territory Members related list.
5. On the Territory Members tab, select
Territory Member Roles.

and Open Record of the territory member to add

6. On Territory Membership Responsibilities, select New.
7. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
Territory Membership Responsibility form
Fields

Description

Territory Membership

Name of the member.

Member Role

Role of the team member. Following member
roles (related party types) and responsibility
are shipped by default:
◦ Account Executive
◦ Solution Sales Executive
◦ Price Band Approver
However, more roles can be configured. For
more information, see Create related party
configurations .

The member with the defined role appears in the Territory Member roles related list.
Configure Properties
To put a sales territory model into use at the CRM entities, enter the sys_id of an active sales
territory model. By default, this model and its territories will be utilized for sales territory
assignments.

Before you begin

Role required: sales territory admin

Procedure
1. Navigate to All > Sales Territory Management > Properties.
2. On the Sales Territory Management Properties form, enter the sys_id of an active sales territory
model.

Note: By default, this model and its territories are used for sales territory assignments.
3. Select Save.
Run Assignments
Run sales territory assignments to assign CRM entities to the most eligible territory. Each territory
is checked against its own or cascaded territory conditions related to the CRM entity.​

Before you begin

Role required: sales territory admin

Procedure
1. Navigate to All > Sales Territory Management > Run Assignments.
2. Select an active sales territory model or territory to run assignment rules:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


