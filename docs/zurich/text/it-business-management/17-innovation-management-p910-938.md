# Zurich Strategic Portfolio Management — Innovation Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 910–938 of 2289

Sections: Innovation Management (p910)

---

<!-- page 910 -->
Activate PPM Standard (Project Portfolio Management)
Activate the PPM Standard plugin (com.snc.financial_planning_pmo) if you have the admin role.
This plugin installs the Project Portfolio Management applications.

Before you begin

Role required: admin

About this task

The PPM Standard is the basic plugin for the PPM (Project Portfolio Management) applications.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .

Result

All PPM applications are installed in your ServiceNow instance, along with their user roles and
tables. For more information, see Components installed with Project Portfolio Management
(PPM) Standard.

Innovation Management
The Innovation Management enables you to gather and evaluate ideas efficiently, and to quickly
identify and process the ideas with the greatest potential for implementation.

Get started

Explore

Configure

Use

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

910


<!-- page 911 -->
Integrate

Reference

The Idea Portal accelerates and organizes idea gathering, evaluation, selection, and execution.
The idea manager or demand manager evaluates submitted ideas and promotes accepted ideas
to demands, epics, features, or stories.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 912 -->
Innovation Management overview
The process of innovation management includes managing an organization's innovation
from the initial ideation phase to the final implementation. It includes the decisions, activities,
and practices involved in devising and implementing an innovation strategy. The Innovation
Management application enables you to submit, track, view, discuss, filter, and vote on ideas.

Innovation Management workflow
The image explains the idea workflow from submitting the idea to completing it.
Idea workflow

Innovation Management benefits
Innovation Management benefits
Benefit

Feature

Users

Collect new ideas for a product,
feature in Idea Portal to vote on.

Submit an idea

Users with access to
the application.

View, filter, and organize ideas to
work upon.

View, filter, and sort ideas

Users with access to
the application.

Collaborate through interactive
comment boards to exchange
information about ideas in a central
location.

Collaborate on ideas

idea_manager

Create a task to plan and develop an Create a task for an idea
accepted idea.

idea_manager or
idea_manager_professional

Create an Idea module to store and
group ideas.

idea_admin

Create an Idea module

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

912


<!-- page 913 -->
Innovation Management benefits (continued)
Benefit

Feature

Users

Create new idea categories to
associate with a submitted idea.

Define new idea categories

idea_admin

Use the Idea Dashboard manager to
analyze and review your ideas.

Analyzing idea metrics using
Idea Manager dashboard

idea_manager or
idea_manager_professional

Create an idea from a universal
request and manage your ideas.

Create an Idea from Universal
Request

idea_admin

Transfer an idea to another
department if the idea is rejected or
can't be implemented.

Transfer an Idea to another
department

Agent to whom the
idea is assigned or is
a part of the assigned
work group.

What to explore next
To learn more about configuring and using Innovation Management, see:
• Configuring Innovation Management
• Managing ideas using Innovation Management
• Managing Idea Portal
• Analyzing idea metrics using Idea Manager dashboard
• Integrating Innovation Management with Universal Request
• Innovation Management reference
Predictive Intelligence for Innovation Management
The Predictive Intelligence for Innovation Management capability uses machine-learning
algorithms to search and display similar ideas while submitting a new idea.
The PPM Predictive Intelligence Workbench includes a prebuilt use case template that
systematically guides you through the process of creating and training new predictive models,
evaluating and testing them, and finally adding them to your business process to add value to
your Idea, Demand, and Project Management.
Once you train your custom use cases, they are usable immediately. No prior knowledge or
experience with artificial intelligence or machine learning is required when you use the PPM
Predictive Intelligence Workbench.
The application includes templates with prebuilt guidance to assist you in creating, training,
evaluating, testing, and producing your unique predictive models.
Predictive Intelligence for Innovation Management has the following benefits:
• Improves the quality of your idea database by avoiding duplicate ideas.
• Suggests related ideas to help you identify similar ideas and merge duplicate ideas.

Activation information
Activate the following plugins before using the Predictive Intelligence Workbench:
• Predictive Intelligence for PPM (com.snc.ppm_ml) plugin
• Predictive Intelligence for Ideation (com.snc.innovation_management_ml) plugin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

913


<!-- page 914 -->
Solution definitions for Predictive Intelligence for Innovation Management
The solution definitions for Predictive Intelligence for Innovation Management capability are
available in the Predictive Intelligence for Ideation plugin (com.snc.innovation_management_ml).
For more information about Predictive Intelligence, see Predictive Intelligence .
Solution Definition for Innovation Management
Solution Definition

Solution Type

Description

Similar Ideas

Similarity

Suggests related ideas based
on the Title and Description
fields. You can see the results
in the following places:

Note: This solution
definition is available as
a template on instances
where the following
plugins are active:
• Predictive Intelligence
• PPM Standard
(com.snc.financial_planning_pmo)
• Predictive Intelligence
for Ideation
(com.snc.innovation_management_ml)

• The Related Ideas section
on the Create an Idea form
when creating an idea in the
Idea Portal.
• The Related Ideas section
on the Ideas page in the
Idea Portal.

Related topics
Predictive Intelligence
Train the similarity solution for Innovation Management to find similar ideas
Submit an idea using the supplier catalog

