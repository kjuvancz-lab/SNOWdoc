# Zurich IT Service Management — Work scheduler

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2285–2305 of 3857

Sections: Work scheduler (p2285)

---

<!-- page 2285 -->
Name

Description

• Uses forecast properties to set the data collection
frequency or time period to store the data. The
forecast properties will not be used if a published
forecast parameter exists for a data collection
definition.

Work scheduler in Workforce Optimization for ITSM
Manage the work of all your teams from a central location. You can get visibility into your entire
teams’ workload. You can assess the complexity level of your teams' tasks, their capacity to take
on the work, and assign or reassign work—all from a calendar interface.
Here's an overview of Work scheduler. Work scheduler
The image provides a high-level overview of Work

scheduler.
As an admin, you can:
• Create work configurations that managers can view in their work queue. For information on
setting up work configurations, see Set up a work configuration.
• Create work scheduler cards and configure them based on your needs. For more information,
see Create a Work scheduler card using the Next Experience UI Builder.
• Associate the work scheduler cards with work configurations. For more information, see
Associate a work scheduler card to the work configuration.
As a manager, you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2285


<!-- page 2286 -->
• Create custom preset filters to prioritize your work items based on what's important for you.
◦ You can define the filters based on task type. For example, you can set filters for incidents
that are categorized as Priority 1 and Priority 2.
◦ You can also define filters based on use cases. For example, if you want to prioritize catalog
tasks from a VIP business unit over other units, you can define those conditions for the filter.
• Configure your work queue to display the most relevant work items.
• Assign work items based on skill recommendation.
• Assign work items based on your teams' shifts.
For more information, see Assign work based on your teams' skills and capacity.

Getting started with Work scheduler in Workforce Optimization for ITSM
Easily find the tasks that you must complete in the Scheduling module.
Work scheduler
Benefit

Roles

Finding tasks to complete in
Work scheduler

Activate Work scheduler in
Workforce Optimization for
ITSM.

admin

Activate Work scheduler

Refer to the components such Any Work scheduler role
as system properties used in
Work scheduler.

Understand components
used in Work scheduler in
Workforce Optimization for
ITSM

Set up Work scheduler for the
managers so that they can
assign work items based on
their teams' skills, availability,
and capacity.

Work scheduler admin

Set up Work scheduler in
Workforce Optimization for
ITSM

Manage your teams' work
assignments easily by
customizing your work queue
to display the most relevant
work items.

Work scheduler manager

Use Work scheduler in
Workforce Optimization for
ITSM

Setting up Work scheduler in Workforce Optimization for ITSM
Customize an existing work scheduler card based on your need. You can also create a work
configuration and work scheduler card from scratch and associate them so that managers can
view the cards in their work queue.
Customize a Work Scheduler card using the Next Experience UI Builder
Customize the Work Scheduler card components, such as adding an extra field, or changing the
color or order of a field, to display them in the Work scheduler queue.

Before you begin

Role required: workspace_admin, or ui_builder_admin​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2286


<!-- page 2287 -->
About this task

You can duplicate an existing work item variant such as an Incident, Problem, Change Request
and customize it based on your needs.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. In the My experiences list, select Manager Workspace.
3. Select the Pages icon.
4. In the Page menu, select Work scheduler.
5. In the left pane, go to the Content section and navigate to Body (Flex) > Work queue (Flex) >
Sidebar.
6. In the right pane, select the icon ( ) in the Work item cards default sub-page.
7. In the left pane, select Body (Flex) > Viewport1.
8. In the right pane, select the icon ( ) next to a card, for example, Incident default, that you want
to configure.
9. To duplicate the selected variant, in the left pane, in the Variants section, hover over the
variant you want to duplicate, select the ( ) icon and select Duplicate.
10. Hover over the variant you have duplicated, select the ( ) icon and select Edit conditions.
11. In the Order field, set the order to be the lowest value so that this variant will display in
manager workspace.

Tip: You can only display one variant for a work item type.
12. Click Save.
13. Customize the variant you've created using any of the tasks or steps listed in Create a Work
scheduler card using the Next Experience UI Builder.