Configuring Innovation Management
Configure Innovation Management application to analyze, track, and promote ideas to a task,
demand, or project. This application is available with Strategic Portfolio Management.
Install Idea Manager dashboard
You can install the Idea Manager dashboard application from ServiceNow Store if you have the
admin role. This application includes demo data and installs the related plugins if they are not
already installed.

Before you begin

Note: Starting with version 2.0.0, the Idea Manager dashboard is available in the Next
experience UI Framework which can be accessed from Analytics Idea Manager.

• Ensure that the application and all of its associated store applications have valid ServiceNow
entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
• If the application requires plugins or other store applications, install them first if they are not
already installed. For the Idea Manager dashboard application, the following plugins are
required:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

914


<!-- page 915 -->
◦ PPM Standard plugin (com.snc.financial_planning_pmo)
For information on activation steps, see Activate PPM Standard (Project Portfolio
Management).
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the application using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find an application, you may
have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
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

Result

You can access the Idea Manager dashboard by navigating to Ideas > Idea Manager Dashboard.

What to do next

Run the following Performance Analytics data collector jobs before using the Idea Manager
dashboard.
• [PA PPM IMD] Historic Data Collection: Collects historical data related to ideas
and runs on demand to update data for dashboard.
• [PA PPM IMD] Daily Data Collection: Collects data for daily indicators and runs
daily to update data for dashboard.
Related topics
List of plugins (Zurich)
Configure idea categories
Map an idea category table with an Idea module to specify the category options listed on the
Idea Portal and the create an idea form.

Before you begin
• Role required: idea_admin
• Identify the Idea module and idea category table that you want to use.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

915


<!-- page 916 -->
About this task

Configuring idea category with the Idea module is required to fetch the list of categories in the
Idea Portal. If you have created static categories, use the Idea Category [im_category] table to
configure the mapping between the idea module and idea category table.
Use your existing product or department table to define dynamic idea categories. The dynamic
categories are derived from specific columns and fields of the parent table.

Note: You can map only one category table with an Idea module.
Procedure
1. Navigate to All > Ideas > Idea Category Config > New.
2. On the form, fill in the fields.
For more information, see Idea Category Configuration form.
3. Optional: Create filter conditions to determine the idea categories to be listed on the Idea
Portal.
4. Select Submit.
Configure idea categories for transferring a request as an Idea
Configure idea states to use when directly transferring an HR case, incident, or a custom task
from your department as an idea.

Before you begin

Role required: admin

About this task

When an idea is created in the Idea Portal, it must be associated with at least one or multiple
categories. Create mapping between your department-specific primary ticket and idea category
to be used when a service ticket is transferred as an idea to another department.

Procedure
1. Navigate to All > Universal Request > Administration > Direct Transfer Configuration.
2. Follow the steps as described in Direct transfer mapping

.

3. Select Submit.
Migrating from the legacy Ideas application to Idea Portal
If you are upgrading to the Zurich release, complete the migration tasks after the upgrade to start
using the new Idea Portal.
Review the following information and make any necessary changes to your configuration:

Idea States
The new Idea Portal provides new idea states such as Completed, Under Review, and In Backlog,
which are mapped with your existing idea states. The following tables provide a comparison to
the existing idea states and the equivalent new states with their values.
Legacy Ideas application
Idea State

Value

Draft

-5

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

916


<!-- page 917 -->
Legacy Ideas application (continued)
Idea State

Value

Submitted

1

NA

NA

NA

NA

Accepted

2

NA

NA

NA

NA

Closed complete

3

Closed skipped

7

NA

NA

NA

NA

Idea Portal
Idea State

Value

Draft

-5

Submitted

1

Under Review

-1

Need more information

-2

In Backlog

2

Planned

4

In Development

5

Completed

3

Unlikely to Implement

7

Duplicate

8

Already Exists

9

Starting with the Zurich release, idea states are stored in and retrieved from the Idea
[im_idea_core] table. You can continue to use your existing idea states along with the new idea
states. However, if you want to use only these new states for managing your ideas, navigate to
the Choice [sys_choice] table and delete the old idea states.

Idea categories
Organize your ideas using categories, for example, to group ideas that are relevant to a particular
product, department, or business unit. If your existing ideas are not associated with any category,
create new categories or select an existing table to define categories to which you can map
your ideas. The Ideas application also installs a set of default new categories to which you can
associate your existing ideas.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

917


<!-- page 918 -->
If your ideas are already associated with categories and you want to use the new categories, you
can map your existing idea categories to the default new categories. You then write and use a
script to create m2m mapping between existing ideas and categories.

Note: You must map an existing idea with appropriate categories for your ideas to appear
in the Idea Portal.

Converting ideas to demands or project, stories, initiatives, and epics
You can convert an idea into work entities other than demands. The Create Task button enables
you to convert an idea into a project, epic, or story as well as a demand becomes available in the
Idea form.
You must have the required Agile plugins Agile Development 2.0 and Scaled Agile Framework
(SAFe) and Continual Improvement Management installed to view these options.
If you want to allow conversion of ideas only to a demand, disable the Create Task button and
continue using the Accept button or disable the Accept and Defer buttons to use other options.
For more information see, Using the form designer .

Business rules
Review the existing business rules in the idea table. Set the business rules that you don't want to
apply as False.

Navigation for legacy Idea application
To encourage your users to submit ideas through the new Idea Portal, remove navigation for old
Idea application from the application menu and deactivate the Submit an Idea option from the
Service Catalog. For more information see, Enable or disable an application menu or module .

Managing ideas using Innovation Management
Use the features and capabilities of Innovation Management to capture, analyze, and
manage your ideas. As an idea manager, manage submitted ideas by reviewing them, making
modifications, or deleting outdated ones, identifying duplicates, and updating and tracking their
state.
Related topics
Innovation Management reference
Submit an idea
Submit an idea for a product, feature, enhancement, or change in the Idea Portal for others to
vote on. Select categories relevant to the idea and, if useful, attach files to add details.

Before you begin

Role required: None

About this task

The Idea Portal is where you share your product, feature, change, or enhancement ideas.
Submit your ideas, view, and subscribe to the ideas of other users, and track the progress of a
subscribed idea. For more information, see View, filter, and sort ideas and Collaborate on ideas.
New ideas are created in the Submitted state. You can edit your submitted idea in the Idea Portal
after it has been submitted until the state is changed to Completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

918


<!-- page 919 -->
Procedure
1. Navigate to All > Ideas > Idea Portal > Create an Idea.
2. On the form, fill in the fields.
For more information on fields and description, see Create an Idea form.
3. Optional: If you have attachments related to the idea, select Add attachments and attach
them.
4. Select Create.

What to do next
• View, filter, and sort ideas
• Collaborate on ideas
• Manage ideas
• Evaluate an idea
• Create a task for an idea
View, filter, and sort ideas
View ideas submitted by you or all submitted ideas. Filter and sort the ideas based on idea state,
category, or date.

Before you begin

Role required: None

About this task

You can view the following information for an idea:
• Title
• Number of votes
• Name of the submitter
• Age
• Current state
• Category to which the idea belongs.

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Perform the following tasks on My Ideas and All Ideas tab.
My Ideas and All Ideas tab
Task

Steps

View your own submitted ideas.

Navigate to Idea Portal > My Ideas.

View all submitted ideas.

Navigate to Idea Portal > All Ideas.

View details of an idea.

Select the title of the idea.

Filter the ideas based on the idea state.

Select a state from the State list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

919


<!-- page 920 -->
Task

Steps

Filter the ideas based on idea categories.

Select a category from the Category list.

Sort the ideas based on the most recent
ideas, the number of votes, or the date of
creation.

Select an option from the Sort by list.

Collaborate on ideas
Use the comment option to discuss ideas and exchange information about ideas. Up-vote or
down-vote an idea to register your level of interest and support for an idea. Subscribe to an idea
to track its progress.

Before you begin

Role required: None

About this task

You cannot comment and vote for ideas that are in the Completed, Unlikely to implement,
Duplicate, or Already exists state. The Open (
) or Closed (
) icon indicates whether the
idea is open or closed for comments and votes.

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Select the title of an idea to view its details.
3. Review the idea details and then choose which action to perform on the idea.
For more information on actions and steps, see Collaborate on idea.
Manage ideas
As an idea manager, manage submitted ideas by reviewing them, making modifications, or
deleting outdated ones, identifying duplicates, and updating and tracking their state.

Before you begin

Role required: idea_manager

About this task

The idea manager reviews submitted ideas and, if necessary, requests more information, and
then chooses to accept or reject the idea. The number of votes on an idea helps in assessing the
popularity and demand for the idea. Change the state of the idea to reflect its status. Changing
the state helps in notifying the idea submitter and subscribers about the progress of the idea.

Note: The idea submitter and all the subscribers receive a notification email whenever
there is a change in the state of an idea. A notification email is also sent whenever a user
comments on an idea or replies to a comment.

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Select the title of an idea to view its details.
3. Select the more options icon (
idea in the form view.

), and then select the Open in platform option to open the

4. Review the idea details and then choose which action to perform on the idea.
For more information on actions and steps, see Manage ideas.
5. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

920


<!-- page 921 -->
What to do next

Convert selected ideas into tasks such as demand, project, stories, and epics.
Evaluate an idea
Review submitted ideas and then accept or reject them.

Before you begin

Role required: idea_manager

About this task

As an idea manager, evaluate an idea and then decide whether to accept or reject an idea. If an
idea cannot be implemented right away, move the idea to the backlog and pick it up later.
Accept the ideas that are feasible for implementation and create a task such as a demand,
project, or story from it. Plan and work on these tasks to develop an idea into a new feature,
product, or enhancement.

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Select the title of an idea to view its details.
3. Open the idea in form view by selecting the more options (
platform option.

) icon, and selecting the Open in

4. Review the idea details and then choose which action to perform on the idea.
For more information, see Evaluate ideas.
5. Select Update.
Convert the accepted ideas to a demand, epic, story, or feature based on how you would like
to execute your idea. Use relevant options such as Epic, SAFe epic, or Improvement initiative
based on the plugins installed such as PPM Standard, Agile Development 2.0 and Scaled Agile
Framework (SAFe). After creating a demand or a project, change the state of the idea to track
its status during different stages of development.
Create a task for an idea
Create a task for planning and developing an accepted idea.

Before you begin

Role required: idea_manager or idea_manager_professional

About this task

Create a task such as a demand, project, story, SAFe epic, SAFe feature, or SAFe story for an
accepted idea. Plan and work on these tasks to develop an idea into a new feature, product, or
enhancement.

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Select the title of an idea that you want to create a task for.
3. Open the idea in form view by clicking the more options (
platform option.

) icon, and selecting the Open in