Example:
If you'd like to configure this in the Work
Scheduler card

Refer to

Add fields

Create page scripts for Work scheduler and refer to
the Create the Transform workItem to cardProps
page script steps.

Add an avatar

Configure an avatar component for Work scheduler

Related topics
Create a page in UI Builder
Set up a work configuration
Create a work configuration for a work item. Add filters that display key information that the
manager wants to analyze. This work configuration will determine how the work items display on
the Work scheduler calendar in manager workspace.

Before you begin

Role required: sn_wfo_work_sched.admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2287


<!-- page 2288 -->
Procedure
1. Navigate to All > Work Scheduler > Work Configurations.
2. Click New.
3. On the form, fill in the fields.

Field

Description

Name

Unique name for the work configuration.

Table

Table for which you want to create the work
configuration.
The following tables are available by default to create
work configurations:
◦ Catalog Task
◦ Change Request
◦ Change Task
◦ Incident
◦ Interaction
◦ Problem
◦ Request
◦ Requested Item

Description field

The field from the selected table that you want to use for
describing the work item.

Assigned to field

The field from the selected table that you want to use for
assigning an agent to the work item.

Assignment group field

The field from the selected table that you want to use for
assigning a group to the work item.

Start date field

The field from the selected table that you want to use to
display the start date for the work item.

End date field

The field from the selected table that you want to use to
display the end date for the work item.

Default color

The preferred color to display the work item card in the
manager workspace.

UX app route

The route where the card layout is defined for this work
item type. The route displays in UI Builder in the list of
experiences. This UX app route determines the layout of
the work item card. By default, it is set to Default card,
which displays the following fields:
◦ Description field
◦ Assigned to field
◦ Assignment group field
◦ Start date field
◦ End date field

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2288


<!-- page 2289 -->
Field

Description

If you need additional fields, you must add them in the
Extra fields field. For information on defining a card
layout, see Create a Work Scheduler card using UI
Builder.
Order
Extra fields

The display order of the work item.

Important: If you need additional fields on the
selected table that you would like to display in the
work item card in the manager workspace, you
must add it in this field.

Matching rule

Select a matching rule for the work configuration.

4. Right-click the form header and click Submit.
5. Create a work configuration filter.
a. In the Work Configuration filters related list, click New.
b. In the Name field, enter a unique name for the filter.
c. Right-click and save the form to add the selected table.
d. Add the desired conditions for the work configuration filter.
For information on adding conditions, see Condition builder

.

e. Select Update.
Create a Work scheduler card using the Next Experience UI Builder
Create a work scheduler card and add the components that you want to display based on your
needs in the Work Scheduler application in manager workspace.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. In the My experiences list, select Manager Workspace.
3. Select the Pages icon.
4. In the Page menu, select Work scheduler.
5. In the left pane, go to the Content section and navigate to Body (Flex) > Work queue (Flex) >
Sidebar.
6. In the right pane, select the icon ( ) in the Work item cards default sub-page.
7. In the left pane, select Body (Flex) > Viewport1.
8. In the right pane, select +Add and enter a name for the card.
The Path field is automatically populated.
9. Select Create.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2289


<!-- page 2290 -->
A new card is created.

Important: After you create the work scheduler card, you must select the name of this

card in the UX app route field in the work configuration you have created. For information
on setting up a work configuration, see Set up a work configuration.
10. Select Done.
Follow the steps listed in each of the topics below in the given sequence to customize Work
scheduler.
Related topics
Create a page in UI Builder
Create a client state parameter for Work scheduler
Add custom client state parameter values to add properties to the card components.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. Select the Client state icon (

).

2. In the Client state parameters section, click +Add.
3. Create the client state parameter.
a. In the Name field, enter cardProps.
b. From the Type menu, select JSON.
c. In the Initial value field, select Edit.
d. In the Initial value pop-up screen, enter the following code:
{
"tagline": {},
"heading": {},
"dropdowns": [],
"content": [],
"assignedTo": null,
"aria": {}
}
e. Select Apply.
Here's a demo on how to create client state parameters. Create client state parameters

What to do next