4. Select an appropriate state for the idea from the State list based on the priority of the idea.
For more information about different idea states, see Manage ideas.
5. Select Create Task.
6. In the Convert Idea to task dialog box, select a task type from the Select task type list.
The available task types are:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

921


<!-- page 922 -->
◦ Demand
◦ Project
◦ Epic
◦ Story
◦ SAFe epic
◦ SAFe feature
◦ SAFe story
These task options are based on the installed plugins such as PPM Standard, Agile
Development 2.0, and Scaled Agile Framework (SAFe).

Note: You must also have the appropriate role based on the plugins to create these task
types.
Train the similarity solution for Innovation Management to find similar ideas
Train the Similar Ideas solution definition included within the Predictive Intelligence for Ideation
capability to find related ideas when submitting an idea or viewing ideas in the Idea Portal.

Before you begin

Ensure that the Predictive Intelligence plugin (com.glide.platform_ml), PPM Standard
plugin (com.snc.financial_planning_pmo), and Predictive Intelligence for Ideation plugin
(com.snc.innovation_management_ml) are activated. For more information about Predictive
Intelligence, see Predictive Intelligence .
Role required: admin

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solution Definitions.
2. In the Similarity Definitions list, search for and select the Similar Ideas solution definition
(ml_sn_global_similar_ideas).
3. On the Similarity Definition form, verify the default field values for ideas.
For more information about the Similarity Definition form fields, see Create and train a similarity
solution .
4. Click Update & Retrain.
5. Open the Similarity Definition form for the Similar Ideas solution definition
(ml_sn_global_similar_ideas).
6. In the ML Solutions related list, view the training solution progress in the Progress column.

Note: Alternatively, you can click the link for the solution in the Active column. On the
ML Solution form, click the Show training progress related link to check the training
solution progress.

Result

When the solution is complete, the similar ideas appear in the Related Ideas section on the
Create an Idea form and Related Ideas section on the Ideas page in the Idea Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

922


<!-- page 923 -->
What to do next
• Review similarity examples: On the Similarity Definition form, in the ML Solutions related list,
when Progress is 100%, in the Active column, click the link for the solution. On the ML Solution
form, click the Similarity Examples related link to view the Similarity Examples list.
• Update the similarity score threshold: On the ML Solution form, on the Solution Statistics tab,
enter the required value in the Similarity Score Threshold field. Right-click the ML Solution
form and click Save.
• Test the prediction output for the records: On the ML Solution form, on the Test solution tab,
enter your text in the Short description field and the maximum number of expected results in
the Top N field, and then click Run test. The results above the similarity score threshold value
are displayed.
Related topics
Predictive Intelligence
Predictive Intelligence for Innovation Management
Submit an idea

Managing Idea Portal
The Idea Portal is your central location to collect, curate, and promote ideas into demand,
project, epic, or story. It enables integration of key feedback and requests into your product
planning and development process.
The Idea Portal enables you to do the following:
• View, submit, vote, and subscribe to ideas.
• Collaborate using comments to discuss and exchange information on ideas.
• Users who submit, comment, or subscribe to an idea receive a notification for any state
change, comment, or reply to that idea keeping them informed about its status and progress.
• View the details of an idea and ask or answer questions and exchange information about
an idea using comments. Comments maintain a trail of discussion and help to identify key
contributors for an idea or reasons for its success and failure.
Idea and demand managers use the Idea Portal to do the following:
• Manage submitted ideas.
• Review and evaluate the submitted ideas and select the ideas that meet their requirements.
• Assess the popularity and demand of an idea from the number of votes.
The selected ideas are converted into tasks for planning and then developed into a new product,
feature, or enhancement.

Maintain separate data storage and control access
You can use the Idea module to do the following:
• Store ideas and categories belonging to different departments, products, or business units
separately.
• Store and organize ideas, enable voting, and, if your organization is large, you can configure
different portal pages with unique sets of categories, for example, for HR, IT, and Support.
• Control access, allowing only the users of a specific business unit or department to submit and
view ideas belonging to a specific category through the Idea Portal by creating access-control
lists in the table that you want to use for categories. For example, if you do not want users
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

923


<!-- page 924 -->
outside the Payroll department to view the ideas associated with the category Salary, create
ACLs with read access, at least, to the employees of Payroll department in the parent table
that is used to derive the category Salary. The ACLs restrict the employees outside the Payroll
department from viewing the ideas associated with the category Salary. For more information,
see Create an Idea module.

Note: Innovation Management supports basic level of domain separation. For more
information about domain separation, see Application support for domain separation
Domain separation and Project Portfolio Management.

and

Idea Portal administration
Idea Portal enables end users to view, submit, filter, sort, comment, and vote on ideas. Idea
managers use the Idea Portal to review, evaluate, collaborate on, and manage ideas. An idea
admin configures an Idea module, maps idea categories to the Idea module, and adds navigation
for the Idea Portal page.
The Managing Idea Portal retrieves data from the Idea module, therefore, you must configure an
Idea module first. Consider configuring separate Idea modules for your product, department, or
business unit. Review, plan, and identify the following items before configuring an Idea Portal:
• Idea table
• Idea module
• Idea categories
• Navigation to the Idea Portal page
Complete the following tasks to set up and configure an Idea Portal for your product, department,
or business unit:
Idea Portal navigation
Configure the Idea Portal URL to enable access to the Idea Portal from the application navigator.