Create page scripts for Work scheduler
Related topics
Create and bind a client state parameter to a component
Create page scripts for Work scheduler
Add custom page scripts for the Work scheduler so that you can update the client state through
events or update transform workItem object to properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2290


<!-- page 2291 -->
Before you begin

Role required: workspace_admin or ui_builder_admin​

About this task
Add the Handle card clicked and the Handle card action clicked page scripts
to handle events that are generated when the card and its actions are clicked.
Add the Transform workItem to cardProps page script to transform the workItem
object in the Work queue to properties for the card components.

Note: If you have customized a Work scheduler card, you can follow the steps below to
add client scripts.

Procedure
1. Select the Client Scripts icon (

).

2. Create the Handle card clicked page script.
a. In the Page scripts section, click +Add.
b. In the Script name field, enter Handle card clicked.
c. In the Script Includes section, add the following script:
/**
* @param {params} params
* @param {api} params.api
* @param {any} params.event
* @param {any} params.imports
* @param {ApiHelpers} params.helpers
*/
function handler({api, event, helpers, imports}) {
const {workItem} = api.context.props;
api.emit('CARD_CLICKED', {workItem});
}
3. Create the Handle card action clicked page script.
a. In the Page scripts section, click +Add.
b. In the Script name field, enter Handle card action clicked.
c. In the Script Includes section, add the following script:
/**
* @param {params} params
* @param {api} params.api
* @param {any} params.event
* @param {any} params.imports
* @param {ApiHelpers} params.helpers
*/
function handler({api, event, helpers, imports}) {
const {workItem} = api.context.props;
const {action: actionItem} = event.payload;
api.emit('CARD_ACTION_CLICKED', {workItem, actionItem});
}
4. Create the Transform workItem to cardProps page script and attach the
WorkSchedulerUIBCardUtils script include.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2291