Before you begin

Role required: idea_admin

About this task

Enable access to the Idea Portal module using the Application Menus module.

Procedure
1. Open the Ideas application menu record and add the Idea Portal to the navigation menu.
For information about how to add Idea Portal to the navigation menu, see Create a module

.

2. In the Module form, set the value of the Link type field as URL (from arguments).
Use the Module Id as a parameter in the URL to specify the Idea module that you want to
associate with the Idea Portal.
For example, if you created an Idea module for your HR department and used hr as
the Module Id, the URL to access the Idea Portal would be as follows: /idea/?
id=ideas_list&sysparm_module_id=hr.
Create an Idea module
An Idea module defines the ideas and categories that are displayed in the Idea Portal. Create an
Idea module to store and group ideas, and define categories based on product, department, or
business unit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

924


<!-- page 925 -->
Before you begin
• Identify an idea table to store your ideas. Use an existing table or create a new table to extend
the Idea [im_idea_core] table.
Use a different idea table for each Idea module. Separate idea tables ensure that ideas for
different modules are stored separately.
• Role required: idea_admin

Procedure
1. Navigate to All > Ideas > Settings > Idea Module > New.
2. On the form, fill in the fields.
For more information on fields and description, see Idea module form.
3. Select Submit.

What to do next

Define new idea categories or use an existing table to derive the categories from specified
columns and map it with your idea module. For more information, see Configure idea categories.
Define new idea categories
Create new idea categories that a user can select to associate with a submitted idea. You can
also add custom idea categories.

Before you begin

Role required: idea_admin

About this task

The default Idea Category [im_category] table stores the user-defined idea categories.
Define new idea categories if you do not want to use an existing table or if you want to use
custom idea categories. Create nested idea categories for defining a hierarchy of the idea
categories.
You can use multiple idea categories with an Idea module, however, you can map only one
category table with an Idea module.

Procedure
1. Navigate to All > Ideas > Idea Category > New.
2. On the form, fill in the fields.
For more information, see Idea category form.
3. Select Submit.
An idea category represents a theme for organizing idea submissions. All ideas submitted
through the Idea Portal must be associated with at least one idea category. You can use values
from an existing table or create new idea categories for organizing your idea. Users select one
or more idea categories, configured by an admin, to associate with their idea when they submit
it. For more information, see Create an Idea module, and Idea category configuration.

What to do next

Map idea categories with your idea module. For more information see, Configure idea categories.
Adding Idea Portal to Employee Center
Improve engagement experience for your employees by enabling navigation to Idea Portal from
Employee Center.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

925


<!-- page 926 -->
On the Employee Center portal, add the following links to Idea Portal so that employees can
easily navigate to it.
Header menu item on the Employee Center portal
Configure a menu item for the Idea Portal page on the Employee Center portal
header. Follow steps 1 through 5 in Create employee forum menu item in the
Employee Center menu .
Quick link on the Employee Center portal
Create a quick link to the Idea Portal page using the quick links module in Employee
Center. Follow the procedure in Create a quick link .
Related topics
Managing ideas using Innovation Management
Managing Idea Portal
Analyzing idea metrics using Idea Manager dashboard
Integrating Innovation Management with Universal Request

Analyzing idea metrics using Idea Manager dashboard
Review, analyze, and manage your ideas effectively by using the Idea Dashboard manager.
The Idea Manager dashboard provides summary of idea metrics and trends such as ideas in
different states, age of ideas, categories, and ideas converted to different work entities.

Note: Starting with version 2.0.0, the Idea Manager dashboard is available in the Next
experience UI Framework which can be accessed from Analytics Idea Manager. The Ideas
pane in Analysis tab is not supported in the Next experience.

Idea Manager dashboard in Next experience UI
The Idea Manager dashboard provides comprehensive reports to the idea manager and users
with read-only roles for ppm (sn_ppm_read). The dashboard uses Performance Analytics to
provide a trend of historical data as well as regular reports. It provides you an overview of ideas,
number of ideas converted into work entities, and trends based on categories, idea submitters,
and votes. It helps you to review and analyze ideas and enables you to take required actions for
managing your ideas effectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

926


<!-- page 927 -->
End user and roles
End user and goal

Required role

Idea Manager - Needs visibility into ideas in
different states, number of ideas created, and
age of ideas.

idea_manager

Read only roles for PPM - Needs visibility
into ideas in different states, number of ideas
created, and age of ideas.

sn_ppm_read

Use case
The dashboard displays ideas related to Project Portfolio Management.
Only ideas associated with categories are displayed in the dashboard. Ideas marked for deletion
are not displayed. By default, the dashboard displays one-year data. Use the interactive date
filter to view monthly, quarterly, or yearly data.
You can drill down within an idea indicator data for further analysis by navigating to Idea Portal
from the dashboard. For example, to view individual records of Open ideas in the Idea Portal,
click the Open ideas indicator value to open the Analytics Hub. In the Analytics Hub, click Show
Records to view the list of open ideas, open an idea in the form view, and then click the Idea
Portal related link to view the idea record in the Idea Portal.

Indicators
The Summary and Analysis tabs in the dashboard contain the following indicators. The data for
ideas is collected from the [idea] table.
Open Ideas
Count of the ideas that are in Submitted, Need more information, or Under Review
state for the current month.
Average Age of Open Ideas
The average age of ideas that are in Submitted, Need more information, or
Under Review state since their creation, in days, as calculated by the formula
[[PPM:Total Age of Open Ideas]]/[[PPM:Open Ideas]]/24.
Ideas Converted
Count of ideas converted into different work entities such as demand, project, story,
or epic based on other plugins.
% of Ideas Converted
The percentage of ideas converted into different work entities such as demand,
project, story, or epic based on other plugins, as calculated by the formula
[[PPM:Ideas Converted]/[PPM:Active Ideas]] *100.
Ideas
Count of ideas that are in different states. You can view the count of ideas, in
different states, created in week, month, quarter, and year.
Active Ideas
Count of ideas in Submitted, Need more information, Under review, in backlog,
planned and in development state. This indicator is not displayed in dashboard but
is used in formula.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

927


<!-- page 928 -->
Total Age of Open Ideas
Total number of days an idea is in state Submitted, Need more information, and
Under review before conversion to a work entity. This indicator is not displayed in
dashboard but is used in formula.

Breakdowns
• PPM - Idea Category
• PPM - Idea State

Data visualizations
The dashboard includes the following visualizations:

Title

Type

Ideas by state

Description

Breakdown of the number of
ideas in each of the different
states.
Pie chart

Ideas converted

Pie chart

Breakdown of the number
of ideas converted into work
entities such as demand and
project.

Top 10 ideas by votes

Horizontal bar chart

Top 10 ideas based on the
total number of up-votes.

Top 10 idea creators

Horizontal bar chart

Top 10 users based on the
number of ideas submitted.

Ideas trended by categories

Line chart

Trend of the total number
of ideas submitted under
various categories. The trend
is displayed on a monthly
basis.

Top 10 categories by ideas

Horizontal bar chart

Top 10 categories based
on the number of ideas
submitted under each
category.

Integrating Innovation Management with Universal Request
Integration of Innovation Management with Universal Request extends the capabilities of
Universal Request and enables your employees and agents to create an idea from a universal
request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

928


<!-- page 929 -->
Integrate Innovation Management with the Universal Request application to provide a consistent
ticketing experience and facilitate inter-department request transfers.
A Universal Request is created from an Interaction Record or New Call record when an agent
determines that a new task record must be created for any of the following reasons:
• Resolve the Universal Request immediately without assigning it to a specific department.
• Transfer the Universal Request to a different department by assigning it to a Tier 1 assignment
group.
Universal Request serves as a parent record for other records created as child records, such as
INC, HRC, and custom task types. It is also used for all cross-departmental reporting. For more
information about universal request, see Exploring Universal Request .

Features
The integration provides the following functionalities:
• Create an idea from a universal request: When a universal request is created, an agent
analyses the request. If the request can result in a new product, feature, or change, the agent
creates an idea from that universal request.
The idea manager then reviews submitted ideas and, if necessary, requests more information,
and then chooses to accept or reject the idea. Accepted ideas are then converted to a
demand, epic, story, or feature.
The relevant information of the universal request such as details from the Short description
and Description fields are copied to the Title and Idea Description fields of the idea.
Also, the idea created from the universal request becomes the primary ticket for the universal
request and the Primary Ticket field is populated with the idea number.
• Transfer the idea to another department with or without resolution: If the idea is rejected or
cannot be implemented, the routing agent can transfer the idea to another department.
When an idea is transferred to another department, the idea is closed and a new record
is created. For example, a universal request related to HR process improvement can be
converted to an idea and then transferred to the HR department as an HRC when the idea is
deemed not feasible.

Note: When the idea created from a universal request is transferred to another
department, the resulting INC, HRC, or custom task becomes the primary ticket for the
parent universal request.

Plugin requirements
Activate the following plugins if you have the admin role. These plugins are not active by
default, and you must install them to integrate Innovation Management with Universal Request
applications.
• PPM Standard plugin (com.snc.financial_planning_pmo).
• Universal Request plugin (com.snc.universal_request). For activation information, see Activate
Universal Request .
Activate other related plugins such as Human Resources Scoped App: Core (com.sn_hr_core),
and Employee Center (com.snc.employee_center) plugins to facilitate inter-department transfers
of ideas.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

929


<!-- page 930 -->
Create an Idea from Universal Request
Create an idea from a universal request after initial evaluation for a new product, feature,
enhancement, or change.

Before you begin

Role required: sn_uni_req.request_write or ITIL
• Activate the Universal Request (com.snc.universal_request) and PPM Standard
(com.snc.financial_planning_pmo) plugins

About this task

New idea is created in the Submitted state. You can edit your submitted idea in the Idea Portal
after it has been submitted until the state is changed to Completed.

Procedure
1. Navigate to Universal Requests > All.
2. Open the universal request record from which you want to create an idea.
3. Select Create Idea.
4. On the form, fill in the fields.
For more information, see Create an Idea form.
5. Optional: If you have attachments related to the idea, select Add attachments and attach
them.
6. Select Create.
The universal request number from which the idea is created appears in the header of the Idea
form. The idea number appears in the Primary Ticket field on the Universal Request form.

What to do next

Evaluate an idea and create a task from an idea, if selected for execution. If the idea cannot be
implemented, transfer the idea to the relevant department as an INC, HRC, or custom task.
Idea state mapping
Map your idea states to the Universal Request states to provide a better user experience during
the idea state transition and to track the progress of the idea.