<!-- page 2292 -->
a. In the Page scripts section, click +Add.
b. In the Script name field, enter Transform workItem to cardProp.
c. In the script editor, add the following script:
/**
* @param {params} params
* @param {api} params.api
* @param {any} params.event
* @param {any} params.imports
* @param {ApiHelpers} params.helpers
*/
async function handler({api, event, helpers, imports}) {
const {workItem} = api.context.props;
const {mappingFields, recordFields} = workItem;
const cardUtils =
imports['sn_wfo_work_sched.WorkSchedulerUIBCardUtils']();
const fallbackValueLabel = await helpers.translate('<not
defined>');
const dropdownItems = workItem.tableMetadata.canDelete
? [{id: 'delete', label: await
helpers.translate('Delete')}]
: [];
// Fields for getContent() and getAria()
const contentFields = [{
name: 'assigned_to',
label: await helpers.translate('Assigned to')
},
{
name: 'assignment_group',
label: await helpers.translate('Assignment group')
},
{
name: 'start_date',
label: await helpers.translate('Start date')
},
{
name: 'end_date',
label: await helpers.translate('End date')
}];
// Create cardProps
const cardProps = {};
cardProps.tagline = {
label: workItem.recordFields._row_data.displayValue
|| null
};
cardProps.heading = {
label: mappingFields.description ?
mappingFields.description.displayValue : fallbackValueLabel
};
cardProps.dropdowns = dropdownItems.length > 0
? [{id: 'dropdown1', items: dropdownItems, icon:
'ellipsis-v-outline'}]
: [];
cardProps.content = await cardUtils.getContent(helpers,
contentFields, workItem, null, null, true);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2292


<!-- page 2293 -->
cardProps.aria = await cardUtils.getAria(helpers,
contentFields, workItem, null, true);
cardProps.assignedTo = mappingFields.assigned_to ?
mappingFields.assigned_to.displayValue : null;
api.setState('cardProps', cardProps);
}
To customize the display of the fields, refer to https://developer.servicenow.com/dev.do !/
reference/next-experience/utah/now-components/now-label-value-stacked/overview .
5. Click Save.
Here's a demo on how to create page scripts for Work scheduler. Create page scripts

What to do next

Define the workItem property in the Work scheduler page configuration
Related topics
Define and bind client scripts to components
Define the workItem property in the Work scheduler page configuration
Add the workItem property to the Work scheduler page configuration to receive the
workItem object provided by the work queue.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. In the Page configuration section, select the Config tab.
2. In the Properties section, select Edit.
3. In the Edit properties pop-up window, select +Add.
4. In the Property name field, enter workItem.
5. From the Type menu, select JSON.
6. Select Add.
7. Select Save.
The workItem property is created.
8. Hover over the workItem property and select the Dynamic data binding icon (

).

9. In the workItem field, type @state.workItem.
10. Click Save.
Here's a demo on how to define the workItem property in the Work scheduler page
configuration. Define the work item property in the Work Scheduler page configuration

What to do next

Define event mappings for Work scheduler
Define event mappings for Work scheduler
Add event mappings required for card interactions and for the card properties transformation to
the page configurations in Work scheduler.

Before you begin

Role required: workspace_admin or ui_builder_admin​
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2293


<!-- page 2294 -->
Procedure
1. In the Page configuration section, select the Events tab.
2. Attach the Transform workItem to cardProps to the Page ready event.
a. In the Page ready menu, select +Add a new event handler.
b. In the pop-up screen, go the Scripts section and select Transform workItem to
cardProps.
c. Select Add.
3. Attach the Transform workItem to cardProps to the Page ready event.
a. In the Page ready menu, select +Add a new event handler.
b. In the pop-up screen, go the Scripts section and select Transform workItem to
cardProps.
c. Select Add.
4. Attach the Transform workItem to cardProps to the Page property changed event.
a. In the Page property changed menu, select +Add a new event handler.
b. In the pop-up screen, go the Scripts section and select Transform workItem to
cardProps.
c. Select Add.
5. Attach the CARD_CLICKED and CARD_CLICKED (Work item cards) events.
The Create an event popup screen displays.
To Attach

Do this

a. In the Dispatched events section, select
+Add.
The CARD_CLICKED event

b. In the Event label field, enter
CARD_CLICKED.
c. From the Target parent event handler
menu, select CARD_CLICKED (Work

item cards)
d. Click Add.
a. In the Dispatched events section, select
+Add.
The CARD_ACTION_CLICKED (Work
item cards) event

b. In the Event label field, enter
CARD_ACTION_CLICKED.
c. From the Target parent event handler
menu, select CARD_ACTION_CLICKED

(Work item cards)
d. Click Add.
Here's a demo on how to define event mappings for the Work scheduler. Define event
mappings for the Work Scheduler

What to do next

Configure container components for Work scheduler

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2294


<!-- page 2295 -->
Related topics
Events in UI Builder
Configure container components for Work scheduler
Present information in an intuitive format using the Card Base Container component.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. In the Content section, select +Add component.
2. In the Components pop-up screen select Card Base Container.
3. In the Config tab, set the interaction and aria properties.
◦ From the Interaction menu, select Click.
◦ In the Accessibility section, select the Dynamic data binding icon
◦ From the ARIA Properties list, select @state.cardProps.aria.
4. Select the Events tab.
5. In the Card clicked menu, select +Add a new event handler.
The Event handler preview pop-up screen appears.
6. In the Scripts section, select Handle card clicked.
7. Select Add.
8. Select Save.
Here's a demo on how to configure container components in Work scheduler. Configure
container components for Work Scheduler

What to do next

Configure a Work scheduler card heading component
Configure a Work scheduler card heading component
Customize the Work scheduler heading component to display the title based on your needs.

Before you begin

Role required: workspace_admin, or ui_builder_admin​

Procedure
1. In the Content section, select +Add component.
2. In the Components pop-up screen select Card Base Header.
The selected container displays in the right pane.
3. Configure the header component.
a. In the Config tab, hover over the Dropdowns section and select the Dynamic data binding
icon

.

b. From the Dropdowns menu, select @state.cardProps.dropdowns.
c. Hover over the Heading section and select the Dynamic data binding icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2295


<!-- page 2296 -->
d. From the Heading menu, select @state.cardProps.heading.
e. Hover over the Tagline section and select the Dynamic data binding icon

.

4. Add Handle card action clicked to the Card header action clicked event.
a. Select the Events tab.
b. In the Card header action clicked section, select +Add a new event handler.
c. From the Tagline menu, select @state.cardProps.tagline.
d. In the Event handler preview pop up screen, from the Scripts section, select Handle card
action clicked.
e. Click Add.
5. Click Save.
Here's a demo on how to configure a Work scheduler card heading. Configure a Work
Scheduler card heading component

What to do next

Configure a display type component for a Work scheduler card
Configure a display type component for a Work scheduler card
Add the Label value stacked display work item fields within the card.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. In the Content section, navigate to Body(Flex) > Card Base Container (Flex) > Card Base
Header.
2. Right-click Card Base Header and select Add component after.
3. In the pop-up screen, select the Label value stacked component.
4. In the left pane, select Label value stacked.
5. In the right pane, select the Config tab and configure the size, alignment, and items.
a. In the Alignment menu, select Horizontal-equal.
b. In the Size menu, select Small.
c. Hover over Itemsand select the Dynamic data binding icon

.

d. In the Items menu, enter @state.cardProps.content.
e. In the Item min, width field, enter 75 px.
f. Enable Wrap text and Truncated options.
g. Click Save.
Here's a demo on how to configure a display type component for a Work scheduler card.
Configure a display type component for a Work Scheduler card

What to do next

Configure an avatar component for Work scheduler
Related topics
Configure UI Builder workspace experiences
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2296


<!-- page 2297 -->
Configure an avatar component for Work scheduler
Use the Container component to add an avatar and the user name of the work item assignee.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. In the Content section, navigate to Body(Flex) > Card Base Container (Flex) > Card Base
Header.
2. Right-click Card Base Header and select Add component after.
3. In the pop-up screen, select the Label value stacked component.
4. In the left pane, right-click Label value stacked and select Add component after.
5. Configure the component.
a. In the Components pop-up screen, select Container.
b. In the Config tab, do the following:
i. Select the Edit component visibility icon (

).

ii. Hover over the Hide component field and select the Dynamic data binding icon

.

iii. In the Hide component field, enter !@state.cardProps.assignedTo
iv. In the Direction menu, select Row.
v. In the Styles tab, in the Align items field, select the center icon.
vi. Select Save.
6. To add the Avatar component, select Container(Flex) > +Add component.
7. Select +Add component
The Components pop-up screen appears.
To

Do this

In the configure tab, set the size, user name,
and tooltip.
a. In the Size menu, select Medium.
b. Hover over the User name menu, and se­
lect the Dynamic data binding icon
Add the Avatar component

.

c. In the User name menu, type !@state.card­
Props.assignedTo.
d. Hover over the Tooltip text menu, and se­
lect the Dynamic data binding icon

.

e. In the Tooltip text menu, type !@state.card­
Props.assignedTo.
In the configure tab, set the size, and items.
Add the Label Value Tabbed component

a. In the Size menu, select Small.
b. Hover over the Items field and select the
Dynamic data binding icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2297


<!-- page 2298 -->
To

Do this

c. In the Items field, enter [{value:
@state.cardProps.assignedTo}
d. Select Save.
Here's a demo on how to configure an avatar component for Work scheduler Configure an
avatar component for Work Scheduler
Associate a work scheduler card to the work configuration
Associate the work scheduler card that you've created to the work configuration to display the
card in the Work scheduler sidebar.

Before you begin

Role required: workspace_admin or ui_builder_admin​

Procedure
1. Navigate to All > Work Scheduler > Work configuration.
2. Select the work configuration to which you want to associate the work scheduler card.
3. In the UX app route field, select the name of the work scheduler card.
4. Select Update.
The work configuration card displays in Work scheduler in manager workspace.
For information on setting up a work configuration, see Set up a work configuration.
For information on creating the work scheduler card, see Create a Work Scheduler card using
UI Builder.
Create extension points for Work scheduler
Create extension points to customize your implementation in Work scheduler. For example, if you
want your team members to work on an on-site task, you can configure the location of your team
members to the work items assigned to them so that they can get to the tasks quickly.

Before you begin

Role required: admin
You must set the application scope to Work scheduler (sn_wfo_work_sched).

About this task
The WorkItemSkillsRecommendationManager extension point is available by default.
Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. Open the sn_wfo_work_sched.WorkItemRecommendationManager extension
point.
3. In the Related Links section, select Create Implementation.
4. Define the functions based on your needs to customize your implementation.
Related topics
Registering custom script includes against the scripted extension points
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2298


<!-- page 2299 -->
Assigning work using Work Scheduler in Workforce Optimization for ITSM
Manage your teams' work assignments easily by customizing your work queue to display the
most relevant work items.
Gain insights into which agents have been recommended to work on a task based on the
mandatory and optional skills they have.
Assign work based on your teams' skills and capacity
Plan your teams' work and assign work items such as incidents, problems, change requests,
or interactions to them based on their skills, availability, and capacity. View your teams' shifts,
events, and work assignments and assign or reassign the work items from a central location.

Before you begin

Note: Your administrator must add sys ids for event categories that you want to display

in the calendar to the sn_wfo_work_sched.shift_data_categories system
property. For more information, see Work Scheduler components in Workforce Optimization
for ITSM reference.
Role required: sn_wfo_work_sched.manager

About this task

Analyze the tasks that your agents are assigned to and their actual shift plans. If the agent
doesn’t work during the duration the task has to be completed, you can reassign the task based
on agent availability.

Note:
• Each type of task is displayed in the color defined in the queue configuration.
• You can enter keywords in the Search field in the sidebar to search a card.

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Select the Work Scheduler icon.
◦ You can view the work shifts of all of your agents for all teams you manage. When you select
the shift, the pop-up displays the shift details such as the shift time span and agent break
times.
◦ In the contextual side panel, select the Filter icon (
) and then select any filter, add the
desired criteria, and select Apply to narrow down the display of the team members in the
calendar. You can filter based on your team's assignment group, skills, location, schedule
plan, or shift plan.
3. Optional: If you don’t have any queue configurations in the Work scheduler, select the queue
settings icon ( ) and then enable up to five work item types.
The application creates a queue configuration and corresponding filters for each enabled work
item type.
4. Optional: Create a queue configuration.
a. Select Queue configurations.
b. In the My queue configurations list, select New.
c. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2299


<!-- page 2300 -->
Name

Description

Name

Name for the queue configuration.

Work configuration

The type of work configuration you want to use for the queue
configuration.

Color

The work item color that displays in the calendar.

Order

The order number in which you want the queue configuration
displayed in Work scheduler.

Matching rule

The matching rule for the work item type.

d. Select Save.
5. Analyze your teams' work and schedule.
a. From the Queue menu, select a work item to view related tasks.
For example, if you select Unassigned Incidents, you can see all tasks related to the
Unassigned Incident queue.
You can select a time zone to view the agent schedule in that time zone.
b. Analyze the tasks and work shifts for each agent in the calendar.
You can use the pagination to scroll through the work shifts.
6. Assign a work item to an agent.
a. Select a task that you want to assign to an agent.
When you enable the Show suggested only option, by default, you can choose to display
team members based on their availability, skills, or time zone. The ranking of the team
members are based on matching assignment rules set for each criteria. Work scheduler
uses Assignment workbench
to evaluate agents to work on tasks.
You can select one or more of these criteria and the ranking of the team members will be
based on the selected criteria:
▪ WFO - Availability—The number of hours the team member is available.
▪ WFO - Mandatory skills— If the task has mandatory and optional skills associated with it,
the work scheduler displays agents who have all of the mandatory skills first and then the
agents who have the optional skills.
▪ WFO - Optional skills— If the task only has optional skills associated with it, then the list
displays the agents with the optional skills.
▪ WFO- Timezone overlap—The delta between the task time zone and the user's time zone.
For example, if the user is located in the Pacific time zone and if the task location is in the
Eastern time zone, then it will display as +3; if the task location is Hawaii, then it will display
as -3.
To add your own matching rule, see Create a criteria for a matching rule in Work scheduler.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2300


<!-- page 2301 -->
All of these criteria are based on the More is better ranking method where a higher value is
better. For example, when the WFO-Mandatory skills criteria is enabled, team members that
have more skills that are mandatory to work on the work item will be ranked higher.
For each criteria, if there is 100% match, then the values are displayed in green color; if not,
the values are displayed in yellow color. If all criteria match a 100% then the matching details
are displayed in green color; if not, they're displayed in yellow color.
b. Select an agent from the work scheduler calendar to whom you want to assign the task.
c. Click and drag your mouse device for the time span on the calendar for which you want the
agent to work on the task.
The task is assigned to that agent. You can also edit the duration of the time span or drag the
time span and reassign the task to another agent.

Note: From the work queue, when you select a task that has been assigned to an
agent, the application auto-scrolls to the page that has the timespan for the task and
displays the schedule for the agent.
7. Optional: Update a work item from the calendar.
a. Select a desired task on the calendar that you want to update.
b. Select the Edit icon to access a work item record.
c. On the form, make the necessary updates.
d. Select Update.
(Optional) The image below is a representation of the Work scheduler screen.

Create a criteria for a matching rule in Work scheduler
Add a criteria for a matching rule to enable assignment of work items to team members based on
the rule.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2301


<!-- page 2302 -->
About this task

The following matching rules, which are available by default, are based on the selection criteria
matching type:

Rule name

Work configuration
name

Table

UX app route

Incident Matching rule Incidents

Incident [incident]

Incident

Problem Matching
rule

Problems

Problem [problem]

Problem

Requested item
Matching rule

Requested items

Requested Item
[sc_req_item]

Requested item

Request Matching
rule

Requests

Request [sc_request]

Request

Catalog Task
Matching rule

Catalog Task

Catalog Task [sc_task] Catalog task

Change Request
Matching rule

Change Request

Change Request
[change_request]

Change requests

Change Task
Matching rule

Change Task

Change Task
[change_task]

Change task

For information on how matching criteria works, see Matching criteria for work items in Work
scheduler.
The following four criteria are available by default:
• WFO-Mandatory skills
• WFO-Availability
• WFO-Optional skills
• WFO-Timezone overlap

Procedure
1. Navigate to All > Work scheduler > Matching Rules.
2. In the Matching Rules list, select a matching rule; for example, the Incident matching rule.
3. In the Select Criteria related list, select New.
4. Fill in the fields on the form.
For information on creating a new matching criteria, see Create assignment workbench
matching criteria .
5. Select Submit.
Matching criteria for work items in Work scheduler
The assignment workbench uses configurable matching criteria, such as skills and availability, to
evaluate the agents in a selected group and provide an overall ranking.
There are three types of matching criteria:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2302


<!-- page 2303 -->
• Simple Match: creates one-to-one matching, such as matching the time zone of an agent with
the time zone of a task location.
• Aggregate: uses a simple query and returns an aggregate result. For an aggregate type, select
a table and create a filter, and then select an aggregate field such as the Assigned to field. This
type of query returns a set of users.
• Scripted: uses a scripted query which returns a list of users.
Several matching criteria are provided with the assignment workbench:
• Availability Today: Availability is calculated based on the agent's work schedule, assigned
work, and personal time off. The more availability an agent has, the higher the contribution to
the agent's overall rank.
• Matching Skills: The number of agent skills that match the skills required for the incident. The
more skills that match, the higher the contribution to the agent's overall rank.
• Matching Skills - Mandatory Skills Support Calculates the number of agent skills that match
the mandatory skills. It does this by filtering out all agents who do not have the mandatory skills
and ranks the remaining agents. The more skills that match, the higher the contribution to the
agent's overall rank.

Note: If using the mandatory skills feature, use the Matching Skills - Mandatory Skills
Support criterion to match agents with the Configuring Mandatory Skills
an incident.

identified for

• Assigned Incidents: The number of incidents already assigned to this agent. The more
incidents assigned, the lower the contribution to the agent's overall rank.
• Last Assigned: For the sake of balancing assigned work, prioritized the agent based on the
last assigned work.
To create matching criteria, select the type and use the fields related to that type to build
the query. After creating matching criteria, you can create a configuration for the assignment
workbench by creating a matching rule of the type Selection criteria and selecting the desired
matching criteria.
As part of selecting the matching criteria for the workbench configuration, you can specify the
following settings for each individual criterion:
• ranking and display usage
• ranking method
• ranking weight
• threshold
• active/inactive

Ranking and display usage
In the Use for field, specify how you want that matching criterion to be used:
• Ranking and display: uses the criterion to determine agent ranking and displays it in a column
on the workbench.
• Display only: displays the criterion in a column on the workbench but does not use it to
determine agent ranking.
• Ranking only: uses the criterion to determine agent ranking but does not display it on the
workbench.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2303


<!-- page 2304 -->
Ranking method
There are two ranking methods:
• More is better: for example, more availability is better when determining the agent ranking.
• Less is better: for example, fewer assigned incidents are better when determining agent
ranking.

Weight
Each matching criterion has an assigned weight. By default, the matching criteria has an
assigned weight of 10. You can assign a higher weight to the criteria that's more important.

Threshold
A threshold sets a minimum requirement for a criterion. For example, set the threshold of the
Matching Skills criterion to 3 if you want to see only those agents who have at least three of
the required skills for a task. For availability, set the threshold to the desired number of hours
to display only those agents who have that minimum number of work hours available. You can
set the threshold in the Select Criteria related list on the Matching Rule form. If necessary,
personalize the list and add the Threshold column.

Active/Inactive
There can be several matching criteria associated with the matching rule that determines the
assignment workbench configuration. Each individual criterion can be set to active or inactive.
Changing this setting has an immediate impact on the agent ranking. You can make this change
in the Select Criteria related list on the Matching Rule form. If necessary, personalize the list and
add the Active column.

Calculating the agent ranking
The assignment workbench adds the values of the matching criteria and their respective weights
and uses these values to determine the overall agent ranking.
1. Calculate a number for each criterion.
2. Multiply that number by the criterion weight.
3. Divide the result by the total of all criterion.
4. Repeat for each criterion and add the results.
The following example shows how the ranking is determined for an agent with these matching
criteria values:
• Matching Skills with Mandatory Skills Support: 5/6
• Availability Today: 7 hours
• Assigned Incidents: 2
Calculations:
• Matching Skills: 2 / 3 = 0.666 (with 3 being the maximum number of skills)
• Availability Today: 7 / 8 = 0.875 (with 8 being the maximum number of hours)
• Assigned Incidents: 2 / 26 = 0.0769 (with 26 being the total number of tasks in the
table)
• Weight: each matching criteria has an equal weight of 10
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2304


<!-- page 2305 -->
((0.666 x 10) / Total of criterion weight (10+10+10)) + ((0.875
x 10) / Total of criterion weight (10+10+10)) + ((0.0769 x
10) / Total of criterion weight (10+10+10))
(6.66 / 30) + (8.75 / 30) + (0.769 / 30)
0.222 + 0.291 + 0.0256 = 0.53
This calculation is performed for each agent in the assignment group. Agents are ranked based
on the value of this calculation, with the highest number earning the highest ranking.

Work Scheduler components in Workforce Optimization for ITSM reference
Workforce Optimization for ITSM has properties to configure the Work scheduler default
behavior.

Properties
Enter sys_properties.list in the Workspace filter navigator and search for the work
scheduler properties listed below.
Properties
Property

Description

sn_wfo_work_sched.allowed_tables

Defines the list of tables that a Work scheduler
admin (sn_wfo_work_sched.admin) can use to create
configurations for work assignments in the Workforce
Optimization for ITSM manager workspace.
• Type: string

• Default value:
incident,problem,change_request,change_task,sc_task,sc_request,s
sn_wfo_work_sched.shift_data_categories
Comma separated sys ids for event categories
that display in the Work scheduler calendar in the
manager workspace.
Type: string
sn_wfo_work_sched.should_fetch_shift_data
Enables the display of shift spans in Work scheduler
in Workforce Optimization for ITSM manager
workspace.
• Type: true|false
• Default value: true
sn_wfo_work_sched.recommend_criteria_limit​
Defines how many matching criteria can be created
for each matching rule in Work scheduler when
suggestions are enabled.​
• Type:integer
• Default value:10

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2305