Before you begin

Role required: admin

About this task

Mapping the states of the idea to the universal request state ensures that the status of idea is
also reflected on the state of universal request. As the idea moves through different stages of the
life cycle, the state of the universal request also gets updated to reflect the change.
For example, consider a universal request that has an idea attached to it as a primary ticket.
When the state of idea changes from Submitted to Need more information, the state of the
universal ticket state is also updated to Awaiting Response.
The following image is an example of a default state mapping. The
Submitted, Under Review, In Backlog, Planned and In Development

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

930


<!-- page 931 -->
states of an idea are mapped to In Progress state of a Universal

Request.
The following table lists the default mapping of different idea states with the universal request
states.
Default mapping of Idea states with universal request states
Idea state

Universal Request state

Submitted

In Progress

Under Review

In Progress

In Backlog

In Progress

Planned

In Progress

In Development

In Progress

Unlikely to implement

Closed

Duplicate

Closed

Already exists

Closed

Completed

Closed

Need more information

Awaiting Response

Procedure
1. Navigate to All > Universal Request > Administration > State Mapping.
2. Select New.
3. On the form, fill in the fields.
For more information, see State mapping form

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

931


<!-- page 932 -->
Transfer an Idea to another department
Transfer an idea to another department with or without resolution if the idea is rejected or cannot
be implemented.

Before you begin

Ensure that the following requirements are met:
• The idea is created from a universal request.
• The idea is associated with a category.
• Personalize the Create an Idea form to add the Assigned to field.
• The idea is assigned to an agent.
• Additional plugins required for transfer are active. For example, if the idea is being transferred
as an HR case (HRC), activate the Human Resources Scoped App: Core (com.sn_hr_core), and
Employee Center (com.snc.employee_center) plugins.
Role required: Agent to whom the idea is assigned or is a part of the assigned work group.

About this task

If the idea is rejected or cannot be implemented, transfer the idea to another department as an
HRC, incident, or a custom task.
When an idea is transferred to another department, the idea is closed and a new record is
created. For example, a universal request related to HR process improvement can be converted
to an idea and then transferred to the HR department as an HRC when the idea is deemed not
feasible.

Procedure
1. Navigate to All > Ideas > Idea Portal.
2. Select the title of an idea to view its details.
3. Select the more options icon (
in the form view.

), and then click the Open in platform option to open the idea

4. Select Transfer.
5. In the Transfer Ticket dialog box, provide the following details.
◦ Department: Select the department from the list.
◦ Transfer reason: Select the reason from the list.
◦ Transfer notes: A brief description for transferring the idea that you want to pass to the UR
Routing agent.
◦ Copy additional comments and attachments: Clear the check box if you do not want to
transfer the idea with additional comments and attachments.
6. Select Transfer.
The idea is transferred to the selected department and the state of the idea is changed to
Unlikely to implement.
7. Provide information about why the idea was rejected or closed in the Close notes field.
8. Select Update.

Result

The idea is transferred to the selected department. The Primary Ticket field of the parent
universal request is updated with the INC, HRC, or custom task number created as a result of the
transfer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

932


<!-- page 933 -->
Innovation Management reference
Reference information to provide additional details about Innovation Management such as the
fields, user roles, tables, and guidelines.
Form field information for Innovation Management
Field information for forms used in the Innovation Management.
Create an Idea form
Learn about the fields of the Idea form. Use this form to create or edit the details of an idea in
Innovation Management.
Create an Idea form fields
Field

Description

Title

Brief description of the idea. As you start
typing the title for your idea, the Related Ideas
section appears and displays existing ideas
that potentially match your idea.

Category

The category to associate with your idea. You
can select multiple categories for an idea.
Categories are also visible to other users in
the Idea Portal when viewing submitted ideas.

Description

Detailed description of the idea. Consider
including details such as why is it useful, who
would benefit from it, and how it would work.
You can use the formatting toolbar to format
text and add images or web links.

Related topics
Create an Idea module
Submit an idea
View, filter, and sort ideas
Idea Category Configuration form
Learn about the fields of the idea category configuration form. Use this form to create or edit the
details of an idea category configuration in Innovation Management.
Idea Category Configurations form fields
Field

Category table

Description

The parent table to derive idea categories
from.
To use static idea categories, select the
default Idea Category [im_category] table.
To use dynamic idea categories, select an
existing table. For example, to use department
names as idea categories, select the table that
contains details of all the departments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

933


<!-- page 934 -->
Idea Category Configurations form fields (continued)
Field

Description

Category Field

Field from the category table from which to
derive the idea category. The corresponding
value of this field in the category table is listed
in the Category field on the Idea Portal.
For example, to list department names as
category options, set the value of this field to
Name. The system searches for and fetches
the department names from the parent table
and lists all the department names as category
options.

Parent Field

If you are using nested idea categories,
specify the field in the category table to be
used to fetch the parent category.

Note: Leave this field blank if you are
not using nested idea categories.
For example, to list Department 1 and 2 as
subcategories of Department A, set the value
of this field as Parent. The system searches for
and fetches values from the parent table and
lists Department 1 and 2 as subcategories of
Department A.
Module

The Idea module to which this idea category
belongs.

Related topics
Configure idea categories
Idea category form
Learn about the fields of the Idea category form. Use this form to create or edit the details of an
idea category in Innovation Management.
Idea Category form fields
Field

Description

Category name

Name for the idea category. Use a name that
clearly identifies the entity for which you
are creating the category list. For example if
you are creating a category option for your
departments, use the department name such
as HR, Support, and IT.

Active

Option for activating the idea category. If
activated, the idea category appears in the
Create an Idea form and the Category list of
the Idea Portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

934


<!-- page 935 -->
Idea Category form fields (continued)
Field

Description

Default: Selected
Module

The module to which this idea category
belongs.

Parent

The parent idea category for which this
category is a subcategory.
For example, to list Department 1 and
2 as subcategories of Department A,
select Department A in the Parent field for
Department 1 and 2.

Domain

The domain to which the idea category
belongs.

Collaborate on idea
Learn about the actions of the collaborate on an idea form. Review the idea details and then
choose which action to perform on the idea. Collaborate on an idea with other submitters and
stakeholders. Add comments or reply to comments to request more information or answer
questions. Vote for the ideas you would like to see developed.
Collaborate on an idea
Action

Steps

Post a comment
1. Select the comment (
your comment.

) icon and enter

2. Select Comment to post your comment.
Reply to a comment
1. Select the reply (
reply.

) icon and enter your

2. Select Reply to post your reply.
Edit or delete your comment

You can edit or delete your comment until the
idea reaches the Completed state.
1. Navigate to the comment.
2. Select the more options (
select Edit or Delete.

Vote on an idea

) icon, and then

Votes help in assessing the popularity of and
demand for an idea.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

935


<!-- page 936 -->
Collaborate on an idea (continued)
Action

Steps

• Select the up-vote icon (
support for the idea.

) to indicate

• Select the down-vote icon (
indicate dislike of the idea.
Subscribe to an idea

) to

Select Subscribe.

Related topics
Collaborate on ideas
Manage ideas
Learn about the actions of the manage ideas form. Review the idea details and then choose
which action to perform on the idea.
Manage ideas
Action

Change the title

Steps

If you need to change the title of an idea
for more clarity or accuracy, do one of the
following actions:
1. Enter a new title in the Title field.
2. Select the Suggestions (
) icon to select
from the list of predefined titles.

Change the state

Change the state of an idea as it moves
through different stages of the life cycle.
Changing the state of an idea also helps keep
the submitter and subscribers of the idea
informed.
In the State list, select an appropriate state
based on the status and priority of the idea.
The following options are available:
• Submitted: Default state when the idea is
submitted.
• Under Review: Pending review from the
idea or demand manager.
• Need more information: More information
is required before the idea is promoted and
prioritized for development.
• In Backlog: Accepted but put on hold for
possible development in the future.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

936


<!-- page 937 -->
Manage ideas (continued)
Action

Steps

• Planned: Accepted, and a project, demand,
epic, feature, or story is created from the
idea for current implementation.
• In Development: Work has started on the
task created from the idea.
• Unlikely to implement: Does not meet
requirements, is not feasible, or is not
popular. The idea becomes inactive and
closed for comments and votes.
• Duplicate: A similar idea exists in the
database. The duplicate idea becomes
associated with the original idea and is
inactive and closed for comments and
votes.
• Already exists: Already developed at the
time of idea submission or is close to being
developed.
Mark as a duplicate

When you mark an idea as a duplicate, one
idea is marked as the Original idea and the
other as a Duplicate idea. A comment is
logged in both the ideas with this information.
The idea marked as a duplicate becomes
inactive and closed for comments or votes.
1. In the State list, set the status of the idea to
Duplicate.
2. Search for and select the idea that you want
to mark as original in the Duplicate field.
3. Enter a justification in the Close notes field.

Delete an idea

Remove an idea from the database when it is
no longer relevant or becomes old. Deleting an
idea removes all its details such as comments,
attachments, and votes from the database.
To delete an idea and all the details
associated with it:
• Select the idea.
• Select Delete.

Related topics
Manage ideas
Evaluate ideas
Learn about the actions of the evaluate ideas form. Review the submitted ideas and then choose
which action to perform on the idea. You can analyze the submitted ideas and then accept or
reject them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

937


<!-- page 938 -->
Evaluate ideas
Action

Steps

Accept

If the idea seems interesting with the potential
for developing into a new feature, product, or
enhancement, accept the idea. It then moves
to the backlog, from which you can pick it up at
an appropriate time.
To accept an idea, set the status of the idea to
In Backlog from the State list.
If you want to implement the idea relatively
soon, create a task for it. For more information,
see Create a task for an idea.

Request more information

If the information provided with the idea at
the time of submission is insufficient request
more information about the idea by setting the
status Need more information from the State
list.

Reject

If an idea is not feasible or has been already
implemented, reject the idea by setting its
state to Unlikely to implement or Already
exists. The idea becomes inactive and is
closed for comments and votes.

Close an idea when implemented

When an idea is implemented successfully,
mark the idea as completed and close the
idea for further comments and vote.
To mark an idea as completed:
1. Set the status of the idea to Completed from
the State list.
2. Provide information about how the idea was
implemented in the Close notes field.

Related topics
Evaluate an idea
Idea module form
Learn about the fields of the Idea module form. Use this form to create or edit the details of an
idea in Innovation Management.
Idea module form fields
Field

Description

Module name

Name for the module. Use a name that clearly
identifies the entity for which you are creating
the module. For example if you are creating
a module for your departments, use the
department name such as HR, Support, and IT.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

938


