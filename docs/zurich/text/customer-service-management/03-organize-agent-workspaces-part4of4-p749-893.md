# Zurich Customer Service Management — Organize agent workspaces

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 749–893 of 2452 | Part 4 of 4

Sections: Organize agent workspaces (p299)

---

<!-- page 749 -->
About this task

Note: If the Allow users to re-run the guidance field is selected when creating a
guidance, users can re-execute the guidance or go back and modify responses in the
previous question nodes in the run-time experience.

You can link guidance inputs and outputs to the next question node.
You can select a guidance from the list of available guidances to link to your guidance node or
create a new one in Core UI.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. In Decision Tree Builder, add a new node by selecting the Add path icon (

) on a node.

5. Select Add node.
6. In the pop-up window, configure a guidance node by selecting Propose a guidance as an
outcome.
A guidance is an outcome of a decision tree.
7. Enter a name for the node.
8. In the Guidance field, select the guidance by starting to type the guidance name and selecting
it from the list.
9. Enter specific values for guidance inputs in the Set field inputs to pass data into this guidance
section.
These fields can contain static text, dynamic content such as field values from guidance
inputs, or a combination of static text and dynamic content. To use dynamic content, select the
Link input icon ( ) next to the field and select a guidance input from the list.
10. Optional: Enter placeholder values for guidance inputs in the Set more field inputs to show to
users section.
Agents can substitute their own information for the placeholder values. These fields
can contain static text, dynamic content such as field values from guidance inputs, or a
combination of static text and dynamic content. To use dynamic content, select the Link input
icon ( ) next to the field and select a guidance input from the list.
11. Select Save and close.

What to do next

Add a next node that is a question node after a guidance node.
Link an activated decision tree to this decision tree
Nest and invoke a decision tree from a linking node when specific conditions are met in Decision
Tree Builder. Use nested trees to execute complex troubleshooting and reuse existing decision
trees.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

749


<!-- page 750 -->
3. Select Open in Builder.
4. In Decision Tree Builder, add a new node by selecting the Add path icon (

) on a node.

5. Select Add node.
6. In the pop-up window, select Link decision tree to configure a linking node.
7. Enter a name for the node.
8. In the Child decision tree field, select an activated decision tree.
9. Enter values or link inputs to reuse answers from prior nodes.
For more information, see Reuse answers at decision points.
10. Select Save and close.
Reuse answers at decision points
Link inputs to reuse answers from prior nodes in Decision Tree Builder. For example, in a decision
tree that deals with a loan application, you could reuse the input related to the customer’s salary
at multiple decision points to determine the loan eligibility.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

Linked inputs can be used to create path conditions.
For more information about input mapping and exceptions related to input mapping, see Linking
inputs in decision tree nodes.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. In Decision Tree Builder, select the node you want to map inputs to.
Different nodes and actions
Node type

Question node

Action

a. Enter a question and select the type of
answer.
b. Select Link inputs to reuse prior data.
c. Use the Link input icon ( ) to select a prior
node and an input that you want to reuse in
this question.

Note: The question with a reused
answer is answered automatically
during runtime.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

750


<!-- page 751 -->
Node type

Guidance node

Action

a. Select a guidance from the list.
b. Select the Link input icon ( ) to select a
prior node and the input that you want to
reuse in the guidance input.

Linking node

a. Select a child tree from the list.
b. Select the Link input icon ( ) to select a
prior node and the input that you want to
reuse in the start node of the child tree.

5. Select Save and close.
Activate a decision tree
Activate a completed decision tree so you can use it in playbooks created using Playbooks, in
recommendations created using Recommended Actions for Customer Service, or in Service
Portal.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

When you activate a decision tree, Decision Tree Builder checks for errors such as missing
information, invalid input mappings due to changes in prior node inputs, or missing guidance
inputs. After all the errors are resolved, you can activate the decision tree.
If you make changes to an activated decision tree, remember to activate the decision tree again
to display the updated decision tree in a workspace. When a decision tree is activated to create
a new version, the success message lists all playbooks and activities that reference the decision
tree with direct links to facilitate version updates.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree that you want to activate.
3. Select Open in Builder.
4. In Decision Tree Builder, select Activate.
◦ If there are errors in your decision tree, error icons and alert messages are displayed. You
must resolve the errors before you can activate the decision tree. For more information, see
Validation error notifications in Decision Tree Builder.
◦ If there are no errors, the confirmation dialog box to activate the decision tree displays.
5. In the confirmation dialog box, select Activate now.
A success message with instructions on the next action to take is displayed. If the decision
tree is part of a Guided Decision with Inputs and Outputs activity in any playbooks, the
success message displays the playbooks and their Guided Decision with Inputs and Outputs
activities that use the decision tree. You must navigate to these playbooks and update the
decision tree version to the latest version. Otherwise, these playbook activities continue using
the older version until you update them to the latest version.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

751


<!-- page 752 -->
Result
• The decision tree status changes from Not active to Active.
• The Activate button is disabled.

What to do next
• Configure recommended actions to use the activated decision tree as a recommendation.
The recommendations appear as cards in the contextual side panel of a workspace. For more
information, see Add Guided Decisions to Recommended Actions.
• Configure Playbooks to use the activated decision tree as part of a playbook in a record tab.
For more information, see Add Guided Decisions to playbooks.
• Configure a Service Portal page to use the activated decision tree for providing
troubleshooting process to internal users. For more information, see Add Guided Decisions to
Service Portal.
Revert to the previous activated decision tree version
Discard any changes in a non-activated decision tree and revert the decision tree to the last
activated version.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. Select the More options icon (

) and select Discard latest version.

Result

The decision tree reverts to the last activated version.
Validation error notifications in Decision Tree Builder
Notifications of errors that you might encounter while building and activating a decision tree in
Decision Tree Builder enable you to recover easily from errors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

752


<!-- page 753 -->
Error display
If there are missing values or incorrect configurations in a node or path, errors may appear during
validation when saving or activating a decision tree.
The errors are indicated in the following ways:
• Error icons on nodes and paths that have errors
• A label for a count of nodes and paths that have errors in the top-right corner
• An alert message in the side panel showing a list of errors in the selected node or path
For more information on errors and recovery across various nodes and paths, see Validation
errors.
Validation errors
Several types of errors are displayed for missing or incorrect information in the nodes and paths
while saving an element or activating a decision tree.

Question node errors
Resolving errors in question nodes
Error message

Resolution

This node needs a unique name

Enter a name in the Node name field.

The questions in this node need to be
unique

Enter a unique question or instruction in the
Question or instruction field.

This node needs a question to ask users

Enter a unique question or instruction in the
Question or instruction field.

The task input needs a reference table to
pass data about records

Select a table in the Reference table field for the
task input to pass data about the record on which
this decision tree is run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

753


<!-- page 754 -->
Resolving errors in question nodes (continued)
Error message

Resolution

Question {number} needs a question or
instruction

Enter a question or instruction in the Question or
instruction field.

Question {number} needs an answer type

Select an input type for the expected answer in
the Type of answer field.

Question {number} needs answer choices

The Choice answer type requires a choice list.
Enter values in the Label and Value fields to
configure a list. You can add as many choices as
you want.

Question {number} needs an answer-string
character limit

Enter a character limit in the Maximum number
of characters field.

Type of answer in Question {number}
doesn't exist

The answer type that you entered in the Type of
answer field isn’t valid. Select the answer type
from the list. For more information, see Answer
types for questions.

Question {number} needs a choice table
and choice fields for the answer(s)

The Pre-defined list from a table option for the
choice answer type requires you to specify the
choice table and choice field to reuse choices.
Select a table and list field in the Choice table
and Choice field fields respectively.

Choice table in Question {number} doesn't
exist

Enter a valid table name in the Choice table field.

Question {number} needs a reference table The reference input type requires a reference
for the answer(s)
table to be selected. Select a table in the
Reference table field to add a reference field,
which stores a reference to a field on another
table, as an answer type.
Reference table in Question {number}
doesn't exist

Enter a valid table name in the Reference table
field.

You need to add a path after this node

Question nodes require paths to add the next
question or guidance nodes. Select the Add path
icon
on the question node in the canvas to
add a new path.

The input you linked in Question {number}
After you change a question’s answer type in a
isn’t valid because of mismatched answer
prior node, the input mapping from the question
types. You can unlink this input, link a new
one, or change this question’s answer type. in the current node is no longer valid.
1. Unlink the input by deleting the link.
2. Either change this question's answer type to
match the changed answer type in the prior
node or add a question that matches it.
3. Select the Link input icon (

) to link the inputs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

754


<!-- page 755 -->
Resolving errors in question nodes (continued)
Error message

Resolution

The input you linked to Question {number}
Unlink the input by deleting the link.
no longer exists after recent node changes.
Unlink this input to fix this error.
The input you linked in Question {number}
isn't valid because of mismatched
reference tables with a prior node. Tables
need to match at the same or child level.

You can link reference input types only if the
current question node’s input table matches the
prior node’s input table at the same level or at the
child level. For example, the Task table can be
linked to the Task table or the Task table can be
linked to the Case table, which is a child of the
Task table.
1. Unlink the input by deleting the link.
2. If necessary, select the reference table that
matches at the same level or at the child level.
3. Select the Link input icon (
reference inputs again.

) to link the

Guidance node errors
Resolving errors in guidance nodes
Error message

Resolution

This node needs a unique name

Enter a name in the Node name field.

This node needs a guidance

Guidance nodes must be linked to a guidance.
Either select an existing guidance or create one.
• Select an available guidance from the list in the
Guidance field.
• Create a guidance in Core UI by selecting the
Create a guidance icon
in the Guidance
field. For more information, see Create a
guidance in the Core UI.

You need to set inputs for this guidance

{Guidance input name} input isn't valid
because of mismatched reference tables
with a prior node. Tables need to match at
the same or child level.

Configure the guidance inputs for the guidance
that you selected. For more information, see
Provide actions to agents in a decision tree.
You can link reference input types only if the
current guidance node’s input table matches the
prior node’s input table at the same level or at the
child level. For example, the Task table can be
linked to the Task table or the Task table can be
linked to the Case table, which is a child of the
Task table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

755


<!-- page 756 -->
Resolving errors in guidance nodes (continued)
Error message

Resolution

1. Unlink the input by deleting the link.
2. Select the ( ) icon to link the inputs again or
enter a static value.
The input you linked to {Guidance input
name} no longer exists after recent node
changes. Unlink this input to fix this error.

You need to reset the input(s) for this
guidance because of changes in prior
nodes

1. Unlink the input by deleting the link.
2. Select the Link input icon ( ) to link the inputs
again or enter a static value.

1. Unlink the input by deleting the link.
2. If necessary, select the Link input icon ( ) to
link the new answer type from the prior node or
enter a static value.

Linking node errors and warnings
Resolving errors in linking nodes
Error message

Resolution

This node needs a unique name

Enter a name in the Node name field.

This node needs a child tree

Linking nodes must be linked to a child tree.
Either select an activated decision tree or create
one.
• Select an activated decision tree from the list in
the Child decision tree field.
• Create a decision tree in Core UI by selecting
the Create a decision tree icon
in the Child
decision tree field. For more information, see
Create a decision tree in Core UI.

You need to map the inputs of the child
decision tree to this decision tree correctly.
{Input name} input isn't valid because of
mismatched reference tables with a prior
node. Tables need to match at the same or
child level.

Configure the start node inputs of the child
decision tree or select the Link input icon ( ) to
link the inputs.
You can link reference input types only if the
current guidance node’s input table matches the
prior node’s input table at the same level or at the
child level. For example, the Task table can be
linked to the Task table or the Task table can be
linked to the Case table, which is a child of the
Task table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

756


<!-- page 757 -->
Resolving errors in linking nodes (continued)
Error message

Resolution

1. Unlink the input by deleting the link.
2. Select the ( ) icon to link the inputs again or
enter a static value.

Resolving warnings in linking nodes
Warning message

The child decision tree you linked earlier
changed. Double-check the mapped
inputs.

Resolution

1. Unlink the input by deleting the link.
2. If necessary, select the Link input icon ( ) to
link the input from the prior node or enter a
static value.

Make sure these linked decision trees can
still use {child decision tree}:

When you update and activate a decision tree,
the parent decision trees that use this decision
tree as a child tree must also be updated.

• {Name of parent tree 1}

1. Select the parent decision tree.

• {Name of parent tree 2}

2. Select the link node that references the child
decision tree that has changed.

• {Name of parent tree 3}

3. Unlink the input by deleting the link.
4. If necessary, select the Link input icon ( ) to
link the input from the prior node or enter a
static value.

Path errors
Resolving errors in paths
Error message

Resolution

This path needs a name

Enter a name in the Path name field.

This path needs a unique path priority

Enter a unique value in the Path priority field.

This path needs conditions for showing the
next node

Configure one or more conditions by selecting an
input from the previous node, an operator, and
an input value.

Every condition in this path needs to be
complete

Complete a condition in the path by selecting an
input from the previous node, an operator, and
an input value.

You need to add a node after this path

A path must lead to a node. Select Add node to
configure the placeholder node as a question
node or a guidance node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

757


<!-- page 758 -->
Resolving errors in paths (continued)
Error message

Resolution

The path condition needs new values
because of changes in prior nodes

Reconfigure the path condition by selecting the
new input from the previous node, an operator,
and the new input value.

The path conditions can’t be defined until
the prior node has a question and answer

Configure questions and answer types in the
path's parent node.

Editing decision trees in Core UI
You can edit decision trees created in Core UI to improve or extend a troubleshooting process.

Note: You can edit or extend existing decision trees in the Core UI but you can no longer
create them. Use Decision Tree Builder to create new decision trees. For more information,
see Configuring decision trees in Decision Tree Builder.
Decision tree configuration flow in Core UI

The following table provides high-level information for editing a decision tree in the Core UI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

758


<!-- page 759 -->
Decision tree configuration steps
Decision tree step

Description

Configure a start node and a task input

Each decision tree includes a start node of
type decision and a task input. The task input
stores a reference of the record that the agent
is working on. For more information, see Edit a
decision tree.
Select the start node from the Decision Tree
Nodes related list. Create inputs to add initial
questions you want to ask customers. Select
the input type for the expected answer and
configure the answers in the related list.
For more information, see Add questions or
instructions to a decision input.

Create a decision path

Create a decision path and configure
conditions for the next decision node. For
example, you can set up a condition to select
an answer for the question in the start node.
When a user selects this answer, this path that
leads to a decision node is taken. For more
information, see Determine the next node in a
decision tree.
A decision node is automatically created.

Create inputs to add follow-up questions in the Select the input type for the expected answer
decision node
and configure the answers in the related list.
For more information, see Add questions or
instructions to a decision input.
Create a guidance path

Create a guidance path and configure
conditions for the next guidance node. For
example, you can set up a condition to select
an answer for the question in the start node
or decision node. When a user selects that
answer, this path leads to a guidance node.
For more information, see Determine the next
node in a decision tree.
A guidance node is automatically created.

Configure the created guidance node

Configure the guidance node to provide
resolution to a customer. Associate a guidance
to the guidance node and configure the
guidance inputs. For more information, see
Provide actions to agents in a decision tree.

Create a linking path

Create a linking path and configure conditions
for the next decision tree. For example, you
can set up a condition to select an answer for
the question in the decision node. When a
user selects that answer, this path leads to the
next decision tree. For more information, see
Determine the next node in a decision tree.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

759


<!-- page 760 -->
Decision tree configuration steps (continued)
Decision tree step

Description

A linking node is automatically created.
Configure the created linking node

Configure a next node

Configure the linking node to link another
decision tree to this decision tree. For more
information, see Link another decision tree to
this decision tree.
Configure a next node that is a decision node.

Note: You can't add another guidance
node after a guidance node.
• You can add an intermediate decision node
to add another guidance node.
• You can configure a linking node after this
decision node to link another decision tree.
For more information, see Add a next node
after a guidance node.
Map inputs from one node to another

Map inputs from one node to another to reuse
answers by selecting a source node and a
source input and a destination input.
In the guidance node, you can pass inputs
from the prior nodes to the guidance inputs
by using the Pill-picker icon (
answers.

) to reuse

For more information, see Reuse answers at
decision points.

Note: To go back to your decision tree from any node, select the Preview this record icon
( ) next to the Decision Tree field and then select Open Record. You can see all the nodes
that you created in the related list.
Edit a decision tree
Edit a decision tree that you created using Core UI to improve or extend a troubleshooting
process.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

760


<!-- page 761 -->
Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. On the form, edit the fields, as necessary.
Decision Tree form
Field

Description

Name

The internal name of the decision tree.

Note: A start node is created for the
decision tree with this name.
Action Label

The label of the call-to-action button on the
Recommended Actions card.

Description

The description of the decision tree to show
on the Recommended Actions card.

Start Node

The reference of the start node.

Title

The external name of the decision tree that
end-users or agents can see in a workspace.
If the Title field is empty, the internal name
is shown as the external name on the
Recommended Actions card.

Show a dismiss button

Shows or hides the Dismiss button that
cancels the flow of a decision tree. This field
is turned on by default.

4. Select Update.

What to do next

Add questions or instructions to a decision input
Add questions or instructions to a decision input
Create decision inputs for each decision node. Decision inputs appear in the form of questions
in a workspace for service agents to answer.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author
Create a decision path first. A decision node is automatically created with the same name as the
decision path.

About this task

Decision nodes can have one or multiple questions with different answer types.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

761


<!-- page 762 -->
Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select the start node or any decision node.
4. Select Create Input.
5. In the Type field, select the type of a decision input.

Note: In the Type field, you have access to many input types. Select only one of the
recommended input types listed the following table.
Input type
Field

Description

Choice

A list of choices
Choice list specification: Type of choice list.
You can create a choice list by clicking New in the Choices related list.

Date

Date in the format of YYYY-MM-DD

Date/time Date and time in the format of YYYY-MM-DD HH:MM:SS
Decimal

A number with the decimal points

Integer

A number with no decimal points

Reference Reference to a field from another table
◦ Reference: Reference table for selecting a field.
◦ Reference qual condition: Condition to filter the search results.
For example, the Caller field on the Incident table is a reference to the User
[sys_user] table.
String

A line of text
Maximum number of characters: Option to specify the length of the string

True/
False

A check box field

6. In the Label field, enter a question or instruction for customers.
7. Select Submit.

What to do next

Determine the next node in a decision tree
Determine the next node in a decision tree
Create a path to set conditions and priority order for the next node in a decision tree.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

762


<!-- page 763 -->
About this task

Based on the answer a service agent provides to a question, a decision path guides the agent
to the next decision node, a guidance path guides the agent to the next guidance node, and a
linking path guides the agent to the next linking node.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select the start node or decision node.
4. Select one of the following actions.
Action

Description

Create Decision Path

Creates a decision path to link this node to
the next decision node. The decision node is
automatically created.

Create Guidance Path

Creates a guidance path to link this node to
the next guidance node. The guidance node
is automatically created.

Create Linking Path

Creates a decision path to link this node to
the next linking node. The linking node is auto­
matically created.

5. In the Label field, enter a label for the path.
6. In the Order field, enter a priority order for this path.
The path with the lowest priority order is executed first.
7. Configure a condition for this path to display the next node.
Path types and descriptions
Path

Description

Decision path

Decision paths include conditions when the next
question is displayed to an agent.

Guidance path

Guidance paths include conditions when a
guidance that provides resolution for an issue is
displayed to an agent.

Linking path

Linking paths include conditions when a next
decision tree is executed.

You can only access the direct parent node’s inputs while configuring a condition for the path.
8. Select Update.

Note: You can create as many decision, guidance, or linking paths as required.
What to do next

Continue building the decision tree.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

763


<!-- page 764 -->
• Add questions or instructions to a decision input
• Provide actions to agents in a decision tree
• Link another decision tree to this decision tree
Provide actions to agents in a decision tree
Associate a guidance to a guidance node so that service agents can act to resolve or escalate a
customer issue.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author
Create a guidance path first. A guidance node is automatically created with the same name as
the guidance path.

About this task

A guidance is an outcome of a decision tree.
You can either create a guidance or select a guidance from a list. For a complete list of guidances
that are available by default, see Components installed with Guided Decisions Experience. You
can then enter guidance inputs, as required.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select the guidance node created.
4. In the Guidance field, select a guidance to associate with the guidance node.
5. Depending on the guidance you selected, enter guidance inputs, as required.

Note: If you selected the Attach Knowledge Article guidance, enter the knowledge
article to link to.
If you selected the Provide Resolution guidance, enter the case, resolution notes, and a
resolution code.
If you selected the Create Work Order guidance, enter the task to link to.
6. Select Update.

What to do next

Link task input in the start node to the guidance
Link task input in the start node to the guidance
Link the task input in the start node to the task input in the guidance to pass record information.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

764


<!-- page 765 -->
About this task

The task input in the start node holds a reference of the record that an agent is working on in a
workspace. For example, if you want to attach a KB article to a case, you would need the case
number.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select the guidance node created.
4. Select Create Input Mapping.
5. In the Source Node field, select the start node of your decision tree.
6. In the Source Input field, select the task input.
7. In the Destination Input field, select the task input associated with the guidance.

Note: The Destination Node is automatically filled with the value of the decision node
that you’re creating the input mapping from.
8. Select Submit.
Link another decision tree to this decision tree
Nest and invoke decision trees from linking nodes when specific conditions are met. Use
guidance output and nested trees to execute complex troubleshooting.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author
Create a linking path first. A linking node is automatically created with the same name as the
linking path.

About this task

The execution of the linked decision tree begins when a specific condition specified in the
linking path is met. The linking node holds a reference of the start node in the next decision tree.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select the linking node.
4. In the Linked Decision Tree field, select an available decision tree from the list.
5. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

765


<!-- page 766 -->
Add a next node after a guidance node
Add a next node that is a decision node after a guidance node. If a next node is configured, the
execution of the decision tree continues after the agent performs the guidance and the guidance
history is marked as complete.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

You can only add a decision node after a guidance node.
• You can add an intermediate decision node to add another guidance node.
• You can configure a linking node after this decision node to link another decision tree.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select the guidance node.
4. Select Set Next Node.
5. In the Label field, enter a name for the next decision node.
6. Select Update.

What to do next

Continue building the decision tree.
• Add questions or instructions to a decision input
• Determine the next node in a decision tree
Reuse answers at decision points
Create input mapping to reuse answers from prior nodes. For example, in a decision tree that
deals with loan application, you can reuse the input related to the customer’s salary at multiple
decision points to determine the loan eligibility.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

About this task

For more information about input mapping in a decision node or a guidance node, see Linking
inputs in decision tree nodes.
Mapped inputs can be used to create path conditions.
You can edit or extend existing decision trees in the Core UI but you can no longer create them.
Use Decision Tree Builder to create new decision trees. For more information, see Configuring
decision trees in Decision Tree Builder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

766


<!-- page 767 -->
Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision node or the guidance node that must reuse inputs.
3. Click Create Input Mapping.
4. In the Source Node field, select the node you want to copy from.
5. In the Source Input field, select the node input to copy.
6. In the Destination Input field, select the node input you want to copy the values to.

Note: The Destination Node is automatically filled with the value of the node that you're
creating the input mapping for.
7. Select Submit.
Delete a decision tree
Delete a decision tree and all the related version records. All related records such as decision
tree versions, nodes, and paths are deleted.

Before you begin

Role required: admin, sn_gd_core.decision_tree_author

Procedure
1. Navigate to All > Guided Decisions > Decision Trees.
2. Select the decision tree from the list.
3. Select Delete.
Add Guided Decisions to Recommended Actions
Add decision trees created using the Guided Decisions Experience application to
Recommended Actions, so customer service agents can work through it to resolve cases more
efficiently.

Before you begin

Ensure that you have Recommended Actions application (sn_nb_action) installed.
Role required: sn_nb_action.next_best_action_author, admin

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Create a context for a table.
A context enables agents to see recommended actions for a record in that table.
3. Create a rule for the context.
A rule is a set of conditions that applies to a context and determines when a recommended
action appears for records in the context table.
4. Create a recommendation of type decision tree.
A recommendation is a way to suggest an action to an agent.
Related topics
Configuring Guided Decisions
Configuring guidances and decision trees
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

767


<!-- page 768 -->
Add Guided Decisions to playbooks
Add decision trees created using the Guided Decisions Experience application to a playbook, so
customer service agents can work through it to resolve cases more efficiently.

Before you begin

Role required: admin, pd_content_author

About this task

A playbook is set of steps that defines a process. A decision tree can be added as one of the
steps within a playbook.
Playbooks are displayed in cases on Agent Workspace based on trigger definitions defined for
each playbook in the Process Automation Designer. For more details, see Process Automation
Designer . Based on the context of the case the customer service agent is working on, the
playbook and any associated decision trees are displayed.
For more details on playbooks for Customer Service Management, see Playbooks for Customer
Service Management.

Procedure
1. Navigate to All > Process Automation > Process Automation Designer.
Playbooks opens in a new tab.
2. Select the process you want to add the decision tree to.
3. Select Add activity.
4. Select Guided Decisions Experience > Guided Decisions.
5. In the Details tab, fill in the basic details of your activity.
Option

Description

Label

Unique name for your activity. This name ap­
pears in user-facing views of your playbook.

Description

Description of your activity.

Run condition

After the activity starts, the activity runs only if
specific conditions are met.
Options when your activity must start:
◦ After Previous: This activity starts when
the preceding activity has a state of
Skipped or Complete.

When to start

◦ Immediately: This activity starts when its
stage starts running. Your activity doesn't
depend on the state of any preceding activi­
ties.
◦ With Previous: This activity starts when the
immediately preceding activity starts run­
ning.

6. Select View all properties.
7. In the Automation tab, in the Decision tree field, select the decision tree you want to add to the
guided decision.
8. Select Done.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

768


<!-- page 769 -->
9. In the main header, select Activate.
Activating your process publishes it so that it runs when triggered.

Result

The decision tree is added to the playbook. Depending on the context of the case, customer
service agents can access the decision trees from cases on Agent Workspace.
Related topics
Configuring Guided Decisions
Configuring guidances and decision trees
Add Guided Decision with inputs/outputs to Playbooks
Add the Guided Decision with Inputs and Outputs activity in the Guided Decisions Experience
application to your playbook to pass input parameters to a decision tree and use its output
values in subsequent playbook activities or conditions, helping agents resolve cases more
efficiently.

Before you begin

Role required: admin, pd_content_author

About this task

The Guided Decision with Inputs and Outputs activity is a playbook activity that enables decision
trees to be used in playbooks with the ability to pass input parameters and retrieve output
values. This Guided Decision with Inputs and Outputs activity allows you to select a specific
decision tree version and configure input parameters that map to the questions defined in
the first node of the decision tree. The activity supports versioning, where each activation of
the decision tree builder creates a new version, and playbook activities continue using their
configured version until updated. When a decision tree is activated to create a new version, you
receive a notification message listing all playbooks and activities that reference the decision
tree, with direct links to facilitate version updates.
For more details on playbooks for Customer Service Management, see Playbooks for Customer
Service Management.

Procedure
1. Navigate to All > Process Automation > Process Automation Designer.
Playbooks opens in a new tab.
2. Select the process you want to add the decision tree to.
3. Select Add activity.
4. Select Guided Decisions Experience > Guided Decisions with inputs/outputs.
5. In the Details tab, fill in the details of the activity and select Save and close.
Details tab in the Guided Decisions with Inputs/Outputs activity
Field

Description

Label

Unique name for your activity. This name
appears in user-facing views of the playbook.

Description

Brief description of the activity.

Activity definition
Schedule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

769


<!-- page 770 -->
Field

Description

Start rule

Defines when to start the process the activity.
Select one of the following:
◦ When stage starts: Your stage starts
running as soon as the playbook starts.
◦ After specific activities: Your stage starts
running after specified stage(s) have
finished running.
Starts after:

Display order

When there are multiple stages running at the
same time, define the order in which stages
appear during a playbook run.

Note: In Workflow Studio, this can
also be helpful when viewing parallel
activities in Diagram view.
Start with delay

Waits for a certain duration before running
the activity when the start rule is met. For
more information, see Start with delay input
properties .

Restart rules

Defines how the activity runs when the
playbook is restarted.
◦ Skip on restart
◦ Run always
◦ Skip on first run

6. In the Automation tab, fill in the following fields.
Automation tab in the Guided Decision with inputs/outputs activity
Field

Description

Automation

See or open the action, subflow, or flow that
drives the activity.

Inputs

Configure inputs for the action, subflow,
or flow that is driving the activity. Not all
activities require user input. Define the values
of the activity's inputs.

Inputs
Decision tree

Decision tree as one of the steps within a
playbook.

Decision tree version

Active version of the decision tree.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

770


<!-- page 771 -->
Field

Description

Note: The activity supports versioning,
where each activation of the decision
tree builder creates a new version,
and playbook activities continue using
their configured version until manually
updated.
Outputs

Outputs of the action, subflow, or flow that is
driving the activity.

Note: The activity provides a refresh capability that allows you to update to the latest
decision tree version while preserving existing input mappings and adding any new input
fields that were introduced in the newer version.
7. Select Save and close.
8. In the main header, select Activate.
Activating your process publishes it so that it runs when triggered.

Result

The decision tree is added to the playbook. Depending on the context of the case, customer
service agents can access the decision trees from cases on Agent Workspace.
Related topics
Configuring Guided Decisions
Configuring guidances and decision trees
Add Guided Decisions to Service Portal
Create or edit a page to add decision trees to Service Portal so internal users can troubleshoot
their issues.

Before you begin

The decision tree that you want to add to the Service Portal page must exist. For more
information, see Configuring decision trees in Decision Tree Builder.
Role required: sp_admin or admin

About this task

These steps are intended for users with little to no coding experience.

Procedure
1. Navigate to All > Service Portal > Service Portal Configuration.
2. Select Designer.
3. From the Service Portal Designer, either select an existing page or add a new page.
Option

Action

Use an existing page

Select the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

771


<!-- page 772 -->
Option

Action

a. Select Add a new Page.
Add a page

b. Provide the page title and ID.
c. Select Submit

4. Under Layouts, create the area to add widgets by selecting Container and dragging it onto the
page.
5. In the Widgets tab, in the Filter Widget field, search for the Decision tree - Visualiser widget,
then drag the widget to the layout.
6. Select the Edit icon (

).

7. Provide the decision tree ID.
a. On the decision tree record, select the Additional actions icon (

).

b. Select Copy sys_id from the menu.
8. Select Save.

What to do next

If you want the decision tree theme to match the Service Portal, you can apply a UX theme to
change your existing theme. For more information, see Match the theme of the decision tree
component with the Service Portal page.
Related topics
Configuring Guided Decisions
Configuring guidances and decision trees
Match the theme of the decision tree component with the Service Portal page
Customize the theme of the decision tree component to match the Service Portal theme.

Before you begin

A variant UX theme to match the theme of the decision tree component with the Service Portal
theme must exist. For more information, see Manage the visual style of UI Builder experiences

.

Role required: sp_admin or admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the Search field, enter ux_portal_theme_to_uib_theme_mapping and select the
record.
3. Copy the value of the Name field from the ux_portal_theme_to_uib_theme_mapping record.
The Name field contains the system property name appended with the existing portal theme
ID, for example,
ux_portal_theme_to_uib_theme_mapping.f548bd34845a1110f87767389929c667.
4. Select New to create a system property.
5. In the Suffix field, paste the copied value.
6. Provide the UX theme ID of the theme that you want to apply in the Value field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

772


<!-- page 773 -->
a. On the UX theme record, select the Additional actions icon (

).

b. Select Copy sys_id from the menu.
7. Select Update.

Result

The Service Portal theme is applied to the decision tree component.
Playbooks in Customer Service Management
Playbooks provide customer service agents with step-by-step guidance for resolving specific
types of cases. Agents can follow a playbook in CSM Configurable Workspace and complete
guided activities to resolve customer issues.
Playbook with horizontal stages

Playbook overview
A playbook
is an end-to-end workflow that includes the stages, steps, and guidance to lead
users through a business process. A playbook visualizes a workflow in a task-oriented view and
guides users through sequences of tasks.
A playbook takes a workflow and breaks it into multiple stages. Each stage in a playbook
includes a logical group of sequential activities for an agent to complete. Stages can also
include automated activities, such as sending an email to a customer when a stage or activity is
complete.
Playbooks include:
• A series of steps that a user must complete in order to achieve a particular goal and the
necessary guidance for completing those steps.
• One or more stages, or groups of tasks, and sequences of activities within each stage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

773


<!-- page 774 -->
Playbooks are created in the Workflow Studio
application. Pages that display playbooks
in a workspace are created in the UI Builder
application. Agents use playbooks in CSM
Configurable Workspace to complete activities. End users can also use playbooks from service
portals to create requests and provide information. For more information, see the following
sections in this topic:
• Playbook users and tools
• Configuring and configuring playbooks

Playbook users and tools
The following table describes the different user roles that are involved in the creation,
configuration, and use of playbooks. It also describes the tools and applications used by each of
those roles.
Playbook user roles and tools
User role

Tool / application

Playbook admin

Uses the Workflow Studio
and monitor playbooks.

[playbook.admin]

application to author, configure,

Workflow Studio is the design environment where playbook
owners build playbooks.
Playbook experience admin
[playbook_experience.admin]
UI Builder admin
[ui_builder_admin]

Uses the Playbook Experience
application to create playbook
experience records. These records define how playbook
activities appear within a playbook.
Uses the UI Builder
application to create or customize pages
that display playbooks in CSM Configurable Workspace.
UI Builder is a web user interface builder. Users with the UI
Builder admin role use the tool to create pages, which are
collections of components that make up a workspace user
interface.

Note: Playbook page templates are available for UI
Builder admins to use as a starting point for creating
playbook pages.
Customer service agent
[sn_customerservice_agent]

Uses playbooks in CSM Configurable Workspace to complete
activities and resolve cases.
The playbook runtime experience is where end users, such as
agents, follow the playbook to complete a business process.

End user

Uses playbooks create cases, provide requested information,
and complete assigned tasks. For more information, see
[sn_customerservice.customer] Playbooks for portals.

Creating and configuring playbooks
Creating and configuring a playbook involves different tools and applications. Playbooks are
created using the Workflow Studio application. Some of the configuration for a playbook is
performed in UI Builder as part of the playbook component configuration. Additional settings
can be configured in the playbook experience record in the Core UI. These settings include
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

774


<!-- page 775 -->
selecting the playbook activity view and configuring playbook stage and activity visibility. For
more information, see Configure Playbooks for Customer Service Management.
Configuration tasks and tools
Tools

Tasks

Workflow Studio

Workflow Studio is the design environment where playbook
owners (users with the playbook.admin role) build playbooks.
For more information, see the following topics:
• Exploring Workflow Studio
• Getting started with Playbooks

Playbook Experience

Playbook experience records define how playbook activities
appear within a playbook.
• Users with the playbook_experience.admin role can create
playbook experience records.
• Users with the ui_builder_admin role can select a playbook
experience when adding a playbook to a page in UI Builder.
The playbook experience record includes settings for the
playbook stage and activity visibility, such as hiding or
displaying playbook activities based on user role or activity
state.

UI Builder

Users with the ui_builder_admin role can use UI Builder
to create or customize pages, which are collections of
components that make up a workspace user interface. Some
of the playbook configuration tasks in UI Builder include:
• Selecting a playbook activity view: The activity view
determines how the stages and activities are displayed in
the playbook. Select a playbook activity view in the playbook
component configuration in UI Builder.
• Selecting a playbook experience: The playbook experience
determines how the system renders a playbook in a
workspace. You can use playbook experiences to customize
the look and feel of a playbook, map user actions, and
override activities. Select a playbook experience when
adding a playbook to a page in UI Builder.
• Configuring a playbook to use compact mode: Compact
mode moves the playbook to the contextual side panel.
Agents can complete playbook activities in the side
panel while viewing other information in the record page.
Configure a playbook to use compact mode in the playbook
component configuration in UI Builder.

Using playbooks
Customer service agents can use the guidance available with playbooks to complete the tasks
and activities that are needed to resolve specific types of cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

775


<!-- page 776 -->
A playbook includes multiple stages and each stage includes one or more activities for an agent
to complete. When using a playbook, agents can:
• View the stages and activities.
• Select an activity and perform the work necessary to complete that activity.
• Mark an activity as complete and move to the next activity or stage.
• Complete the stages and activities necessary to resolve the case.
For more information, see Using Playbooks for Customer Service Management.

Playbook applications
Several applications are available that enable you to create and use playbooks with Customer
Service Management. See Playbook plugins for detailed plugin and dependency information.
Customer Service Management playbook applications
Application

Description

Playbooks for Customer Service Management

Use this application to create or customize
playbooks based on your individual business
needs. Create playbooks that support case
types or the base customer service case.

Case Playbook for Onboarding

Use this application to manage the process
for taking on new customers or enrolling
customers in new products. An onboarding
case captures the details of the new customer,
including their selection of products and
services.

Case Playbook for Complaints

Use this application to manage the process for
handling customer complaints. A complaint
case captures the details of the problem
reported by the customer and the expected
resolution.

Case Playbook for Product Support

Use this application to guide agents through
the steps that are needed to resolve product
issues. A product support case captures
information about the customer, the product,
and the reported issue.

Playbook plugins
The Playbooks for Customer Service Management plugin (sn_csm_playbook) is available from
the ServiceNow Store. This plugin requires the following plugins:
• Customer Service (com.sn_customerservice)
• Dynamic Related Records (com.snc.uib.sn_dyn_rel_rec)
• Playbook Experience (com.playbook_experience)
The following playbook applications are available for use with Customer Service Management
and are available from the ServiceNow Store:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

776


<!-- page 777 -->
• Case Playbook for Onboarding
• Case Playbook for Complaints
• Case Playbook for Product Support
These playbooks require the following plugins:
• Playbooks for Customer Service Management (com.sn_csm_playbook)
• Customer Service Case Types (com.snc.csm_case_types)

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Related topics
Interact with Playbook
Configure Playbooks for Customer Service Management
Using Playbooks for Customer Service Management
Playbook layout and features
A playbook includes several features that agents use to complete activities and resolve cases,
including the playbook stage picker, activity picker, and activity viewer. Record pages created
in UI Builder determine how these playbook features are displayed in CSM Configurable
Workspace.
UI Builder page templates and record pages that include horizontally and vertically oriented
playbooks are available with the Playbooks for Customer Service Management application
[com.sn_csm_playbook].
For more information about using these record pages, see the following topics:
• Case playbook: horizontal stages record page
• Case playbook: vertical stages record page

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

777


<!-- page 778 -->
Playbook with horizontal stage picker

Playbook layout and features
Callout

Playbook feature

Description

1

Playbook name

The name of the playbook appears in the page
header.

2

Stage picker

Playbooks include either a horizontal or
vertical stage picker, which gives the agent a
complete view of the playbook and where they
are within the playbook.
• The horizontal stage picker displays the
playbook stages across the top of the record
page below the page header. Select a stage
to see the activities in the activity picker.
• The vertical stage picker displays the
playbook stages and activities on the side
of the record page. Select a stage to expand
the stage and display the included activities.

3

Activity picker

The activity picker displays the activities
for the current stage. Each activity has an
indicator that shows the activity state:
• Completed
• In progress
• Remaining
With the horizontal stage picker, you can
expand or collapse the list of activities for the
current stage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

778


<!-- page 779 -->
Playbook layout and features (continued)
Callout

Playbook feature

Description

With the vertical stage picker, you can expand
each stage to see the activities within that
stage.
Selecting an activity displays the details in the
activity viewer.
4

Activity viewer

The activity viewer displays the selected
activity. This is the main work area where
an agent performs the work necessary to
complete the current activity.

5

Activity cards

Activity cards display the details about
the current activity in the activity viewer.
Depending on the type of activity, the activity
cards can display information such as form
data, task status, SLA timers, or attachments.
Agents use the cards to complete the work
for each activity, such as filling in forms,
completing checklists, completing tasks, or
adding attachments.

Playbook activity view
The activity view determines how the stages and activities are displayed in the playbook.
• Focused: Displays the stages and activities in the playbook lifecycle panel and the current
activity in the playbook work area.
• Stacked: Displays the stages in the playbook lifecycle panel and cards for each of the
activities in the current stage in the playbook work area.
The system administrator can configure the playbook activity view in UI Builder. For more
information, see Select a playbook activity view.

Playbook stages
Playbooks contain one or more stages and stages contain one or more activities. The current
stage in a playbook is highlighted and the activities in that stage appear in the activity picker.
The stages in the stage picker include icons that indicate the stage status:
• A check mark

indicates that the stage is complete.

• A pen icon

indicates the current stage.

• A lock icon
complete.

indicates that a stage is locked and can’t be started until the previous stage is

There are two versions of stage picker: horizontal and vertical.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

779


<!-- page 780 -->
• The horizontal stage picker displays across the top of the UI and shows persistent information
in the left panel. With the horizontal stage picker, you can expand or collapse the list of
activities for the current stage.
• The vertical stage picker displays in the left panel. With the vertical stage picker, you can
expand each stage to see the activities within that stage.

Playbook activities
Activities are the individual tasks that an agent needs to complete in order to complete a
playbook stage. The activity picker displays the activities for the current playbook stage. Each
activity in the activity picker has an indicator that shows the activity state:
• Complete (

)

• In Progress (
• Pending (

)
)

• Skipped
Selecting an activity displays the details of that activity in the activity viewer.

Navigating playbook stages and activities
Agents can use the stage picker and activity picker to navigate between stages and activities
as assigned roles or activity security configurations permit. For example, activities such as case
tasks can be assigned to different users. A user with the case task agent role can only see the
case tasks that are assigned to them.
When an agent opens a record that uses a playbook, it opens to the current stage and highlights
the current activity. For stages with multiple activities, the current activity is the first available
activity. An available activity is an activity that has a state other than Complete.
When an agent selects an available activity, it becomes the current activity. An agent can
navigate stages and activities in any order as long as there is at least one available activity to
select.

Note: The playbook configuration determines the visibility and accessibility of pending
stages and activities. For more information, see Configure playbook stage and activity
visibility.

Using keyboard navigation in a playbook
Use the following keyboard keys to navigate playbook stages and activities.
• Tab key: Use the Tab key to initiate navigation and move between stages, activities, and the
playbook work area.
• Arrow keys: Use the left, right, up, and down arrow keys to navigate the fields on a playbook
activity card.
• Enter key: Press the Enter key to select buttons on a playbook activity card.

Filtering playbook activities
Agents can filter playbook activities and see those activities that match the filter conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

780


<!-- page 781 -->
• To filter playbook activities, select the filter icon (
states:

) and select one or more of the following

◦ Complete
◦ In Progress
◦ Pending
◦ Skipped
• To clear the filter, select the filter icon again and remove the selections.

Configuring stage and activity visibility
Users with the admin role can configure the visibility of playbook stages and activities, including:
• Showing or hiding stages and activities that are pending.
• Showing or hiding stages and activities where a user does not have access.
The administrator configures these settings in the Playbook Experience record. For more
information, see Configure playbook stage and activity visibility.
Playbook capabilities
The capabilities provided by playbooks enable agents to quickly resolve customer issues.
These capabilities work together to provide agents with a better overall experience when using
playbooks to resolve customer issues.
Playbook capabilities
Capability

Create a record using a
playbook

Description

Customer service agents can create a record using a playbook
instead of a record form. Creating a record using a playbook
opens the playbook and initiates the first activity. The agent
completes this activity as part of the record creation.
For example, an agent can create a case and gather the
necessary information about the customer and the issue as
the first activity in the playbook.
For more information about configuring this feature, see
Playbook record generator .

See the entire end-to-end
workflow using the stage
picker and activity picker

The stage picker and activity picker enable agents to see the
following information:
• The end-to-end workflow.
• The stages in the playbook.
• The activities in the current stage.
• Stage and activity progress indicators.
• Details of the current activity displayed in the activity viewer.

Use the contextual side panel
to view additional information

Playbooks can display the following information in the
contextual side panel:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
Playbook capabilities (continued)
Capability

Description

• Activity stream
• Ribbon information such as the case overview, customer
details, timeline, and SLAs
• Dynamic related records (see below for more information)
• Related Items tab
For more information, see:
• Using the activity stream in the contextual side panel
• Viewing ribbon information in the contextual side panel
• Viewing related records in the contextual side panel
• Related Items
• Administering Activity stream for Configurable Workspace
Use the contextual side panel
to display dynamic related
records

Display records in the contextual side panel that dynamically
change based on the context of the current record or playbook
activity.
For more information, see Dynamic related records.

Use a playbook in compact
mode

View the SLA widget on
playbook activity cards

Compact mode displays the playbook in the contextual
side panel. Agents can complete playbook activities in the
contextual side panel while viewing other information on the
record page.
Activity cards in the playbook activity viewer can display an
SLA widget in the upper right corner. The widget appears on
the activity card when the playbook activity has an SLA. This
includes activities in the following stages:
• Triage
• Research
• Respond
The color of the widget indicates the time remaining for the
SLA:
• Green: 0–50%
• Yellow: 50–75%
• Orange: 75–99%
• Red: 100% or breached

Playbook terminology
Use the following list of terms to gain an understanding of playbook structure, tools, and
configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
A playbook is an end-to-end workflow that includes the steps, strategies, and guidance to lead
users through a business process. A playbook:
• VISUALIZES a workflow in a task-oriented view and guides users through sequences of tasks.
• INCLUDES a series of steps that a user must complete to achieve a particular goal.
• PROVIDES guidance for completing those steps.

Playbook structure
A playbook contains one or more stages, or groups of tasks, and sequences of activities within
each stage. A playbook also includes a trigger. The structure of a playbook is created in Workflow
Studio .
Playbook structure
Term

Definition

Trigger

A trigger determines when a playbook starts running. Each
trigger has a type and conditions that, when met, start running
an activated playbook.
The trigger type represent a record operation, such as when a
record is created or updated.
Trigger conditions determine when and how a trigger is fired.
Triggers

Stage

.

A stage is a sequence of activities in a playbook that are
grouped in a logical way. A playbook can contain one or
more stages and each stage includes one or more activities
for a user to complete. Stages can also include automated
activities.
Stages

Activity

are created in Workflow Studio

are added to a playbook in Workflow Studio

.

An activity is one step in the overall business process
represented in a playbook. Activities are the tasks, steps, or
actions that a user takes to complete a playbook. Activities are
grouped in stages and are sequenced in a logical order. Users
can complete or skip manual activities. Activities can also be
completed automatically.
Activities

are added to playbook stages in Workflow Studio

.

Playbook UI components
Customer service agents interact with playbooks in CSM Configurable Workspace. The record
pages that display playbooks in a workspace are created or customized in UI Builder . Different
components make up the playbook record pages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
Playbook UI components
Term

Definition

Playbook picker

A playbook picker can be used to select a playbook in the user
interface. A playbook picker is available if there are multiple
playbooks on a record.

Stage picker

A stage picker displays the stages in a playbook. It gives
the user a complete view of the playbook and where they
are within the playbook. A stage picker can be oriented
horizontally or vertically and includes icons that indicate the
stage status.

Horizontal stage picker

A horizontal stage picker displays the playbook stages
horizontally at the top of the record page and highlights the
current stage. It displays activities within the current stage in
the activity picker.

Vertical stage picker

A vertical stage picker displays the playbook stages and
activities vertically on the side of the record page. It highlights
and expands the current stage to display the activities within
that stage.

Activity picker

The activity picker displays the activities in the current stage. It
includes indicators that show the activity state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
Playbook UI components (continued)
Term

Activity viewer

Activity card

Definition

The activity viewer displays the details of the current activity.
This is where a user performs the work necessary to complete
the current activity.
An activity card displays the details of the current activity.
Users use the cards to complete the work for each activity.

Playbook page templates
Use playbook page templates to create pages and page variants for use in CSM Configurable
Workspace. These pages and page variants provide agents with either horizontal or vertical
playbooks that they can use to complete tasks and resolve cases.
The following page templates are available with the Playbooks for Customer Service
Management application [com.sn_csm_playbook]. For more information, see Playbook plugins.
Playbook page templates
Page template

Description

Case playbook: horizontal
stages

Includes a horizontal stage picker that displays across the top
of the UI and shows persistent information in the left panel.

Case playbook: vertical stages Includes a vertical stage picker that displays in the left panel.
This stage picker can track overall progress on the UI in a
vertical view.
Considerations for using these page templates include the number of stages that appear in the
picker and the length of the stage names. For example, longer stage names in the horizontal
playbook can be truncated.

Note: By default, the playbook page templates aren’t active. To activate a page template,
see Activate a playbook page or page variant.

Case playbook: horizontal stages page template
The Case playbook: Horizontal stages page template includes a horizontal stage picker across
the top of the page and an activity picker on the left side. For details about the components
included in this template, see Playbook template components.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
Case playbook: horizontal stages page template

Case playbook: vertical stages page template
The Case playbook: Vertical stages page template includes a vertical stage picker on the left side
of the page. For details about the components included in this template, see Playbook template
components.
Case playbook: vertical stages page template

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
Playbook page template components
The playbook page templates include modular components that enable you to quickly build
playbook pages in UI Builder .
Case playbook page template components
Component

Description

Page header

The page header includes record information that is displayed
in the primary and secondary fields:
• The primary field displays the short description of the
record.
• The secondary fields display the additional record
information such as the priority, state, and contact or
consumer details.
You can configure the fields that appear in the page header.
For more information, see Customize the page header for a
playbook page.

Action bar

The action bar contains the actions that are available to users
while working on case records. The available actions are
determined by factors such as the user role, case state, and
other attributes.
• Record Details: Displays the record details.
• Playbook Details: Displays the playbook details.
• In-progress actions: Provides a list of minimized modeless
dialogs and includes a badge that displays the number of
items in the list. From this list, an agent can select an item to
open the minimized comment, work note, or email.
• Create: Create records such as requests, incidents, and
work orders.
• Compose: Compose comments, work notes, and emails in
modeless dialogs.
• Save: Save changes to the case record.
• More Actions: Perform additional actions such as proposing
a major case or reporting a knowledge gap.
You can configure the actions that are included in the action
bar. For more information, see Customize UI actions for a
playbook page.

Playbook name

In the Case playbook: horizontal stages template, the playbook
name appears in the form header above the horizontal stage
picker.
In the Case playbook: vertical stages template, the playbook
name appears at the top of the vertical stage picker.

Stage picker

The playbook templates include either a horizontal or vertical
stage picker, which gives the agent a complete view of the
playbook and where they are within the playbook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
Case playbook page template components (continued)
Component

Description

• The horizontal stage picker displays the playbook stages
across the top of the record page below the page header.
Select a stage to see the activities in the activity picker.
• The vertical stage picker displays the playbook stages and
activities on the side of the record page. Select a stage to
expand the stage and display the included activities.
The stages in the stage picker include icons that indicate the
stage status:
• A check mark
• A pen icon

indicates that the stage is complete.
indicates the current stage.

• A lock icon
indicates that a stage is locked and can’t be
started until the previous stage is complete.
Activity picker

The activity picker displays the activities for the current stage.
Each activity has an indicator that shows the activity state:
• Completed
• In progress
• Remaining
With the horizontal stage picker, you can expand or collapse
the list of activities for the current stage.
With the vertical stage picker, you can expand each stage to
see the activities within that stage.
Selecting an activity displays the details in the activity viewer.

Activity viewer

The activity viewer displays the selected activity. This is the
main work area where an agent performs the work necessary
to complete the current activity.

Activity cards

Activity cards display the details about the current activity
in the activity viewer. Depending on the type of activity, the
activity cards can display information such as form data, task
status, SLA timers, or attachments.
Agents use the cards to complete the work for each activity,
such as filling in forms, completing checklists, completing
tasks, or adding attachments.

Contact or consumer lookup

The lookup component enables agents to look up contact or
consumer information and display that information in a record
card. These cards display customer information and provide
quick access to details such name, email, and phone. The
contact record card also includes account information.
Agents can use the lookup component to do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
Case playbook page template components (continued)
Component

Description

• Search for a contact or consumer.
• Link or unlink a contact or consumer record.
• Edit and save the information in a linked contact or
consumer record.
• Select a reference field on a record card, such as a contact
or consumer name, to open the reference in a sub-tab.
• Select an email address on a lookup card to open a draft
email in the email composer in a sub-tab.
• Select a phone number on a lookup card to make a call.
For more information, see Playbook lookup component.
Case summarization

The case summarization component appears below the
lookup component. When an agent opens a case record, the
component is collapsed and in the default state.
Agents can use this component to do the following:
• Summarize case details.
• Post the summary to the activity stream.
• Refresh the summary.
The case summarization component requires the Now Assist
for Customer Service Management (CSM) application to be
activated and configured. For more information, see Playbook
case summarization component.

Record details

The case details component includes collapsible sections for:
• Case
• Notes
• Closure Information
• Related Records
This component also includes a menu with additional form
actions, such as personalizing the form, exporting data, and
copying the URL.
Agents can view case details by selecting the Record Details
button in the action bar.

Contextual side panel

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the Case playbook: horizontal
stages page includes the following tabs.
• Activity Stream
• Agent Assist
• Search

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
Case playbook page template components (continued)
Component

Description

• Related Items
• Attachments
• Response Templates
• Email Templates
• Templates
• Record Information
For more information about the tabs in the contextual side
panel, see Playbook contextual side panel component.
Activity stream

The activity stream component displays a list of activities
occurring on a case record. This list can be collapsed to
provide a quick view of case activities or expanded to provide
more detail about individual activities.
For more information, see Playbook activity stream
component.

Note: The Case playbook: horizontal stages page uses
modeless dialogs for composing comments, work notes,
and emails.
Compose email and Compose A modeless dialog is a window that overlays the main window
comments modeless dialogs
content. You can use modeless dialogs to create and post
comments and work notes to the activity stream and to
compose and send emails as you work through the stages and
activities in a playbook. For more information, see Playbook
modeless dialogs.

Using multiple form controllers
The multiple form controller feature enables page authors to add multiple form components to UI
Builder templates. This feature is available with the following playbook page templates:
• Case playbook: horizontal stages
• Case playbook: vertical stages
With this feature, page authors can:
• Integrate inline tabs with forms that use dedicated form controller instances, eliminating the
need for page collections and enhancing UI Builder usability and runtime performance.
• Enhance record pages with custom component bundles that include a form controller.
• Incorporate modals containing forms into record pages, facilitating the transmission of
notifications and form updates back to the main page.
For more information about using multiple form controllers, see Add forms to UI Builder pages

.

Playbook activity stream component
The activity stream component displays a list of activities occurring on a case record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
The activities in the list can be collapsed or expanded. When collapsed, the agent can quickly
scan the list to get an overview of case activities. When expanded, the agent can see detailed
information on individual activities.
Playbook activity stream component

Note: The activity stream uses Modeless dialogs for composing comments, work notes,
and emails.

Activity stream Case and Task tabs
The activity stream component includes tabs for tasks and cases. The Task tab appears when an
agent is working on a playbook activity whose associated record is a case task.

Activity stream tiles
The activities in the activity stream are represented by tiles that use icons and colors to indicate
the activity type. These activity types include:
• Comment
• Work note
• Attachment
• Field change
• Email sent or email received
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
• Chat discussion
• Custom icon
When collapsed, each activity in the list includes:
• A tile that represents the activity type.
• The name of the user responsible for the activity.
• A brief one-line summary of the activity.
• A badge that indicates if an activity is internal or external.
• A relative timestamp.
• An expand button that the agent can use to see a detailed summary of the activity.
When expanded, each activity also includes:
• A full date and timestamp.
• An action label that describes the type of activity.
• For comments and work notes, the full text of the comment or work note.
• For field updates, the field name and the updated field value.
• For emails, detailed message information.
• For attachments, a small preview of the attached file.
• For chats, a sidebar chat card.
Playbook related items component
The related items component provides access to the case-related lists.
The related items component uses an expandable accordion format. Agents can expand the
desired lists to see the related items. This component also displays an icon with the number of
items in a list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
Playbook related items component

Related lists include the following actions:
• Create: Opens an empty record in a subtab that the agent can use to create an item.
• View all: Opens a list of records in a subtab.
• Show more: Is displayed for lists that have more than five items.
The items in an expanded list are displayed as cards. An expanded list shows one card for each
item in the list.
• Agents can open an item in a subtab.
• If a list has more than five items, it includes a Show more option.
Playbook lookup component
The playbook lookup component enables agents to look up contact and consumer records.
Using the lookup component, agents can do the following:
• Look up a contact or consumer by name, phone number, or email address. As the agent types
characters in the search box, matching information appears in record cards below the search
box.
• Select a contact or consumer after searching by selecting the link icon on the desired record
card. The selected record card replaces the lookup component.
Agents can perform the following actions from a record card:
• Remove a linked contact or consumer from a case record by selecting the more actions icon
and then selecting Unlink.
• Edit and save a linked contact record by selecting the pencil icon, editing the information for
the contact, and selecting Save.
• Select a reference field on a lookup card to open the referenced record in a sub-tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
• Select an email address on a lookup card to open to open the email composer in a sub-tab.
• Select a phone number on a lookup card to make a phone call.

Note: An account lookup component is also available. To display this component, turn off
the Hide component setting for this component in UI Builder
Component visibility section of the Configure tab.

. This setting is located in the

Playbook contextual side panel component
The playbook contextual side panel component provides agents with access to tools and
information such as the activity stream, templates, and attachments.
The contextual side panel component provides agents with the following functionality.
Tabs in the contextual side panel
Tab

Description

Activity Stream

The activity stream displays a list of activities occurring on
a case record. For more information, see Playbook activity
stream component.

Agent Assist

Agent assist provides agents with a list of resources that show
possible solutions for the current record. This list is based on
the record short description.

Search

The Search tab includes AI search functionality. Agents can
use AI search to find relevant resources or resolutions for
customer issues.
The search feature displays an initial set of search results
based on the text in the case short description. This initial set
of results includes knowledge articles. Agents can also enter
different search keywords and repeat the search.
From the list of search results, agents can do the following:
• Select a source to see search results of that type.
• Filter the list of search results.
• Sort the list of search results.
• Open the search results in full view in a record sub-tab.
• Take the following actions:
◦ View and attach article
◦ Perform other actions such as reading articles in full
view, flagging articles, or marking articles as helpful or
unhelpful.
• View successful actions by selecting the Actions history
icon.
For more information, see Use AI search in Recommended
Actions to resolve cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
Tabs in the contextual side panel (continued)
Tab

Description

Note: Using Recommended Actions in the contextual
side panel requires the Recommended Actions
application (sn_cs_nb_action) which is included with the
CSM Configurable Workspace application.
Related Items

The Related Items tab provides access to the case-related
lists.
The Case playbook: horizontal stages page incorporates
related list functionality into the contextual side panel. These
lists appear in an accordion format that agents can expand
and collapse as needed.
An indicator displays the number of records available in a
related list. When expanded, the records in a related list are
displayed in card format.
For more information, see Playbook related items component.

Attachments

The Attachments tab provides access to case-related
attachments. From this tab, agents can view and download
attachments.

Response Templates

The Response Templates tab provides access to available
response templates. These templates contain reusable
messages that agents can copy to provide quick and
consistent messages to customers.

Email Templates

The Email Templates tab provides access to available email
templates. These templates contain default values for fields
that agents can add to email messages. These default values
can include recipients (email addresses in To, Cc, and Bcc),
sender, subject, and text for the message body.
For more information, see Email Templates

.

Templates

The Templates tab provides access to available form templates
which enable agents to automatically populate fields on new
records. Agents can manually apply a template when creating
a new record such as an incident or change.

Record Information

The Record Information tab includes the following cards:
• Overview: Displays relevant information about the case
including the account and contact, the case priority, and the
state.
• Contact: Displays customer information including the name,
title, phone numbers, and email address.
• Timeline: Displays a chronological summary of case
activities, including case state changes and interactions
between the agent and the requester.
• Active SLA: Displays active SLAs for the case, including time
remaining, the SLA state, and any breaches.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
Playbook modeless dialogs
Use modeless dialogs, windows that overlay the main window content, to create and post
comments and work notes to the activity stream and to compose and send emails.
A modeless dialog is a window that appears in a workspace as an overlay on top of the main
window content. This overlay enables users to interact with the window content and the overlay
content at the same time. Agents can use modeless dialogs to do the following while working in a
playbook:
• Create comments and work notes to post to the activity stream.
• Create and send emails and reply to or forward emails.
After opening a modeless dialog, agents can move it around the screen and put it where they
need it. This feature enables agents to reference information from the main window while drafting
text in the overlay window.
The playbook page templates include the following modeless dialogs:
• Compose Activity - for creating and posting comments and work notes
• Compose Email - for creating and sending emails
You can access the modeless dialogs by selecting the Compose button in the action bar and
then selecting one of the following actions:
• Compose Comments
• Compose Email
• Compose Work notes (Private)

Create comments and work notes
Agents can use the Compose Activity modeless dialog to create comments and work notes and
post them to the activity stream. See the following table for more information about creating
these activities.
Using the Compose Activity modeless dialog to create comments and work notes
Task

Description

Create a comment or work note

To create a comment or a work note:
1. Select one of the following actions from the
action bar to open a Compose window:
◦ Compose > Compose Comments
◦ Compose > Compose Work notes
(Private)
2. Add the text to the Compose window.
When creating comments and work notes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


<!-- page 797 -->
Using the Compose Activity modeless dialog to create comments and work notes
(continued)
Task

Description

• Agents can create one draft comment and
one draft work note at a time before posting
the text to the activity stream.
• Agents can open one Compose window at
a time. If an agent opens a second window,
the previously opened window is minimized.
Post a comment or work note to the activity
stream

To post a comment or work note, select one
of the following actions from the Compose
window:
• Post Comment
• Post Work Notes (Private)
The Compose window automatically closes
after the text is posted to the activity stream.
Saving the case record also posts the
comment or work note to the activity stream
and closes the Compose window.

Minimize a Compose window

Composed windows can be minimized and
moved to the In-process Actions menu in the
action bar. Minimized comments and work
notes appear in a list in the In-process Actions
menu.
Compose windows can be minimized in the
following ways.
• Select the Minimize button in the Compose
window header.
• One Compose window can be open at a
time. If an agent opens another Compose
window, the first window is minimized.

Open a minimized Compose window

Select the In-progress Actions menu in the
action bar and then select an item from the list
to open the window.
Items in the In-process Actions menu appear
in a list with the action type (email, comment,
or work note) and an abbreviated title.
• For email, the title is the email subject.
• For comments and work notes, the title is
the first line of text.

Discard a comment or work note

To discard a comment or work note:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
Using the Compose Activity modeless dialog to create comments and work notes
(continued)
Task

Description

1. Select the Close button in the Compose
window header.
2. Confirm the Discard action by selecting
Discard in the confirmation pop-up window.
The system closes the Compose window and
discards the comment or work note.
The following guidelines apply to Compose windows:
• Draft comments and work notes are local to the browser and are cleared if the browser page is
reloaded.
• Comments and work notes stay in sync on the form and in the modeless dialogs.
• The Compose window has a fixed size.

Create emails
Agents can use the Compose Email modeless dialog to create and save email drafts and to send
emails. This feature increases the speed of drafting emails while referencing record information.
Emails that are sent from a Compose Email window are posted to the activity stream. Agents can
reply to and forward emails from the activity stream. See the following table for more information
about creating and sending emails.
Using the Compose Email modeless dialog to create and send emails
Task

Description

Create and send an email

To create and send an email:
1. Select Compose > Compose Email from
the action bar to open a Compose Email
window.
The system automatically applies the email
template with the lowest order to the new
email.
2. Fill out the fields:
a. To, Cc, Bcc
b. Subject
c. Email body
3. Select Send email.
When creating emails and sending emails:
• The Compose Email window automatically
closes after the email is sent.
• The email is posted to the activity stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
Using the Compose Email modeless dialog to create and send emails (continued)
Task

Description

Reply to or forward an email

To reply to or forward an email:
1. Expand an email in the activity stream.
2. Select one of the following buttons to open
the Compose Email window:
◦ Reply
◦ Reply all
◦ Forward
3. Add the desired text.
4. Select Send email.
The Compose Email window automatically
closes after the email is posted to the activity
stream.

Add a link to a knowledge article

To add a link to a knowledge article:
1. Select the Agent Assist tab in the contextual
side panel.
2. View the list of knowledge articles or search
for an article.
3. Select the More Actions menu on the
knowledge article card.
4. Select Add link in email.
The system adds the title of the article with a
link in the body of the email.

Apply a template to an email

To apply a template to an email:
1. Open the Email Templates tab in the
contextual side panel.
2. Select the More Actions menu on the
desired email template.
3. Select Apply template.
The system adds the contents of the template
to the body of the email.

Note: When you create a new email, the
system automatically applies the email
template with the lowest order.
Minimize a Compose Email window

Minimized emails appear in a list in the Inprocess Actions menu in the action bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
Using the Compose Email modeless dialog to create and send emails (continued)
Task

Description

Select the Minimize icon (
) in the Compose
Email window header to move the email draft
to the In-progress Actions menu.
Open a minimized Compose Email window

Select an item from the In-progress Actions
menu to open the Compose Email window.
Items in the In-process Actions menu appear
in a list with the action type (email, comment,
or work note) and an abbreviated title.
• For email, the title is the email subject.
• For comments and work notes, the title is
the first line of text.

Maximize a Compose Email window

Select the Maximize icon (
) in the Compose
Email window header to expand the Compose
Email window to the full screen.
Select the Maximize icon again to exit the
Maximize mode.

Open a draft email in a sub-tab

Select the Pop out icon ( ) in the Compose
Email window header to open the draft email in
a sub-tab.
The Compose Email window closes when the
email opens in the sub-tab.

Close a Compose Email window

Select the Close icon (
Email window header.

) in the Compose

The system saves the text as a draft email and
closes the Compose Email window.
Select an email draft from the Draft Emails
related list

1. Select the Related Lists tab in the contextual
side panel.
2. Expand the Draft Emails related list.
3. Select the Open draft icon on the desired
draft email card.
The system opens the selected draft email in a
sub-tab.

Modeless dialog guidelines
The following guidelines apply to the Compose Email window:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
• An agent can create multiple email drafts.
• An agent can have one Compose Email window open at a time. The system displays a
message if an agent tries to open another Compose Email window while the first Compose
Email window is still open.
• An agent has to manually close a Compose Email window before opening a new window.
• The Compose Email window can be resized.
Playbook case summarization component
The playbook case summary component provides agents with a summary of a customer service
case, including the issue and the actions taken. Agents can generate summaries to understand
case context and post summaries to the case work notes.
The case summarization component appears below the lookup component on the playbook
page templates. Upon first opening a case, agents see that the component is collapsed and in
the default state.
Using this component, agents can:
• Select Summarize to create a summary of the case details.
• Select Share to work notes to copy the summary text to the activity stream.
◦ Review the summary text in the Share to work notes popup window and modify the text as
needed.
◦ Select Save to work notes on the popup window to add the text to the activity stream.
• Select the refresh icon in the component footer to refresh the text and get the latest summary.

Note: If the case does not contain enough text to summarize, the system displays the
following message: "This case doesn't have the minimum number of words required for
summarization yet."
To use the case summarization component with the playbook page templates, activate the
Now Assist for Customer Service Management (CSM) application and configure the case
summarization skill in the Now Assist Admin console. For more information, see:
• Activate Now Assist for Customer Service Management (CSM)
• Configure the case summarization skill in the Now Assist Admin console.
Playbook pages
Use playbook pages in CSM Configurable Workspace so that your agents can view the stages
and activities in a playbook, work on activities, and have quick access to in-context information.

Overview of templates, pages, and page variants
Pages provide the base structure for how the system displays record information in CSM
Configurable Workspace. You can create and customize pages with UI Builder , a web user
interface builder.
A page template is a pre-defined page configuration. When you create a page in UI Builder, you
can select a page template as a starting point. You can also create a page from scratch or by
copying another page and then customizing the page to meet your needs.
A page variant is a version of a page that includes unique settings such as the audience,
conditions, and page order. For more information about templates, pages, and page variants, see
Creating pages and page variants.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


<!-- page 802 -->
Pages and page variants can also include playbooks, which are created in Workflow Studio. A
playbook provides step-by-step guidance for resolving a specific type of case. The workflows
that are associated with a specific type of case and the activities that need to be completed to
resolve cases of this type are detailed in the playbook.

Playbook pages
The Playbooks for Customer Service Management plugin provides the following playbook pages:
• Case playbook: horizontal stages page
• Case playbook: vertical stages page
Additional CSM playbook applications provide playbook pages that you can activate and use
with case types in CSM Configurable Workspace.
Playbook applications and playbook pages
Application

Page variant

Description

Case Playbook for
Complaints v5.0

Complaint case
process page

Includes a horizontal stage picker that
provides an end-to-end view of the complaint
process.

Case Playbook for
Onboarding v5.0

Onboarding case
process page

This playbook page includes a horizontal
stage picker at the top of the record
that provides an end-to-end view of the
onboarding process.

Case Playbook for
Product Support v4.0

Product Support
process page

This playbook page includes a horizontal
stage picker at the top of the record that
provides an end-to-end view of the product
support process.

For more information, see Playbook plugins.

Note: By default, playbook pages are read-only. To use a playbook page, activate the page
and set the page order.

Benefits of using playbook pages
Resolving customer issues or requests often involves the execution of tasks across multiple
users, departments, and systems. Different users are responsible for different tasks within the
overall resolution process. Using playbooks provides the following benefits:
• An experience that is tailored to customer service agents and other users.
• Visibility into the overall resolution process, the current stage in the process, and the activities
that need to be completed within that stage.
• Access to in-context information.

Configuring playbook pages
The following table includes configuration tasks for playbook pages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

802


<!-- page 803 -->
Playbook page configuration tasks
Task

Description

Activate a playbook page or page variant

Activate a playbook page or page variant and
set the page order.

Note: Some playbook pages and page
variants are not active by default.
Customize the page header for a playbook
page

Configure the page header for a playbook
page. The page header includes a primary
value and several secondary values. These
fields can provide case, account, and contact
information at a glance.

Customize UI actions for a playbook page

Configure the UI actions to display in the
action bar for a playbook page.

Customize content in the left side panel for a
playbook page

Add custom components in the side panel. By
default, this panel includes the Customer 360,
Timeline, and Active SLA components.

Customize tabs in the contextual side panel
for a playbook page

Add or remove the tabs from the contextual
side panel. Agents can use these tabs to
perform tasks such as adding attachments
and viewing recommendations.

Customize the dynamic related records for a
playbook page

Configure the Dynamic Related Records
feature to display the related records in the
contextual side panel.

Configure the app route to use an existing
subpage

Create an app route to make an existing page
a part of the page collection.

Configure an optional activity for a playbook

Configure an optional activity in Workflow
Studio at various stages in a playbook so that
agents and fulfillers can insert an activity when
they are using the playbook.

Set up a record generator for case type

Create a record for a case type as the first
step in a playbook by using a playbook record
generator.

Configure email templates in Configurable
Workspace

Configure new email templates to enable
agents to create emails for common issues.

Using playbook pages
Playbooks enable your agents to view and complete their tasks more efficiently.
Playbook user tasks
User task

Description

Create a record using a playbook

If a playbook is configured to use the playbook
record generator feature, an agent can create
a record by using a playbook activity. Creating
a record opens the playbook and initiates the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

803


<!-- page 804 -->
Playbook user tasks (continued)
User task

Description

first activity, which is to guide an agent through
the record creation process.
After saving the case, an agent moves to the
next activity in the current stage or to the first
activity in the next stage.
Resolve a case using a playbook

Opening a case takes the agent to the first
open assigned activity. An agent can do
the following actions while working on the
activities in a playbook:
• View the entire playbook process in the
horizontal stage picker.
• View the activities for each stage in the
stacked playbook activity view.
• Use the activity stream in the contextual side
panel
• Filter activity cards.
• Select an activity and perform the work
required in the main work area.
• View and update the case details by using
the View Details button.
• View the persistent contextual information in
the left side panel, such as the account and
contact.
• View the related list tabs in the Dynamic
related records component in the contextual
side panel.
• Access information in the contextual side
panel, including the activity stream, form
ribbon, Agent Assist, Dynamic related
records, attachments, and templates.
• Create tasks, compose email, and add
worknotes.
• Open reference fields in subtabs under the
session tab.

Add an activity to a playbook

Add optional activities to a playbook stage as
needed.

Summarize case details

Use the Now Assist for CSM case
summarization skill to summarize the case
details and display this information on the
case record.

Compose an email from an email template

Quickly compose emails for common
issues by selecting an email template in the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

804


<!-- page 805 -->
Playbook user tasks (continued)
User task

Description

Compose Email page instead of manually
drafting an email.

Note: For tasks that an agent completes outside of a playbook, the system automatically
updates the playbook activities.
Case playbook: horizontal stages record page
The Case playbook: horizontal stages page is a record page that you can use in CSM
Configurable Workspace. This page includes a playbook with a horizontal stage picker that
displays across the top of the user interface and persistent information in the left panel.
The Case playbook: horizontal stages record page is created from the Case playbook: horizontal
stages template.
The Case playbook: horizontal stages record page is available with the Playbooks for Customer
Service Management v6.0 store application. For more information, see Playbook plugins.

Case playbook: horizontal stages page variant
The Case playbook: horizontal stages page variant is included with the Playbooks for Customer
Service Management v6.0 store application. This variant includes the following settings.
Case playbook: horizontal stages page variant settings
Setting

Description

Active

The Case playbook: horizontal stages page variant is not
active by default. Enabling the Active check box makes the
page variant available to the selected audience.
The Active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.

Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the Case playbook: horizontal stages
page variant is -1.

Conditions

Conditions determine when a page variant is displayed.
The Case playbook: horizontal stages page variant has the
following condition: table=sn_customerservice_case
This condition limits the use of the Case playbook:
horizontal stages page variant to records from the Case
[sn_customerservice_case] table and tables that extend the
Case table.

Audience

The audience determines who can see the page variant.
The Case playbook: horizontal stages page variant does not

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

805


<!-- page 806 -->
Case playbook: horizontal stages page variant settings (continued)
Setting

Description

have an audience. This means everyone with access to the
experience can see this page variant.
For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select Case playbook: horizontal stages.
4. Select Settings at the top of the page.

Case playbook: horizontal stages page components
The Case playbook: horizontal stages page includes the following components.

Component

Description

Page header

The page header includes record information that is displayed
in the primary and secondary fields:
• The primary field displays the short description of the
record.
• The secondary fields display the additional record
information such as the priority, state, and contact or
consumer details.
You can configure the fields that appear in the page header.
For more information, see Customize the page header for a
playbook page.

Record tags

Agents can create multiple tags for a record and then use the
tags to group and organize records.
For more information, see Group and find records using tags in
workspace .

Action bar

The action bar contains the actions available to users while
working on case records. The specific actions are determined
by factors such as the user role, case state, and other
attributes.
• Record details: Displays the record details.
• Playbook details: Displays the playbook details.
• In-progress Actions: Provides a list of minimized modeless
dialogs and includes a badge that displays the number of
items in the list. From this list, an agent can select an item to
open the minimized comment, work note, or email.
• Create: Create records such as work orders, incidents, and
requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

806


<!-- page 807 -->
Component

Description

• Compose: Compose comments, work notes, and emails in
modeless dialogs.
• Save: Save changes to the case record.
• More Actions: Perform additional actions such as proposing
a major case or reporting a knowledge gap.
You can configure the actions that are included in the action
bar. For more information, see Customize UI actions for a
playbook page.
Playbook name

In the Case playbook: horizontal stages page variant, the
playbook name appears in the form header above the
horizontal stage picker.

Stage picker

The Case playbook: horizontal stages page variant includes a
horizontal stage picker, which gives the agent a complete view
of the playbook and where they are within the playbook.
The horizontal stage picker displays the playbook stages
across the top of the record page below the page header.
Select a stage to see the activities in the activity picker.
The stages in the stage picker include icons that indicate the
stage status:
• A check mark
• A pen icon

indicates that the stage is complete.
indicates the current stage.

• A lock icon
indicates that a stage is locked and can’t be
started until the previous stage is complete.
Activity picker

The activity picker displays the activities for the current stage.
Each activity has an indicator that shows the activity state:
• Completed
• In progress
• Remaining
With the horizontal stage picker, you can expand or collapse
the list of activities for the current stage.
Selecting an activity in a stage displays the details in the
activity viewer.

Activity viewer

The activity viewer displays the selected activity. This is the
main work area where an agent performs the work necessary
to complete the current activity.
Activity cards display the details about the current activity
in the activity viewer. Depending on the type of activity, the
activity cards can display information such as form data, task
status, SLA timers, or attachments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

807


<!-- page 808 -->
Component

Description

Agents use the cards to complete the work for each activity,
such as filling in forms, completing checklists, completing
tasks, or adding attachments.
Contact or consumer lookup

The lookup component enables agents to look up contact or
consumer information and display that information in a record
card. These cards display customer information and provide
quick access to details such name, email, and phone. The
contact record card also includes account information.
Agents can use the contact lookup component to do the
following:
• Search for a contact or consumer.
• Link or unlink a contact or consumer record.
• Edit and save the information in a linked contact or
consumer record.
• Select a reference field on a record card, such as a contact
or consumer name, to open the reference in a sub-tab.
• Select an email address on a lookup card to open a draft
email in the email composer in a sub-tab.
• Select a phone number on a lookup card to make a call.
For more information, see Playbook lookup component.

Case summarization

The case summarization component appears below the
lookup component. When an agent opens a case record, the
component is collapsed and in the default state.
Agents can use this component to do the following:
• Summarize case details.
• Post the summary to the activity stream.
• Refresh the summary.
The case summarization component requires the Now Assist
for Customer Service Management (CSM) application to be
activated and configured. For more information, see Playbook
case summarization component.

Record details

The case details component includes collapsible sections for:
• Case
• Notes
• Closure Information
• Related Records
This component also includes a menu with additional form
actions, such as personalizing the form, exporting data, and
copying the URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

808


<!-- page 809 -->
Component

Description

Agents can view case details by selecting the Record Details
button in the action bar.
Contextual side panel

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the Case playbook: horizontal
stages page includes the following tabs.
• Activity Stream
• Agent Assist
• Recommended Actions
• Related Items
• Attachments
• Response Templates
• Email Templates
• Templates
• Record Information
For more information about the tabs in the contextual side
panel, see Playbook contextual side panel component.

Activity stream

The activity stream component displays a list of activities
occurring on a case record. This list can be collapsed to
provide a quick view of case activities or expanded to provide
more detail about individual activities.
For more information, see Playbook activity stream
component.

Note: The Case playbook: horizontal stages page uses
modeless dialogs for composing comments, work notes,
and emails.
Compose email and Compose A modeless dialog is a window that overlays the main window
comments modeless dialogs
content. You can use modeless dialogs to create and post
comments and work notes to the activity stream and to
compose and send emails as you work through the stages and
activities in a playbook. For more information, see Playbook
modeless dialogs.
Case playbook: vertical stages record page
The Case playbook: vertical stages page is a record page that you can use in CSM Configurable
Workspace. This page includes a playbook with a vertical stage picker that displays in the left
panel and can track overall progress on the UI in a vertical view.
The Case playbook: vertical stages record page is created from the Case playbook: vertical
stages template.
The Case playbook: vertical stages record page is available with the Playbooks for Customer
Service Management v6.0 store application. For more information, see Playbook plugins.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

809


<!-- page 810 -->
Case playbook: vertical stages page variant
The Case playbook: vertical stages page variant is included with the Playbooks for Customer
Service Management v6.0 store application. This variant includes the following settings.
Case playbook: vertical stages page variant settings
Setting

Description

Active

The Case playbook: vertical stages page variant is not active
by default. Enabling the Active check box makes the page
variant available to the selected audience.
The Active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.

Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the Case playbook: vertical stages page
variant is -1.

Conditions

Conditions determine when a page variant is displayed. The
Case playbook: vertical stages page variant has the following
condition: table=sn_customerservice_case
This condition limits the use of the Case playbook:
vertical stages page variant to records from the Case
[sn_customerservice_case] table and tables that extend the
Case table.

Audience

The audience determines who can see the page variant. The
Case playbook: vertical stages page variant doesn't have an
audience. This means everyone with access to the experience
can see this page variant.
For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select Case playbook: vertical stages.
4. Select Settings at the top of the page.

Case playbook: vertical stages page components
The Case playbook: vertical stages page includes the following components.

Component

Description

Form heading

The page header includes record information that is displayed
in the primary and secondary fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

810


<!-- page 811 -->
Component

Description

• The primary field displays the short description of the
record.
• The secondary fields display the additional record
information such as the priority, state, and contact or
consumer details.
You can configure the fields that appear in the page header.
For more information, see Customize the page header for a
playbook page.
Record tags

Agents can create multiple tags for a record and then use the
tags to group and organize records.
For more information, see Group and find records using tags in
workspace .

Action bar

The action bar contains the actions available to users while
working on case records. The specific actions are determined
by factors such as the user role, case state, and other
attributes.
• Record details: Displays the record details.
• Playbook details: Displays the playbook details.
• In-progress Actions: Provides a list of minimized modeless
dialogs and includes a badge that displays the number of
items in the list. From this list, an agent can select an item to
open the minimized comment, work note, or email.
• Create: Create records such as work orders, incidents, and
requests.
• Compose: Compose comments, work notes, and emails in
modeless dialogs.
• Save: Save changes to the case record.
• More Actions: Perform additional actions such as proposing
a major case or reporting a knowledge gap.

Playbook name

In the Case playbook: vertical stages page variant, the
playbook name appears at the top of the vertical stage picker.

Stage picker

The Case playbook: vertical stages page variant includes a
vertical stage picker, which gives the agent a complete view of
the playbook and where they are within the playbook.
The vertical stage picker displays the playbook stages and
activities on the side of the record page. Select a stage to
expand the stage and display the included activities.
The stages in the stage picker include icons that indicate the
stage status:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

811


<!-- page 812 -->
Component

Description

• A check mark
• A pen icon

indicates that the stage is complete.
indicates the current stage.

• A lock icon
indicates that a stage is locked and can’t be
started until the previous stage is complete.
Activity picker

The activity picker displays the activities for the current stage.
Each activity has an indicator that shows the activity state:
• Completed
• In progress
• Remaining
With the vertical stage picker, you can expand each stage to
see the activities within that stage.
Selecting an activity in a stage displays the details in the
activity viewer.

Activity viewer

The activity viewer displays the selected activity, which is the
main work area where an agent performs the work necessary
to complete the current activity.
Activity cards display the details about the current activity
in the activity viewer. Depending on the type of activity, the
activity cards can display information such as form data, task
status, SLA timers, or attachments.
Agents use the cards for completing the work for each activity,
such as filling in forms, completing checklists, completing
tasks, or adding attachments.

Contact or consumer lookup

The lookup component enables agents to look up contact or
consumer information and display that information in a record
card. These cards display customer information and provide
quick access to details such name, email, and phone. The
contact record card also includes account information.
Agents can use the contact lookup component to do the
following:
• Search for a contact or consumer.
• Link or unlink a contact or consumer record.
• Edit and save the information in a linked contact or
consumer record.
• Select a reference field on a record card, such as a contact
or consumer name, to open the reference in a subtab.
• Select an email address on a lookup card to open a draft
email in the email composer in a sub-tab.
• Select a phone number on a lookup card to make a call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

812


<!-- page 813 -->
Component

Description

For more information, see Playbook lookup component.
Case summarization

The case summarization component appears below the
lookup component. When an agent opens a case record, the
component is collapsed and in the default state.
Agents can use this component to do the following:
• Summarize case details.
• Post the summary to the activity stream.
• Refresh the summary.
The case summarization component requires the Now Assist
for Customer Service Management (CSM) application to be
activated and configured. For more information, see Playbook
case summarization component.

Record details

The case details component includes collapsible sections for:
• Case
• Notes
• Closure Information
• Related Records
This component also includes a menu with additional form
actions, such as personalizing the form, exporting data, and
copying the URL.
Agents can view case details by selecting the Record Details
button in the action bar.

Contextual side panel

The contextual side panel component includes different tools
that agents can use to research and resolve customer issues.
The contextual side panel in the Case playbook: horizontal
stages page includes the following tabs.
• Activity Stream
• Agent Assist
• Recommended Actions
• Related Items
• Attachments
• Response Templates
• Email Templates
• Templates
• Record Information
For more information about the tabs in the contextual side
panel, see Playbook contextual side panel component.

Activity stream

The activity stream component displays a list of activities
occurring on a case record. This list can be collapsed to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

813


<!-- page 814 -->
Component

Description

provide a quick view of case activities or expanded to provide
more detail about individual activities.
For more information, For more information, see Playbook
activity stream component.

Note: The Case playbook: vertical stages page uses
modeless dialogs for composing comments, work notes,
and emails.
Compose email and Compose A modeless dialog is a window that overlays the main window
comments modeless dialogs
content. You can use modeless dialogs to create and post
comments and work notes to the activity stream. You can also
compose and send emails as you work through the stages and
activities in a playbook. For more information, see Playbook
modeless dialogs.
Activate a playbook page or page variant
Activate a playbook page or page variant and set the page order. The system uses the active
page with the lowest order number to display records in CSM Configurable Workspace.

Before you begin

Role required: ui_builder_admin, admin
Some playbook pages and page variants are not active by default. You need to activate the
pages and set the page order before using the pages in CSM Configurable Workspace.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. In the Experiences list, select CSM/FSM Configurable Workspace.
3. Find one of the following pages by scrolling through the Pages and variants list to the Record
section:
◦ Case playbook: horizontal stages
◦ Case playbook: vertical stages
◦ Complaint case process page
◦ Onboarding case process page
◦ Product Support process page

Note: These pages may be marked as Inactive.
4. Display the page settings by selecting Settings for the desired page or page variant.
5. Activate the page by selecting the Active check box.
6. In the Order field, set the order number for the page.
Each page has an order number. The page with the lowest order number is the default page.
When the system displays a record in CSM Configurable Workspace, it uses this default page
to display the record information. For more information, see Set record page order.
7. In the Variant conditions field, specify the table value.
Add the table values for the case types where you want to see this page variant.
8. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

814


<!-- page 815 -->
Related topics
Create a page from a template
Edit a page
Create a page variant
Edit page variant settings
Customize the page header for a playbook page
Customize the page header by defining the primary and secondary fields that are displayed in
CSM Configurable Workspace.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

Overview information for a record is available in the page header.

Procedure
1. Navigate to All > Now Experience Framework > Configuration Settings > UX Header
Configurations.
2. Select the CSM/FSM Configurable Workspace Header Config header configuration.
3. Select a table from the UX Form Headers list.
You can also create a UX Form Header record. For more information, see Set up a form header
in CSM Configurable Workspace.
4. Select the Primary field to display in the form header.
5. In the Secondary values related list, select the secondary values to display in the form header.
a. In the Order field, set the sequential order in which to display the secondary values.
b. Select Update to save the form header record.
6. In the Order field, set the sequential order in which to display the secondary values.
7. Select Update to save the UX header configuration record.
Related topics
Set up a form header in CSM Configurable Workspace
Display the form ribbon and form header secondary values in the Contextual side panel
Customize UI actions for a playbook page
You can customize the UI actions that appear in the action bar for a playbook page or page
variant.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

Note: Any changes made to the configuration will affect other record pages and page
variants where the action bar component is used.

Procedure
1. Navigate to All > Now Experience Framework > Actions and Events > Action Bar Declarative
Actions.
2. Select an Action label to display the Action Assignment form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

815


<!-- page 816 -->
3. Click Edit to include or exclude a particular action on the UI.
4. Click Update.
Related topics
UI Action Bar
Set up a form action in CSM Configurable Workspace
Customize content in the left side panel for a playbook page
Components that can be added to the left side panel include Customer360, Timeline, Active
SLA, or a custom ribbon component. You can update the ribbon component attributes based on
the fields you want to display in the left side panel on the playbook page.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

Note:
Any changes made to the configuration will affect other record pages and page variants
where this ribbon setting is used.

Procedure
1. Navigate to All > Now Experience Framework > Configuration Settings > UX Ribbon Setting.
2. Select a ribbon setting for your table.
If a ribbon setting doesn’t exist for your table, you can create one. For more information, see
Set up a ribbon configuration in CSM Configurable Workspace.
3. Select values for the Ribbon component and the Ribbon Component Attributes.
4. Select Update.
Customize tabs in the contextual side panel for a playbook page
Add customized tabs in the contextual side panel. Agents can use these tabs to view case
information, add attachments, view recommendations, and perform other case-related actions.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. On the UI Builder home page, select the Page collections tab.
3. Select the desired page collection.
A page collection
is a group of pages that you can use in multiple experiences.
4. In the Pages and variants section, select the Create new page icon (+) to create a new page or
add a variant to a page.
5. In the Set up your page details pop-up window, enter a name for the page and then select
Continue.
6. Create a default page by entering a name for the variant and selecting Create.
The new page appears under the Pages and variants list.
7. Select the newly created page name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

816


<!-- page 817 -->
8. Add a component to the page collection by selecting +Add component.
You can create a subpage that gets displayed in the contextual side panel.

Result

The added component gets displayed on the UI. The location depends on where you want to
create the custom content on the page.
Related topics
Configure tabs in the contextual side panel
Customize a record page
Set record page order
Customize UI Builder pages using components
Customize the dynamic related records for a playbook page
Customize the dynamic related records for a playbook page to display in the contextual side
panel in CSM Configurable Workspace. These records dynamically change depending on the
context of the current record or playbook activity.

Before you begin

Role required: workspace_admin, ui_builder_admin, admin

About this task

The definitions for the related records aren't active by default. You must activate these definitions
if you want them to appear in the related records.
Any change made to the customer service case dynamic related record context will also be
applicable to all extensions of the customer service case. For creating custom context, see
Configure related record contexts.
You must define an EVAM view configuration for the tables in addition to setting up Dynamic
Related Records. For more information, see Define an EVAM view configuration.

Procedure
1. Navigate to All > Dynamic Related Records > Related Record Contexts.
2. Select Related Record Contexts for either the Onboarding, Complaint, or Product Support
table.
3. Activate all the related record definitions for the Onboarding, Complaint, or Product Support
case.
For more information, see Dynamic related records.
4. Select Update.
The following table shows the Dynamic Related Record list for each case type.
Dynamic Related Record list for different case types
Case type

Dynamic related record

Customer service case

◦ Blocked By
◦ Related Parties
◦ Social Logs
◦ Appointments

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

817


<!-- page 818 -->
Case type

Dynamic related record

◦ Requests
◦ Special Handling Notes
◦ Child Cases
◦ Knowledge Gaps
◦ Attached Knowledge
◦ Task Skills
◦ Emails
◦ Draft Emails
◦ Interactions
◦ Tasks
◦ Work Orders
◦ Install base
◦ Escalations
◦ Service Level Agreement (SLA)
Complaint case

◦ Emails
◦ Blocked By
◦ Involved Parties
◦ Tasks
◦ Sold Product
◦ Active Contracts
◦ Active Entitlement
◦ Related Cases

Onboarding case

◦ Emails
◦ Blocked By
◦ Related Cases
◦ Additional members
◦ Tasks
◦ Sold Product
◦ Active Contracts
◦ Approvers

Related topics
Configure dynamic related records
Configure related record definitions
Define an EVAM view configuration
Create a view configuration to combine conditions, database fields, and declarative actions with
an associated view template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

818


<!-- page 819 -->
Before you begin

Role required: admin or evam_admin

About this task

Entity View Action Mapper (EVAM) is an application that standardizes how different data sources
display in cards and lists.
A view configuration combines conditions, database fields, and declarative actions with an
associated view template. For more information, see View configurations, view templates, and
configuration bundles for EVAM .

Procedure
1. Navigate to All > Entity View Action Mapper (EVAM) > EVAM Definitions > Configuration
Bundles.
2. Select dynamic_related_records_bundle and then select New.
3. Fill in the fields on the EVAM view configuration form.

Field

Description

Name

Name of the EVAM view configuration.

Active

Option to activate the EVAM view configuration.

View Template

Template to associate with the EVAM view configuration. You can
create a template or use an existing template.

Application

Application scope of the EVAM view configuration.

Order

Priority that the EVAM view configuration takes over other view
configurations. To give higher priority to a view configuration, enter a
lower number.

Table

Table to associate with the EVAM view configuration.

Condition

Conditions for when to use the EVAM view configuration.

Table Fields

Table fields to display on the EVAM view configuration. For example:
name,supplier,description,product_category

Custom Fields

Custom fields to display on the EVAM view configuration. This is a
comma-separated list of non-table fields that are required for the
template. For example:
price,image_url,delivery_label,delivery_date,product_url

4. Select Save.
5. Create an M2M action assignment or select Link Existing and then select the Declarative
Action navigation.
For more details, see, View configurations, view templates, and configuration bundles for
EVAM .
Related topics
Configure dynamic related records
Configure related record definitions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

819


<!-- page 820 -->
Configure the app route to use an existing subpage
Create an app route to make an existing page a part of the page collection. For example, the
dynamic related record is a global subpage that you can use at any application level.

Before you begin

Role required: admin

About this task

Configuring an app route enables you to utilize an existing page in a page collection. This is
applicable to both page templates and page variants.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the Page collection tab and then select CSM default record pre-tabs from the Page
Collections list.
3. In the CSM default record pre-tabs page, select View page collection settings in the upper
right corner.
4. In the General section, select Open page collection.
The system opens the UX Extension Point page for CSM default record pre-tabs.
5. Navigate to the UX App Routes related list.
6. Select New to create an app route.
7. Enter a name In the Name field, a route in the Route field, and then select the Screen
Collection that you want to reuse.
The route is the path that the system uses to reach the page collection. For example, some
common routes in CSM Configurable Workspace include record, list, and create_case_type for
the Create Case modal.
You can also create a screen collection by selecting New on the UX Screen Collections pop-up
window and entering the name, route, and screen collection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

820


<!-- page 821 -->
UX Screen Collections pop-up window

8. Select Submit to create the app route.

Result

The system adds the subpage to the page collection.
Playbook applications
Several playbook applications are available that provide playbooks to onboard customers,
manage customer complaints, and resolve issues.
Customer Service Management playbook applications
Application

Description

Case Playbook for Onboarding

Use this application to manage the process
for taking on new customers or enrolling
customers in new products. An onboarding
case captures the details of the new customer,
including their selection of products and
services.

Case Playbook for Complaints

Use this application to manage the process for
handling customer complaints. A complaint
case captures the details of the problem
reported by the customer and the expected
resolution.

Case Playbook for Product Support

Use this application to guide agents through
the steps that are needed to resolve product
issues. A product support case captures
information about the customer, the product,
and the reported issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

821


<!-- page 822 -->
Case Playbook for Onboarding
Use the Case Playbook for Onboarding to manage the process for taking on new customers or
enrolling customers for new products.
The onboarding playbook provides the activities and tasks that agents can perform during the
onboarding process. Agents can also create and assign tasks as needed and use the playbook
to communicate with the customer.
Use the Case Playbook for Onboarding for cases that were created by using the onboarding
case type. This playbook is available for both CSM Configurable Workspace and CSM Agent
Workspace. In the CSM Workspaces, the playbook appears in the Playbook tab on the case
record.

Note: If you have the admin role, you can configure a playbook to use compact mode in
CSM Configurable Workspace. Use the compact mode to move the playbook from a tab in
the Workspace to a tab in the contextual side panel.

Case Playbook for Onboarding application
The Case Playbook for Onboarding application (com.sn_csm_onboarding_caseflow) is available
®
from the ServiceNow Store. For more information, see Playbook plugins.

Case Playbook for onboarding a PAD process definition
The Case Playbook for Onboarding 3.0 includes a new Process Automation Designer (PAD)
process definition called onboarding_playbook_v1. This process definition contains the
optimized stages and activities for the onboarding playbook.
Process definitions are stored in the Process Definitions table (sys_pd_process_definition). As an
admin, you can view a list of processes by doing the following task:
1. In the application navigator, enter sys_pd_process_definition.list.
2. Configure the list

to show the Name field.

Only one PAD process per playbook can be active at a time. For more information, see Process
definitions .

Case Playbook for Onboarding features
The Case Playbook for Onboarding 3.0 includes the case features and workspace
enhancements that are listed in the following table.
Onboarding Case Playbook 3.0 features
Feature

Create an onboarding case using the Case
Playbook for Onboarding

Description

Feature that opens the onboarding playbook
and initiates the first activity in the Initiate
stage, which is gathering the customer
information. The agent can complete and save
this activity to create the record.
For more information, see Create a record
using a playbook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

822


<!-- page 823 -->
Onboarding Case Playbook 3.0 features (continued)
Feature

Focused activity view

Description

Feature that determines how the stages and
activities appear in the playbook.
The Case Playbook for Onboarding uses the
Focused activity view, which enables agents
to see
• The end-to-end life cycle of the onboarding
workflow in the playbook life-cycle panel.
• The current stage is expanded and the
current activity is highlighted within the
playbook life-cycle panel.
• The current activity that is displayed in the
playbook work area.

Contextual side panel

Feature that displays the following information:
• Activity stream
• Ribbon information, such as the case
overview, customer details, timeline, and
SLAs
• Dynamic related records
The activity stream and ribbon information
are available in CSM Configurable Workspace
only.
For more information about using the
contextual side panel, see the following topics:
• Using activity stream in the contextual side
panel
• Viewing the ribbon information in the
contextual side panel
• Viewing dynamic related records in the
contextual side panel

Activity visibility

Feature that enables you to control the activity
visibility:
• Hide the activities in a stage that the loggedin user can't access.
• Hide the pending activities in a stage.
For more information about configuring this
feature, see Configure playbook stage and
activity visibility.

Compact mode

Mode that moves the playbook from a tab in
the Workspace to the contextual side panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

823


<!-- page 824 -->
Onboarding Case Playbook 3.0 features (continued)
Feature

Description

Agents can complete the playbook activities in
the side panel while they are viewing the other
tabs in the record page.
This mode is available in CSM Configurable
Workspace only.
Users with the admin role can configure
a playbook to use compact mode in the
playbook component configuration in UI
Builder.
Dynamic related records

Feature that displays the records in the
contextual side panel. These records
dynamically change based on the context of
the current record or playbook activity.
From the Related Records tab in the
contextual side panel, agents can
• Filter the list of related records
• Open the list in a new tab
• Create new records
The dynamic related records feature is
available in CSM Configurable Workspace
only.
For more information, see Viewing related
records in the contextual side panel.

SLA widget

Activity cards in the playbook work area
that can display an SLA widget. The widget
appears on the activity card when the
playbook activity has an SLA. The widget
includes the activities in the following stages:
• Pre-approval (duration is 3 days)
• Data capture (duration is 5 days)
• Due diligence (duration is 15 days)
• Resolution (duration is 20 days)
The color of the widget indicates the time
remaining for the SLA:
• Green: 0–50%
• Yellow: 50–75%
• Orange: 75–99%
• Red: 100% or breached

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

824


<!-- page 825 -->
Using the playbook stage and activity pickers to navigate the stages and
activities
The playbook stage picker enables agents to see the entire onboarding workflow. Agents can
navigate the playbook stages and activities by doing the following tasks:
• Expand and collapse the stages to show or hide the activities.
• Use the filter in the stage picker to filter activities by the assigned user or the activity state.
• Click an activity to display the details in the playbook work area.

Using the Playbook Actions menu
The Playbook Actions menu in the playbook header includes the actions that agents can perform
at the playbook and activity levels. The agents can select the Playbook Actions icon (
access this menu.

) to

The Playbook Actions menu includes the following playbook-level actions:
• Expand All Stages: Expands all the stages in the playbook.
• Collapse All Stages: Collapses all the stages in the playbook.
• Request Info: Displays a pop-up window that the agent can use to communicate with the
customer and to request information about a case or case task. This action also saves the
details to the case or case task activity stream. By using this action, the state of the case or
case task changes to Awaiting Info and pauses the SLAs and any timers.
• Info Received: Returns the case or case task to the previous state and restarts the SLAs and
any timers.

Note: The Request Info and Info Received actions can also be configured to appear on
the case task activity cards.
The activity-level actions can vary depending on the type of activity and in which stage it
appears. For example, actions are available to accept cases, create related cases, create case
tasks, and propose solutions.

Onboarding playbook stages and activities
The following table lists the Case Playbook for Onboarding stages and activities that agents can
use to onboard new customers or products.
Playbook activities by onboarding stage
Stage

Activity

Initiate

Collect customer
information

Guides the agent in
collecting customer
and case information
and sending a case
for pre-approval.

Activity Details

When an agent creates an onboarding
case, the workspace opens the Create
New Onboarding Case form, launches the
onboarding playbook, and uses the first
activity to gather customer information.
The agent enters the information about the
channel, account, contact, consumer, product,
and service.
For more information about the products and
services, see Service definitions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

825


<!-- page 826 -->
Playbook activities by onboarding stage (continued)
Stage

Activity

Activity Details

Agent actions:
Continue: Creates the onboarding case and
adds the case number to the record tab. It also
marks the first activity as complete and moves
to the second activity.
Add additional
members

Activity that agents can use to add additional
members to the onboarding case:
1. Select Add new to open the Create New
Related Party form in a new tab.
2. In the Type field, select the related party
with the correct entity type, such as a
beneficiary who is a customer contact.
3. Select the User.
4. Select Save to add the user to the Member
Information list on the activity card.
Agent actions:
• Assign to me: Available if the case is not yet
assigned. Assigns the case to the logged-in
user.
• Add new: Adds a user to the Member
Information list.
• Send for Pre Approval: Completes the
Initiate stage and moves to the Pre-approval
stage.

Notify customer

Pre approval
Automates the preapproval process for
the customer.

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Initiate stage.

Check approval status Activity that includes a list of approvals and
approvers.

Note: This activity shows the list
of approvals if an approval workflow
is manually configured for an
onboarding case. The approval workflow
configuration is not provided in the
base system. If no approval workflow
is configured, this activity completes
automatically.
Update customer
information

Agents can use this activity to verify the
account, contact, or consumer information for
the onboarding case.
Agent actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

826


<!-- page 827 -->
Playbook activities by onboarding stage (continued)
Stage

Activity

Activity Details

Save: Saves any changes made to the
customer information.
Complete pre
approval

Agents can use this activity to provide
additional information and add notes or
attachments.
Agent actions:
• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Initiate Data Capture: Marks the activity and
the Pre approval stage as complete.

Notify customer

Data capture
Organizes the
collection of customer
information.

Verify document
checklist

This activity displays the details of the email
that was automatically sent to the customer at
the completion of the Pre approval stage.
This activity displays a document checklist.
Agents can check off the necessary
documents and provide comments or work
notes.
If the customer type changes after the case
is created, a new checklist of the appropriate
type replaces the original checklist.
Agent actions:
• Request info: Request additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Submit for Review: Marks the activity and
the Data capture stage as complete.

Notify customer

Due diligence
Displays case tasks
for completing due
diligence.

Perform background
check

This activity displays the details of the email
that was automatically sent to the customer at
the completion of the Data capture stage.
Agents can use this activity to perform
background checks on the customer.
Agent actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

827


<!-- page 828 -->
Playbook activities by onboarding stage (continued)
Stage

Activity

Activity Details

• Request info: Request additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review Complete: Marks the activity as
complete.
Initiate legal
verification

Agents can use this activity to initiate the legal
verification process for a customer.
Agent actions:
• Request info: Request additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review Complete: Marks the activity as
complete.

Review credit history

Activity that the agents can use to review a
customer's credit history.
Agent actions:
• Request info: Request additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review Complete: Marks the activity and
the Due Diligence stage as complete.

Resolve
Manages the case
resolution activities.

Notify customer

This activity displays the details of the email
that was automatically sent to the customer at
the completion of the Due Diligence stage.

Propose resolution

Activity that displays the fields from the
Resolution Notes section on the Case form.
Agents can add the resolution details and
select Propose solution.
If the customer rejects the resolution, the
agent can return to the Resolve stage and
propose another solution.
Agent actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

828


<!-- page 829 -->
Playbook activities by onboarding stage (continued)
Stage

Activity

Activity Details

• Propose solution: Propose the solution to
the customer and mark the Resolve stage as
complete.
• Change solution: This action appears after
the agent proposes a solution.

Close

Notify customer

This activity displays the details of the email
that was automatically sent to the customer at
the completion of the Resolve stage.

Notify customer

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Close stage.

Close case

When the customer accepts the resolution,
the Resolve stage completes and the Close
stage is also marked as complete.

Manages the case
close activities.

Process-based page variant for onboarding case type
The Case Playbook for Onboarding v5.0 application includes a process-based page variant that
you can activate and use with the onboarding case type in CSM Configurable Workspace. This
page includes the following features:
• Horizontal stage picker in the record that provides an end-to-end view of the onboarding
process.
• Related list tabs that are displayed in the Dynamic Related Records component in the
contextual side panel.
• Persistent account and contact information that display in the panel.
• Displays Email tab in the Activity Stream.
• Email templates that are displayed in the contextual side panel.
• Customization of the start and end states of the approval flow as fields in the Approval request
activity.
Agents can create tasks as needed and view and update the case details. For more information,
see Playbook pages.

Guided Playbook for Onboarding Request
The Case Playbook for onboarding has undergone modifications in Playbooks for Portals to
expose the initiate stage for self-service. This change will provide the guided playbook intake
process to end customers as well, previously available only to agents. The experience is initially
shipped as inactive to customers.
End customers now have visibility into the entire lifecycle of the onboarding application when
viewing the case application. They can perform various tasks based on the specific stage of the
case lifecycle. This includes submitting new cases, checking the status of existing cases, and
taking actions on tasks that require customer input as the case progresses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

829


<!-- page 830 -->
Contributor users, on the other hand, have the ability to submit cases and act on tasks on behalf
of the customer. During the initiate stage of the onboarding case type, end customers have the
option to save their progress. Additionally, they can view the case process on the case ticket
page specifically designed for onboarding cases. The flows within the system guide users
through the step-by-step completion of both simple and complex processes, ensuring a smooth
and efficient experience.
Guided Playbook for Onboarding Request

As customer, you can:
• Locate the catalog content item 'New Guided Onboarding Request' under the 'Support'
category in the service catalog.
• Launch the playbook record generator associated with the selected content item.
• Monitor your progress in the submission process, including the number of remaining steps
and the ability to navigate back to previous steps when viewing a playbook.
• Easily populate the required fields with the options provided and input controls.
• Save an application or form before it is ready for submission and resume working on it at a later
time.
• Locate the draft case from the case list view to continue where you left off.
• Click Submit to complete the initiation stage during the Review Applicationstep.
• Receive a notification if there are any pending tasks due to missing documents.
• Access the case ticket page directly from the email notification, with the process tab open,
displaying the Data Capture stage and the Upload Documents activity.
Known limitations:
• If you switch to the new Process Automation Designer (PAD) with the existing service definition
and the old record generator, you may encounter a configuration error page when attempting
to create onboarding from the case type selector. You need to update the service definition's
references as well to the new record generator.
• The Portal playbook experience only supports the New PAD. Customers may encounter issues
if they attempt to use the old PAD, so it is recommended not to use it. Ensure that only one PAD
is active at a given time.
Case Playbook for Complaints
Use the Case Playbook for Complaints to guide agents through the steps that are needed to
resolve customer complaints.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

830


<!-- page 831 -->
A complaint case captures the information about the customer, the product, and the details
about the complaint. The complaint playbook provides the activities and tasks that agents can
perform to research and resolve the complaint. Agents can also create and assign tasks as
needed and use the playbook to communicate with the customer.
The Case Playbook for Complaints can be used with cases that are created using the complaint
case type. This playbook is available for both CSM Configurable Workspace and CSM Agent
Workspace. In the CSM Workspaces, the playbook appears in the Playbook tab on the case
record.

Note: If you have the admin role, you can configure a playbook to use the compact mode
in CSM Configurable Workspace. Use the compact mode to move the playbook from a tab
in the Workspace to a tab in the contextual side panel.

Case Playbook for Complaints application
The Case Playbook for Complaints 3.0 application (com.sn_csm_complaint_caseflow) is
®
available from the ServiceNow Store. For more information, see Playbook plugins.

Case Playbook for Complaints PAD process definition
The Case Playbook for Complaints 3.0 includes a new Process Automation Designer (PAD)
process definition called complaint_playbook_v1. This process definition contains the optimized
stages and activities for the complaint playbook.
The process definitions are stored in the Process Definitions table (sys_pd_process_definition).
To view a list of processes, do the following task:
1. In the application navigator, enter sys_pd_process_definition.list in the application navigator.
2. Configure the list

to show the Name field.

Only one PAD process per playbook can be active at a time. For more information, see Process
definitions .

Case Playbook for Complaints features
The Case Playbook for Complaints 3.0 includes the case features and enhancements that are
listed in the following table.
Case Playbook for Complaints 3.0 features
Feature

Create a complaint case using the Case
Playbook for Complaints

Description

Feature that opens the complaint playbook
and initiates the first activity in the Intake
stage, which is gathering complaint details.
The agent can complete and save this activity
to create the record.
For more information, see Create a record
using a playbook.

Focused activity view

Feature that determines how the stages and
activities appear in the playbook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

831


<!-- page 832 -->
Case Playbook for Complaints 3.0 features (continued)
Feature

Description

The Case Playbook for Complaints uses the
Focused activity view, which enables agents
to see
• The end-to-end life cycle of the complaint
workflow in the playbook life-cycle panel.
• The current stage is expanded and the
current activity is highlighted within the
playbook life-cycle panel.
• The details of the current activity that is
displayed in the playbook work area.
Contextual side panel

Feature that displays the following information
in the contextual side panel:
• Activity stream
• Ribbon information, such as the case
overview, customer details, timeline, and
SLAs
• Dynamic related records

Note: The activity stream and ribbon
information are available in CSM
Configurable Workspace only.
For more information about using the
contextual side panel, see
• Using activity stream in the contextual side
panel
• Viewing the ribbon information in the
contextual side panel
• Viewing dynamic related records in the
contextual side panel
Activity visibility

Feature that uses the following settings to
control activity visibility:
• Hide the activities in a stage that the loggedin user can't access.
• Hide the pending activities in a stage.
For more information about configuring this
feature, see Configure playbook stage and
activity visibility.

Compact mode

Mode that moves the playbook from a tab in
the Workspace to the contextual side panel.
Agents can complete the playbook activities in
the side panel while they’re viewing the other
tabs in the record page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

832


<!-- page 833 -->
Case Playbook for Complaints 3.0 features (continued)
Feature

Description

Note: This mode is available in CSM
Configurable Workspace only.
Users with the admin role can configure a
playbook to use the compact mode in the
playbook component configuration in UI
Builder.
Dynamic related records

Feature that displays the records in the
contextual side panel. These records
dynamically change based on the context of
the current record or playbook activity.
From the Related Records tab in the
contextual side panel, agents can
• Filter the list of related records
• Open the list in a new tab
• Create records

Note: The dynamic related records
feature is available in CSM Configurable
Workspace only.
For more information, see Viewing related
records in the contextual side panel.
SLA widget

Activity cards in the playbook work area
that can display an SLA widget. The widget
appears on the activity card when the
playbook activity has an SLA. This widget
includes the activities in the following stages:
• Triage
• Research
• Respond
The color of the widget indicates the time
remaining for the SLA:
• Green: 0–50%
• Yellow: 50–75%
• Orange: 75–99%
• Red: 100% or breached

Using the playbook stage and activity pickers to navigate stages and activities
The playbook stage picker enables agents to see the entire complaint workflow. Agents can
navigate the playbook stages and activities by doing the following tasks:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

833


<!-- page 834 -->
• Expand and collapse stages to show or hide activities.
• Use the filter in the stage picker to filter activities by the assigned user or the activity state.
• Select an activity to display the details in the activity viewer.

Using the Playbook Actions menu
The Playbook Actions menu in the playbook header includes the actions that agents can perform
at the playbook and activity levels. The agents can select the Playbook Actions icon (
access this menu.

) to

The Playbook Actions menu includes the following playbook-level actions:
• Expand All Stages: Expands all the stages in the playbook.
• Collapse All Stages: Collapses all the stages in the playbook.
• Request Info: Displays a pop-up window that the agent can use to communicate with the
customer and to request information about a case or case task. This action also saves the
details to the case or case task activity stream. By using this action, the state of the case or
case task changes to Awaiting Info and pauses the SLAs and any timers.
• Info Received: Returns the case or case task to the previous state and restarts the SLAs and
any timers.

Note: The Request Info and Info Received actions can also be configured to appear on
case task activity cards.
The activity-level actions can vary depending on the type of activity and in which stage it
appears. For example, actions are available to accept cases, create related cases, create case
tasks, and propose solutions.

Complaint playbook stages and activities
The following table lists the Case Playbook for Complaints stages and activities that agents can
use to resolve customer issues.
Case Playbook for Complaints stages and activities
Stage

Activity

Intake

Gather complaint
details

Guides the agent to
collect the information
needed to create the
complaint case.

Activity Details

When an agent creates a complaint case, the
workspace opens the Create New Complaint
Case form, launches the complaint playbook,
and uses the first activity to gather complaint
details.
The agent can enter the information about
the customer, the service, the complaint, and
the expected outcome for the case. As the
agent enters the complaint details, additional
fields appear on the activity card such as the
Category and Subcategory fields.

Note: For more information about the
service, see Service definitions.
Agent actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

834


<!-- page 835 -->
Case Playbook for Complaints stages and activities (continued)
Stage

Activity

Activity Details

Continue: Creates the complaint case and
adds the case number to the Record tab. It
also marks the first activity as complete and
moves to the second activity.
Add involved parties

Activity that the agent can use to add involved
parties to the complaint case:
1. Select Add new to open the Create New
Related Party form in a new tab.
2. In the Type field, select the related party
with the correct entity type, such as a cocomplainant who is a customer contact.
3. Select User.
4. Select Save to add the user to the Involved
Parties list on the activity card.
Agent actions:
• Assign to me: Available if the case isn’t yet
assigned. Assigns the case to the logged-in
user.
• Add new: Adds a user to the Involved
Parties list (see the previous steps).

Verify primary address Activity that shows the fields from the Primary
Correspondence Address form section on the
Details tab. Agents can accept this address or
select a different address.
Agent actions:
• Save: Saves the updates to the Primary
Correspondence Address fields.
• Move to triage: Completes the Intake
stage, marks the activities in the stage as
complete, and moves to the next stage in
the complaint playbook.
Notify customer

Triage
Enables the agent
to do the initial
troubleshooting on
the case.

Verify complaint

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Intake stage.
Case task that agents can use to review
any available related search results in the
contextual side panel and add notes or
attachments.
Agent actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

835


<!-- page 836 -->
Case Playbook for Complaints stages and activities (continued)
Stage

Activity

Activity Details

• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Submit for review: Marks the case task and
the Triage stage as complete.
Notify customer

Research
Orchestrates sending
the case to different
back-office teams for
follow-up.

Review legal
implications

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Triage stage.
Case task that agents can assign to a different
user for legal review.
To assign the task:
1. Select the View Task icon in the activity card.
This action opens the case task in a new tab.
2. Select the user in the Assigned to field.
3. Add information to the other fields on the
Case Task form as needed and select Save.
Agent actions:
• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review complete: Marks the case task as
complete.

Product owner review
for other similar issues Case task that an agent can assign to a
different user for a review of similar issues.
To assign the task:
1. Select the View Task icon
in the activity
card to open the case task in a new tab.
2. Select the user in the Assigned to field.
3. Add information to the other fields on the
Case Task form as needed and click Save.
Agent actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

836


<!-- page 837 -->
Case Playbook for Complaints stages and activities (continued)
Stage

Activity

Activity Details

• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review complete: Marks the case task as
complete.
Verify check
entitlement

Case task that an agent can assign to a
different user for an entitlement review.
To assign the task:
1. Select the View Task icon
in the activity
card to open the case task in a new tab.
2. Select the user in the Assigned to field.
3. Add information to the other fields on the
Case Task form as needed and select Save.
Agent actions:
• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review complete: Marks the case task as
complete.

Billing review for any
refunds

Case task that an agent can assign to a
different user for a billing review.
To assign the task:
1. Select the View Task icon
in the activity
card to open the case task in a new tab.
2. Select the user in the Assigned to field.
3. Add information to the other fields on the
Case Task form as needed and select Save.
Agent actions:
• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

837


<!-- page 838 -->
Case Playbook for Complaints stages and activities (continued)
Stage

Activity

Activity Details

• Post: Posts the comment or the work note to
the case task record activity stream.
• Review complete: Marks the case task and
the Research stage as complete.

Respond

Notify customer

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Research stage.

Compose email

Activity that the agent can use to
communicate with the customer.

Guides the agent in
drafting a response to
the case.

Agent actions:
• Request info: Requests additional
information from the customer. This action
changes the state of the case task to
Awaiting Info.
• Post: Posts the comment or the work note to
the case task record activity stream.
• Review complete: Marks the case task and
the Respond stage as complete.

Resolve

Propose resolution

Manages the activities
for case resolution.

Activity that shows the fields from the
Resolution Notes section on the Case form.
An agent can add the resolution details and
select Propose solution.
If the customer rejects the solution, the agent
can return to the Resolve stage and propose
another solution.
Agent actions:
• Propose solution: Proposes the solution to
the customer and marks the Resolve stage
as complete.
• Change solution: This action appears after
the agent proposes a solution.

Close

Notify customer

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Resolve stage.

Close case

When the customer accepts the resolution,
the Resolve stage completes and the Close
stage is also marked as complete.

Notify customer

Activity that displays the details of the email
that was automatically sent to the customer at
the completion of the Close stage.

Manages the activities
for closing the case
and sending a survey
to the customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

838


<!-- page 839 -->
Process-based page variant for complaint case type
The Case Playbook for Complaints v5.0 application includes a process-based page variant that
you can activate and use with the complaint case type in CSM Configurable Workspace. This
page includes the following features:
• Horizontal stage picker in the record that provides an end-to-end view of the complaint
process.
• Related list tabs that are displayed in the Dynamic Related Records component in the
contextual side panel.
• Persistent account and contact information that is displayed in the panel.
• Email tab that is displayed in the Activity Stream.
• Email templates that are displayed in the contextual side panel.
• Customization of the start and end states of the approval flow as fields in the Approval request
activity.
Agents can create tasks as needed as well as view and update case details. For more
information, see Playbook pages.
Case Playbook for Product Support
Use the Case Playbook for Product Support to guide agents through the steps that are needed to
resolve product issues.
A product support case captures the information about the customer, the product, and the
reported issue. The product support playbook provides the activities and tasks that agents can
perform to research and resolve the issue. Agents can also create and assign tasks as needed
and use the playbook to communicate with the customer.
The Case Playbook for Product Support is available for both CSM Configurable Workspace and
CSM Agent Workspace. In the CSM Workspaces, the playbook appears in the Playbook tab on
the case record.

Note: If you have the admin role, you can configure a playbook to use the compact mode
in CSM Configurable Workspace. Use the compact mode to move the playbook from a tab
in the Workspace to a tab in the contextual side panel.

Case Playbook for Product Support application
The Case Playbook for Product Support 3.0 application (com.sn_csm_product_caseflow) is
®
available from the ServiceNow Store. For more information, see Playbook plugins.

Case Playbook for Product Support PAD process definition
The Case Playbook for Product Support 3.0 includes a new Process Automation Designer (PAD)
process definition called product_playbook_v1. This process definition contains the optimized
stages and activities for the product support playbook.
The process definitions are stored in the Process Definitions table (sys_pd_process_definition).
To view a list of processes, you can do the following task:
1. In the application navigator, enter sys_pd_process_definition.list.
2. Configure the list

to show the Name field.

Only one PAD process per playbook can be active at a time. For more information, see Process
definitions .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

839


<!-- page 840 -->
Case Playbook for Product Support features
The Case Playbook for Product Support 3.0 includes the case features and enhancements that
are listed in the following table.
Case Playbook for Product Support features
Feature

Focused activity view

Description

Feature that determines how the stages and
activities appear in the playbook.
The Case Playbook for Product Support uses
the Focused activity view, which enables
agents to see
• The end-to-end life cycle of the product
support workflow in the playbook life-cycle
panel.
• The current stage is expanded and the
current activity is highlighted within the
playbook life-cycle panel.
• Details of the current activity that is
displayed in the playbook work area.

Contextual side panel

Feature that displays the following information
in the contextual side panel:
• Activity stream
• Ribbon information, such as the case
overview, customer details, timeline, and
SLAs
• Dynamic related records

Note: The activity stream and ribbon
information are available in CSM
Configurable Workspace only.
For more information about using the
contextual side panel, see
• Using activity stream in the contextual side
panel
• Viewing the ribbon information in the
contextual side panel
• Viewing dynamic related records in the
contextual side panel
For more information about configuring this
feature, see Configure playbook stage and
activity visibility.
Activity visibility

Feature that uses the following settings to
control the activity visibility:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

840


<!-- page 841 -->
Case Playbook for Product Support features (continued)
Feature

Description

• Hide the activities in a stage that the loggedin user can't access.
• Hide the pending activities in a stage.
Compact mode

Mode that moves the playbook from a tab in
the Workspace to the contextual side panel.
Agents can complete the playbook activities in
the side panel while they’re viewing the other
tabs in the record page.

Note: This mode is available in CSM
Configurable Workspace only.
Users with the admin role can configure a
playbook to use the compact mode in the
playbook component configuration in UI
Builder.
Dynamic related records

Feature that displays the records in the
contextual side panel. These records
dynamically change based on the context of
the current record or playbook activity.
From the Related Records tab in the
contextual side panel, agents can
• Filter the list of related records
• Open the list in a new tab
• Create new records

Note: The dynamic related records
feature is available in CSM Configurable
Workspace only.
For more information, see Viewing related
records in the contextual side panel.
SLA widget

Activity cards in the playbook work area can
display an SLA widget. The widget appears on
the activity card when the playbook activity
has an SLA.
The color of the widget indicates the time
remaining for the SLA:
• Green: 0–50%
• Yellow: 50–75%
• Orange: 75–99%
• Red: 100% or breached

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

841


<!-- page 842 -->
Using the playbook stage and activity pickers to navigate stages and activities
The playbook stage picker enables agents to see the entire product support workflow. Agents
can navigate the playbook stages and activities by doing the following tasks:
• Expand and collapse the stages to show or hide activities.
• Use the filter in the stage picker to filter activities by the assigned user or the activity state.
• Select an activity to display the details in the playbook work area.
The following example shows the different stages and activities in a playbook.

Using the Playbook Actions menu
The Playbook Actions menu in the playbook header includes the actions that agents can perform
at the playbook level. The agents can select the Playbook Actions icon (

) to access this menu.

The Playbook Actions menu includes the following playbook-level actions:
• Expand All Stages: Expands all the stages in the playbook.
• Collapse All Stages: Collapses all the stages in the playbook.
• Request Info: Displays a pop-up window that the agent can use to communicate with the
customer. This action also saves the details to the case activity stream. By using this action,
the state of the case changes to Awaiting Info and pauses the SLAs and any timers on the
case.
• Info Received: Returns the case to the previous state and restarts the SLAs and any timers on
the case.
The activity-level actions can also appear in the Playbook Actions menu. These actions vary
depending on the type of activity and in which stage it appears. For example, actions are
available to accept cases, create related cases, create case tasks, and propose solutions.

Case Playbook for Product Support stages and activities
The following table lists the Case Playbook for Product Support stages and activities that agents
can use to resolve customer issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

842


<!-- page 843 -->
Case Playbook for Product Support stages and activities
Stage

Activity

Investigate

Review case details

Guides the agent in
collecting customer
information and
performing some
initial research about
the product issue.

Details

A case is in the Investigate stage when the
case state is New or Open.
This activity displays information about the
case, including the customer and product
details and any contracts or entitlements.
The agent can add details about the issue
and review the information and related search
results, such as knowledge articles or similar
cases.
Agent actions:
• Assign to me: Assigns the case to the
current agent.
• Accept: Enables the agent to accept the
case.
• Save: Saves any changes made to the case
details.
• Mark Complete: Saves the information,
marks the activity as complete, and moves
to the next activity or stage.

Work in progress

Create case tasks

Create case tasks as
needed and assign
tasks to users.

A case is in the Work in progress stage when
the agent completes the initial research and
begins working on the issue.
This activity includes a list of case tasks.
Agents can create tasks as needed to
complete the work for a case.
Agent actions:
• Add New: Creates a case task. Add
information to the task and select Save to
add the task to the Case Tasks list.
• Mark Complete: Marks the activity as
complete and moves to the next activity or
stage.

Resolve and close
Case tasks are
complete and the
agent is ready to
propose a solution to
the customer.

Resolve

Add details to the Resolution code and
Resolution notes fields on the activity card
and select Save. This information is added to
the case record.
Agent actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

843


<!-- page 844 -->
Case Playbook for Product Support stages and activities (continued)
Stage

Activity

Details

• Propose Solution: Notifies the customer of
the proposed solution.
• Change Solution: Appears after the agent
proposes a solution. Use this action to add
information to the case resolution fields.
Close case

This activity shows the following read-only
fields:
• Closed by: the agent who closed the case.
• Closed: the date and time that the case was
closed.
The system closes the case when the
customer accepts the resolution or when the
agent selects Close Case.

Process-based page variant for cases
The Case Playbook for Product Support v5.0 application includes a process-based page variant
that you can activate and use with cases in CSM Configurable Workspace. This page includes
the following features:
• A horizontal stage picker at the top of the record that provides an end-to-end view of the
complaint process. Activities within each stage are stacked in the activity viewer.
• Displays the related list tabs in the Dynamic Related Records component in the contextual side
panel.
• Displays persistent account and contact information in the left side panel.
• Displays Email tab in the Activity Stream.
• Displays the email templates in the contextual side panel.
• Supports case summarization card on the left panel.
Agents can create tasks as needed as well as view and update case details. For more
information, see Playbook pages.
Configure Playbooks for Customer Service Management
Configure different playbook settings, such as selecting the activity view and determining activity
visibility.
Some of the configuration for a playbook is performed in UI Builder as part of the playbook
component configuration. Additional settings can be configured in the playbook experience
configuration record. These settings include selecting the playbook activity view and configuring
playbook stage and activity visibility.
Playbook configuration tasks
Configuration task

Description

Create or customize a
playbook record page

A record page provides the base structure for how a
record is displayed in CSM Configurable Workspace. The

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

844


<!-- page 845 -->
Playbook configuration tasks (continued)
Configuration task

Description

following playbook record pages are available with the
Playbooks for Customer Service Management application
[com.sn_csm_playbook]:
• Case playbook: horizontal stages page
• Case playbook: vertical stages page
For more information, see Manage UI Builder pages and page
variants .
Configure the playbook record Each UI Builder record page includes the following settings:
page settings
• Active: Enabling this check box makes the page available to
the selected audience.
• Order: This value indicates the page priority. The page with
the lowest order value is the default page.
• Conditions: Determine when a page variant is displayed.
• Audience: Determines who can see the page.
For more information, see the following topics:
• Case playbook: horizontal stages page variant settings
• Case playbook: vertical stages page variant settings
Select a playbook activity view The activity view determines how the stages and activities are
displayed in the playbook.
• Stacked: <add description>
• Focused: <add description>
Users with the system administrator role can select a playbook
activity view in the playbook component configuration in UI
Builder.
Configure playbook stage and
The following fields control the visibility of playbook stages
activity visibility
and activities.
• Hide Inaccessible Activity: Accessibility is determined by
user permissions. When enabled, the user cannot see an
activity if they do not have permissions to view the data
associated with the activity. If all activities in a stage are
inaccessible to the user, the stage is also hidden.
• Control Activity Display: Pending activities are those
activities that have not yet been triggered. Select one of the
options in this field to show or hide pending activities.
Users with the system administrator role can in the playbook
experience configuration record.
Configure a playbook to use
compact mode

Compact mode moves the playbook from a tab in the
Workspace to the contextual side panel. Agents can complete

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

845


<!-- page 846 -->
Playbook configuration tasks (continued)
Configuration task

Description

playbook activities in the side panel while viewing other tabs in
the record page.
Users with the system administrator role can configure a
playbook to use compact mode in the playbook component
configuration in UI Builder.
Preview a playbook

Users with the playbook experience admin role
[playbook_experience.admin] can preview a playbook in real
time within a non-production environment. With this feature,
playbook experience administrators can easily see and test
different playbook settings.

Select a playbook experience

A playbook experience is a defined set of configurations that
determines how the system renders a playbook in Workspace.
You can use playbook experiences to customize the look and
feel of a playbook, map user actions, and override activities.
The Playbook Experience plugin (com.playbook_experience)
includes the Global Playbook Experience record, which
defines a default playbook configuration.
The Playbooks for Customer Service Management plugin
(com.sn_csm_playbook) includes the following additional
playbook experience records:
• CSM Configurable Workspace Playbook
• CSM Agent Workspace Playbook
Users with the system administrator role can select a playbook
experience when adding a playbook to a page in UI Builder.
Different playbooks for the same record type can use different
playbook experiences. For example, if a complaint case uses
two playbooks, each playbook can use a different playbook
experience.

Set up a record generator for a Create a record for a case type by using a playbook record
case type
generator. With a record generator, the system creates a record
as the first step in the playbook.
Configure an optional activity
for a playbook

Configure optional playbook activities so that agents and
fulfillers can insert activities during a playbook run. For
example, a customer may want to schedule an optional activity
such as making an appointment to visit a location.

Playbook experiences
Playbook experiences are used to customize the look and feel of a playbook. Settings in a
playbook experience control how UI Builder
renders a playbook in the CSM workspaces.
System administrators can configure settings in the playbook experience record that determine
the playbook stage and activity visibility.
Within UI Builder, system administrators can configure playbook component settings such as:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

846


<!-- page 847 -->
• Selecting a playbook experience
• Selecting an activity view
• Enabling compact mode
For more information, see Configuring playbooks for Customer Service Management.
Select a playbook activity view
The activity view determines how the stages and activities are displayed in the playbook.

Before you begin

Role required: admin

About this task

Users with the system administrator role can select the playbook activity view in the playbook
component configuration in UI Builder.

Procedure
1. Navigate to UI Builder and open the playbook component.
2. Select the playbook component.
3. In the Config tab, select a view in the Activity View field.
Choice

Description

Stacked

Displays the stages in the playbook life cycle
panel and cards for each of the activities in
the current stage in the playbook work area.

Focused

Displays the stages and activities in the play­
book life cycle panel and the current activity
in the playbook work area.

4. Select Save.
Configure playbook stage and activity visibility
Configure the visibility of playbook stages and activities that are pending or that a user cannot
access.

Before you begin

Role required: admin

About this task

Use the following fields in the playbook experience configuration record to control the visibility of
playbook stages and activities.
• Inaccessible Data Visibility: Accessibility is determined by user permissions. When enabled,
the user cannot see an activity if they do not have permissions to view the data associated
with the activity. If all activities in a stage are inaccessible to the user, the stage is also hidden.
• Pending Item Visibility: Pending activities are those activities that have not yet been triggered.
Select one of the options in this field to show or hide pending activities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

847


<!-- page 848 -->
Procedure
1. Navigate to All > Playbook Experience > Playbook Experiences.
2. Select a Playbook experience.
3. In the Configurations related list, click the desired configuration.
4. Select Hide Inaccessible Activity from the Inaccessible Data Visibility field drop-down list to
hide the activities in a stage that the logged-in user cannot access.
The default value for this field is false.
5. In the Pending Item Visibility field, select one of the following options.
Option

Description

◦ Shows all activities in a stage.
Show pending stages and activities

◦ Pending activities are grayed out.
◦ Default setting.

Hide pending activity

Hide pending activities and stages

◦ Hides the pending activities in a stage.
◦ If all activities are pending and hidden, the
stage is grayed out.
◦ Hides the pending activities in a stage.
◦ If all activities are pending and hidden, the
stage is also hidden.

6. Click Update.
Related topics
Configure an optional activity for a playbook
Set up a record generator for case type
Create a record for a case type by using a playbook record generator. With a record generator,
the system creates a record as the first step in the playbook.

Before you begin

Role required: playbook_experience.admin

About this task

A record generator is set up for a specific table. You can specify the name of the record generator
activity, the form view, and the playbook that a user sees before a record is created. You can
also configure the declarative action that are used to submit the form. For more information on
declarative actions, see Declarative actions.

Procedure
1. Navigate to All > Playbook Experience > Record Generators.
2. Select New.
3. Fill in the fields on the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

848


<!-- page 849 -->
Playbook Experience Record Generator form fields
Field

Description

Table

Table that the new record page should use for
the record generator entry.

Process Definition

Process definition that you want to display
before a record is created. All activities are
marked pending. If no process is running after
the record is created, a playbook manually
triggers this process definition.

Create Record Activity Name

Name to display on the record generator
activity that is inserted as the first step within
the specified process definition.

Active

Option to activate the record generator.

Order

Integer that determines the precedence of this
configuration in relation to other activities in a
Playbook experience. The lower the number
means that it's more likely a user selects it
over another configuration. Use numbers that
are in the hundreds. For example, 100, 200,
300, or 400.

Create Record Form View

Form view for the new record form embedded
within the inserted activity.

Template Fields

Optional field values that can be pre-filled in
the new record form.

4. Select Submit.
Configure an optional activity for a playbook
Configure optional playbook activities so that agents and fulfillers can insert activities during a
playbook run. For example, a customer may want to schedule an optional activity such as making
an appointment to visit a location.

Before you begin

Role required: playbook_experience.admin

About this task

Configure optional playbook activities in Process Automation Designer (PAD).
Although you can insert global optional activities anywhere in the playbook, you can only insert
stage-specific optional activities when a specified stage is active in the playbook. You can also
add other global optional activities such as similar records, similar documents, and managed
documents.

Note: Some optional activities may require additional plugins. For example, for the
Approval Request activity, if the approval action needs to be exposed to the customer
via the service portal, you must install the plugin portal store app (com.snc:appcustomer-service-portal) release version 23.2.4. To display the activities for the similar
and managed documents in PAD, you must install the document management plugin
(com.snc.platform_document_management).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

849


<!-- page 850 -->
Procedure
1. Navigate toAll > Process Automation > Workflow Studio.
2. Select the Playbooks tab at the top of the page.
3. Select a playbook from the Label column.
4. See the optional activities under all the stages by turning on the toggle for Optional activities.
5. Select Add optional activity at any stage or globally.
6. Under Add activity, select Playbook for Customer Service Management > Approval Request.
A new approval request optional activity is created.
7. Select the Approval Request optional activity.
8. Under Edit activity properties, in the Details tab, add a Label, Description, Activity
Definition, and set Start Rule to Manual.
This setting is the Optional Activity indicator.
9. Save the new activity record.
10. Select View all properties.
11. Navigate to Automation tab > parent records and select the parent record.
12. Optional: Go to the Automation tab and set the values of the starting state and ending state.
The values for the starting and ending states are derived from the value field of the sys_choice
table.
(Optional) To create a custom state flow, see Create a state flow . Ensure that the class of the
state flow is “Customer Service Case Flow." You can also configure more declarative actions for
the optional activity. For more information, see Creating new declarative action assignments .
13. Select Done.
14. Select Activate.
Playbooks for Portals
With Customer Service Management (CSM) playbooks on service portals, you get the stepby-step guidance for the case flow process and the contextual information that you need to
successfully complete each stage of the flow and its associated activities.
Guided intake with playbooks makes it effortless to fill out a form or provide information for a
case. Playbooks offer a clear roadmap that indicates your progress in the submission process
and the remaining steps that you need to complete. If needed, you can navigate back to a
previous step. You’re also presented with the options and input controls that enable you to
quickly and accurately input information. Additionally, you can save an application or form that is
not yet ready for submission and resume work on it later.

Get started
1. Set up predefined Playbooks for Portals
2. Set up custom Playbooks for Portals
3. View cases in Draft state on the portal
4. Activate a new onboarding playbook with self-service
5. Enable a reflow for your UI Builder pages
6. Using Playbooks for Portals

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

850


<!-- page 851 -->
Set up predefined Playbooks for Portals
Set up predefined Playbooks for Portals to provide end users with the playbook experience on
your service portal.

Overview of Playbooks
Playbooks guide users through complex processes and enable them to save their progress and
resume their work when convenient. They can also get the information that they need for each
stage of the flow and its associated activities with the Customer Service Management (CSM)
playbooks on service portals.
You can activate Playbooks for Portals if you have the admin role. The base system is delivered in
an inactive state. You must activate it in the Playbooks (PAD) for the user to see it.
Plugins required:
• Playbooks for Customer Service Management: sn_csm_playbook
• Playbook Experience: sn_playbook_exp
• Case Playbook for Onboarding: sn_onboarding (required if you need the predefined playbook
experience)
• Case Playbook for Product Support: sn_product (required if you want to use the product case
playbook and record generator)
®

Plugins are available from the ServiceNow Store. For more information, see Playbook plugins.

Summary of steps for setting up predefined Playbooks for Portals
You can set up Playbooks for Portals using the following high level steps.
1. Activate the draft state in the onboarding case type state. For more information, see Activate
the draft state for the onboarding case type.
2. Activate the record generator
3. Activate a new onboarding playbook with self-service
4. Activate guided onboarding in the playbook content items. For more information, see Activate
guided onboarding in Playbook content items.
5. Add a Process tab to the Portal so that users can see where they are in the Playbook process.
See Add the Process tab to the portal for more information.
Activate the draft state for the onboarding case type
Activate a draft state for the onboarding case type so that the case remains in the draft state
during the intake stage until the case is submitted.

Before you begin

Role required: admin

Procedure
1. Navigate to All > sys_choice.list.
2. Select the record with Table name - sn_onboarding_case with the Element field value as
state, and the Label field name as Draft.
3. Select Edit.
4. Clear the Inactive check box.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

851


<!-- page 852 -->
5. Select Update.
6. Navigate to System Definition > Scheduled Job and search for sys_id ba5ba3d8944e7110f87759453e4c7084 or Name - Update My Lists URL for draft cases.
7. Select Execute Now.
This action excludes the Draft cases from the list filter on the My List tab during the initial page
load.
8. Optional: If you’re using a custom case type table and you do not see the relevant state upon
filtering, you might have to assign requisite ACLs for the state field and its associated values.
Activate the record generator
Activate the record generator to the portal case and display the new guided playbook to the user.
Portal users can navigate through the playbook steps to complete the case intake.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Playbook Experience > Record Generators.
2. In the list, select the Table name - sn_onboarding_case with Process Definition name Onboarding with Self-Service.
3. Select Edit.
4. Select the Active check box.
5. Select Update.
Activate a new onboarding playbook with self-service
Activate a new onboarding playbook with self-service in Playbooks (PAD) to ensure that the new
playbook is visible.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Process Automation Designer.
2. On the Processes tab, select the label Onboarding with Self-Service.
3. From the More actions menu, select Activate.
Verify that the previous PAD process is deactivated.
Activate guided onboarding in Playbook content items
Activate guided onboarding in playbook content items and verify that the new content item
launches the playbook record generator that is associated with it.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Playbook Experience > Playbook Content Items.
2. Select New Guided Onboarding Request.
3. Select Edit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

852


<!-- page 853 -->
4. Select the Active check box.
5. Select Update.
Add the Process tab to the portal
Add a Process tab to the CSM ticket page so that users can track the playbook process.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Standard Ticket > Standard Ticket Configuration.
2. Open the configuration for your table.
3. In the Tabs related list, click New.
4. In the Tab Configuration form, fill in the fields as follows.
Tab Configuration form

Tab configuration form fields
Field

Data

Type

Custom

Tab name

Process

Advanced

Toggle to active

Visible script

Add one or more playbook sysIds

Widget

Playbook

Widget parameters

Widget 1:
Name: playbook_uib_page_url
Value: /now/playbook-portal/
csm_case_process
Widget 2:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

853


<!-- page 854 -->
Field

Data

Name: playbook_experience_id
Value: 0d71033773f220109edbc1f52ff6a741
5. Select Submit.

Note:
For the user to view the process tabs in the portal, ensure you have assigned the
requisite ACLs.
View cases in Draft state on the portal
Customers can view a list of cases in the Draft state from the Customer and Consumer Service
Portals.
When using playbooks on the Customer Service Portal or Consumer Service Portal, customers
can view a list of cases in the Draft state by navigating to Home > My Lists > My Draft Cases.
Selecting a case in the Draft state returns the user to the playbook intake stage and activities.

Enabling the Draft state
The Draft state for the base case is shipped as inactive by default. Customers can manually
activate the Draft state in the Choice [sys_choice] table.
1. Navigate to sys_choice.list.
2. Select the following record:
◦ Table = sn_customerservice_case
◦ Element = state
◦ Label = Draft
3. Select Edit.
4. Clear the Inactive check box.
5. Select Update.
For more information, see Choice list field type

.

Case draft state values system property
The sn_customerservice.case_draft_state_values system property stores a
comma-separated list of values for the Draft state choice list values for the cutomer service base
case and case types. The default value for this property is 0.
Set up custom Playbooks for Portals
Create custom Playbooks for Portals to provide end users with the playbook experience on your
service portal.

Overview of Playbooks
Playbooks guide users through complex processes and enable them to save their progress and
resume their work when convenient. They can also get the information that they need for each
stage of the flow and its associated activities with the Customer Service Management (CSM)
playbooks on service portals.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

854


<!-- page 855 -->
You can activate Playbooks for Portals if you have the admin role. The base system is delivered in
an inactive state. You must activate it in the Playbooks (PAD) for the user to see it.
Plugins required:
• Playbooks for Customer Service Management: sn_csm_playbook
• Playbook Experience: sn_playbook_exp
• Case Playbook for Onboarding: sn_onboarding (required if you need the predefined playbook
experience)
• Case Playbook for Product Support: sn_product (required if you want to use the product case
playbook and record generator)
®

Plugins are available from the ServiceNow Store. For more information, see Playbook plugins.

Summary of steps for setting up Playbooks for Portals
You can set up Playbooks for Portals using the following high level steps.
1. Define your process using Workflow Studio. See Create a playbook

for more information.

2. Activate the record generator. For more information, see Activate the record generator.
3. Set up ACLs (Access Control Lists) to provide the appropriate read, write, and create
permissions for users. See Explicit Roles in CSM for more information.

Note: Add write and create roles with a condition based on "State=draft" so that users
can only edit the fields in the draft state.
4. Create a Playbook Content Item so that users can navigate to the Playbook experience. See
Create a Playbook Content Item for more information.
5. Set up a redirection widget so that users are redirected to the playbook intake experience
once the state changes from "draft" to "new." See Set up a redirection widget for more
information.
Create a Playbook Content Item
Create a content item of Playbook type on portal so that users can navigate to the playbook
experience. These content items are specifically configured to enable the playbook experience
on portals.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

855


<!-- page 856 -->
Procedure
1. Navigate to All > Playbook Content Items > New.
Content item form

2. In the form, fill out the fields.
Relevant Content Item form fields
Field

Definition

Name

The name of the content item you are
creating

Table

Map your table here

Record ID

Always enter -1

Playbook experience

The name of your playbook experience

Playbook experience record generator

Map your record generator

Portal page

csm_intake standard with the Playbooks
for Customer Service Management
application.

Note: You can clone the
csm_intake page and modify it per
your requirements.
Title

Title that appears at the top of the page.

3. Select Submit.

What to do next

After completing this step, you can navigate to the portal where the catalog is mapped and
execute the content item. The playbook intake experience opens, with the record generator
mapped as the first activity.
Set up a redirection widget
You can set up a widget to reroute the user to the csm_ticket page once the record state
changes from draft to new, indicating that the user has completed the intake process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

856


<!-- page 857 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Portal > Widgets.
2. Open the widget CSM Intake Redirect.
3. Add the following code the in the client controller section.

Note: As a best practice, clone the CSM Intake Redirect widget to modify and replace it
on the csm_intake page, or on your custom page.
spUtil.recordWatch($scope, 'sn_customerservice_case',
c.data.filter, function(response) { //replace
sn_customerservice_case with your table.
if (response.data.operation ==
"update" && response.data.record.state &&
response.data.record.state.value != "0") { //checking if the
state is not draft
if
(($window.location.href).indexOf('?id=csm_ticket&') == -1);
$window.location = "?id=csm_ticket&table=" +
c.data.table + "&sys_id=" + c.data.sys_id;
}
});
4. Select Update.
Enable a reflow for your UI Builder pages
Enable a reflow for your UI Builder pages. This way, when you’re resizing a window, you don't
have to scroll horizontally.

Before you begin

Role required: admin

About this task

The reflow feature adjusts the properties of the components when you’re resizing a window. It
accommodates smaller screen sizes and changes the component’s properties for the different
screen sizes.

Procedure
1. Navigate to All > UI Builder.
2. Under Experiences, select Playbook Experience Portal.
3. Open a specific page or variant: Either CSM Create Case Process or CSM Case Process, for
which you want to adjust the reflow.
4. Edit the Playbook Activity Viewer component settings.
5. On the Styles tab in the UI Builder, set the height of the activity viewer to 100vh.
6. Navigate to the component Resizeable Panes > Panes configuration and copy the code in the
default displayed pane by editing the scripted property value.
// Resizable Panes default displayed pane scripted value
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

857


<!-- page 858 -->
// when in left/right pane position
function evaluateProperty({api, helpers}) {
if(!api.data.playbook_custom_layout.compactMode) return
"both";
return (api.data.playbook_custom_layout.selectedItem ||
{}).stageContextId ? "right" : "left";
}
// when in top/bottom pane position
function evaluateProperty({api, helpers}) {
if (!api.data.playbook_custom_layout.compactMode) return
"both";
return (api.data.playbook_custom_layout.selectedItem ||
{}).stageContextId ? "bottom" : "top";
}
7. Select Done.
For more details, see Reflow for playbook components

.

Configure dynamic related records
System administrators can configure the dynamic related records feature to display related
records in the contextual side panel in CSM Configurable Workspace. These records
dynamically change based on the context of the current record or playbook activity.
Configuring the dynamic related records feature involves several types of records. See the
following table for details about these record types.
• Related record contexts
• Related record definitions
• Context related record definitions
Dynamic related record types
Record type

Related record context

Description

Defines the context in which related records
appear in the Related Records tab. You
can create a related record context for the
following types of records:
• A source record, such as a customer service
case
• A playbook activity, such as adding
additional members to an onboarding case
A context record identifies the following
information:
• The table that contains the type of record for
which related records are being configured.
• Additional conditions that apply to the
selected table. These conditions determine

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

858


<!-- page 859 -->
Dynamic related record types (continued)
Record type

Description

if the related record definitions for the
selected table are executed at runtime.
• The types of related records to display, such
as SLAs or emails.
Related record definition

Identifies one specific type of data to be
retrieved, such as SLAs or active contracts.
You can create a related record definition for
each type of data to include in the Related
Records tab and then associate one or more
definitions with a context record.

Context related record definition

Defines the relationship between a context
record and its associated definition records.
When you open a context record, you can
see the associated definition records in the
Context Related Record Definitions related list.

For more information about these tables, including field descriptions, see Dynamic related
record tables.

How the context and definition records work
The context record defines the context in which related records appear in the Related Records
tab. This includes conditions to apply to the selected record type. For example, to create a
context record for an onboarding playbook activity:
1. Select the table that stores the activity: Activity Execution [sys_pd_activity_context].
2. Define additional conditions that apply to the selected table:
◦ [Activity.Process definition] [is] [Onboarding playbook]
◦ [Activity] [is] [Add additional members]
These conditions determine if the related record definitions for the selected table are
executed at runtime. If the conditions evaluate to true, the definitions are executed. If false, the
definitions are ignored. If a context has no conditions, this evaluates to true.
3. Select the related record definitions to execute: Additional Members
At runtime, the system checks to see if there are related record contexts that match the current
record or playbook activity.
• When it finds a match, the system evaluates the conditions defined in the context.
• If the conditions evaluate to true, the system executes the related record definitions for the
context.
To continue with the example above, an agent using the Case Playbook for Onboarding is
currently working on the activity to add additional members. The system performs the following
actions to display the correct related records:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

859


<!-- page 860 -->
• Checks the active contexts and finds Onboarding Additional Members.
• Evaluates the conditions in the context and determines that they evaluate to true.
• Executes the Additional Members related record definition.
• Retrieves and displays the correct set of records from the table identified in the
Additional Members related record definition. In this case, the Related Party
[sn_customerservice_related_party] table.
The definition record uses a script to define which related records are retrieved based on
the context. This record also includes the table where the related record data is stored. At
runtime, the script evaluates the context of the current record or playbook activity, along with any
conditions, and dynamically displays the related record data.

Dynamic related record configuration tasks
Configuring the dynamic related records feature includes the following tasks:
• Configure the related record contexts and definitions to identify which related records to
display in the Related Records tab.
• Configure the card layout for the records displayed in the Related Records tab.
• Configure the maximum number of related records to display.

Related Records list card layout
Records appear in the Related Records tab in a card format. This format is created with Entity
View Action Mapper
(EVAM), a ServiceNow AI Platform application that standardizes how
different data sources display in cards and lists.
EVAM uses view configurations and view templates to determine how information for each type
of related record is displayed.
• EVAM view configuration: Combines conditions, the table and table fields, and declarative
actions with an associated view template.
• EVAM view template: Contains the JSON used to give the necessary information for the card
display and use.
EVAM view configurations can be grouped together to create configuration bundles. The
Dynamic Related Records for Configurable Workspace plugin includes a configuration bundle,
dynamic_related_records_bundle, which contains view configurations and view
templates for the dynamic related records feature.
The system administrator can modify the view configurations in the
dynamic_related_records_bundle or create new view configurations. This includes
selecting the fields that are displayed on the card for each type of record. For more information,
see:
• Define an EVAM view configuration
• Define an EVAM view template

Related record definitions included with the plugin
The Dynamic Related Records for Configurable Workspace plugin includes several related
record definitions for case records. To view a list of definitions, navigate to Dynamic Related
Record > Related Record Definitions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

860


<!-- page 861 -->
The system administrator can make any of these definitions available to agents by adding them
to the related records shared page in UI Builder.
Related Record Definitions table
Related record definition

Description

SLAs

Displays SLAs for a case, including information
from the following fields:
• Stage
• SLA definition
• Start time
• Business time left

Emails

Displays emails for a case, including
information from the following fields:
• Notification type
• Subject
• Recipient
• Date created

Escalations

Displays escalations for a case or for the
account and contact or consumer, including
information from the following fields:
• State
• Number
• Escalation severity
• Source record

Blocked By

Displays blocking tasks for a case, including
information from the following fields:
• Blocking task
• Blocking reason

Child Cases

Displays child cases related to a case,
including information from the following fields:
• Number
• Short description
• Account and contact
• Consumer

Dynamic related records
Display related records in the Contextual side panel in CSM Configurable Workspace that
dynamically change based on the context of the current record or playbook activity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

861


<!-- page 862 -->
The dynamic related records feature provides customer service agents with easy access to the
information they need when they need it. Agents can view related records in the Contextual side
panel without navigating away from the current tab and searching for information in other related
lists. This feature also enables users to display related records without requiring any type of
reference or parent-child relationship.
Different types of agents can use dynamic related records to see different information. For
example:
• A front-line agent creating a new case can see similar, recently opened cases.
• A middle-office agent reviewing a complaint case can see active contracts for the customer.
• A back-office agent can view emails for a selected playbook activity.
To view related records, click the Related Records tab in the Contextual side panel in CSM
Configurable Workspace. Records appear in the Related Records list as read-only cards.
Related Records tab in the Contextual side panel

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

862


<!-- page 863 -->
Configuring dynamic related records
System administrators can configure the dynamic related records feature and define the
following information:
• Context records that specify the type of record for which related records are displayed, such
as a case record or a playbook activity. A context can also specify any conditions for the record
type that must be met in order for related records to be displayed.
• Definitions for each specific type of related record to display, such as SLAs or contracts.
• Relationships between context records and their associated definition records.
System administrators can also configure the related record card format. For more information,
see Configuring dynamic related records.

Using dynamic related records
Agents can search the Related Records list by entering text in the search field or filter the list to
display records of a specific type, such as SLAs or active customer contracts. Agents can expand
a card to show more a more detailed view or open the list in a sub-tab. If agents have create
permission, they can also create new related records of the selected type.
For more information about these agent actions, see Using the Related Records tab in the
contextual side panel.

Dynamic related records plugin
The Dynamic Related Records for Configurable Workspace plugin (com.snc.uib.sn_dyn_rel_rec)
is available from the ServiceNow Store.
Install any ServiceNow Store applications by requesting them from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
This plugin provide agents with access to related information based on the context of the current
record or playbook activity. System administrators can configure related record definitions that
make data available in context to the action that the agent is performing.
This plugin adds the Dynamic Related Record menu and the following modules to the application
navigator:
• Related Record Contexts
• Related Record Definitions
This plugin also adds several related record definitions. For more information, see Related record
definitions included with the plugin.

Using dynamic related records with Playbooks for Customer Service
Management
The Playbooks for Customer Service Management plugin (sn_csm_playbook) adds the dynamic
related records feature to CSM Configurable Workspace. It also includes the Case context record
and several related record definitions.
The Case Playbook for Onboarding, Case Playbook for Complaints, and Case Playbook for
Product Support applications include additional context records and related record definitions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

863


<!-- page 864 -->
Related topics
Configure dynamic related records
Using the Related Records tab in the contextual side panel
Using the Related Records tab in the contextual side panel
Agents can view, search, and sort the records in the Related Records tab in the contextual side
panel.
The Related Records tab displays related records that dynamically change based on the context
of the current record or playbook activity. The records that are displayed in the Related Records
tab depend on the following settings:
• The related record contexts and definitions that have been configured for a record or playbook
activity.
• The agent's access permissions to data.
Related Records tab in the contextual side panel
Task

View related records in the
contextual side panel

Steps

Click the Related Records tab (
Records list.

) to view the Related

Related records appear in the list in a card format. The
initial set of records displayed in the list is determined
by the record type selected in the filter at the top of the
list.
Select the type of related record to
view

Use the filter at the top of the Related Records list to
select the type of related records to view. Agents can
also use the filter to see the current selection.
1. Click the filter icon (

).

2. Select a record type from the dropdown menu.
The dropdown menu includes the related lists that have
been configured for the parent record.
Search the related records list

Use the search field at the top of the Related Records
list to perform a text search. Records that match the
search text are highlighted.
1. Enter the search text in the search field at the top of
the Related Records list.
2. Click the search icon.

Note: The search field is grayed out if search
is not available for the selected type of related
records.
Open a related record in a sub-tab

Click a card in the Related Records list to open the
record in a sub-tab under the parent record. In the sub-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

864


<!-- page 865 -->
Related Records tab in the contextual side panel (continued)
Task

Steps

tab, the agent can view the record details and perform
available actions.
Open the related record list in a list
view in a sub-tab

Create a new record for the selected
related list

Click the list view icon (
) to display the related
records in a list view in a sub-tab under the parent
record.
Create a new record for the record type currently
selected in the Related Records list. This action opens a
new record form in a sub-tab under the parent record.
1. Click the create record icon (
Related Records list.

) at the top of the

2. Fill in the fields on the record form and click Save.
Related records shared page
The Related Records shared page enables you to view records that are related to the current
record or playbook activity in the contextual side panel.
The ui_builder_admin role or administrator role can configure a record page in UI Builder and use
the Related Records shared page to add a Related Records tab on the contextual side panel. The
Related Records tab shows the list of related records in card format.
Use the Related Records shared page to display records from tables that have a configured
relationship to the main record. This can include multiple types of related records such as SLAs,
active contracts, and emails.
The Related Records shared page:
• is part of the Base Agent Workspace app shell.
• is a public page that is available in the page templates.
• is a generic page that can be embedded in the contextual side panel for any page.
For more information about the Related Records shared page, see the Related Records
component
information on the ServiceNow Developer Site.
Dynamic related record tables
The dynamic related records feature uses different tables to store context and definition
information.
The following tables support the configuration of the dynamic related records feature. These
tables extend the sys_metadata table.

Related Record Context table
Records in the Related Record Context [sn_related_record_context] table define the context in
which related records appear in the Related Records tab. This includes the following information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

865


<!-- page 866 -->
• The selected table. You can create context records for source records (such as customer
service cases) or playbook activities (such as adding additional members to an onboarding
case).
• Additional conditions that apply to the selected table. These conditions determine when the
related record definitions for the selected table are executed.
• The related record definitions to execute. These definitions identify the data to be retrieved,
such as SLAs or emails.
Related Record Context table fields
Field

Description

Name

The unique name of the context record.

Applies to table

The table that stores the record type for the context record.
To display related records for a source record, select the
table that stores the source record. For example, Case
[sn_customerservice_case].
To display related records for a playbook activity, select
the table that stores the activities: Activity Execution
[sys_pd_activity_context].

Primary reference field

The primary field from the Applies to table that is passed to
the Context Related Record Definition for evaluation. The value
is used by the scripted query in the definition.
The following data types are supported:
• Sys ID
• Doc ID
• Reference

Secondary reference field

The secondary field from the Applies to table that is passed to
the Context Related Record Definition for evaluation. The value
is used by the scripted query in the definition.
The following data types are supported:
• Sys ID
• Doc ID
• Reference

Application

The application to which the context record applies. This is a
read-only field.

Active

Enables the context record.

Inherited

When enabled, the context record also considers tables that
extend from the Applies to table.

Conditions

Conditions that are applied to the records in the Applies to
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

866


<!-- page 867 -->
Related Record Definition table
Records in the Related Record Definition [sn_related_record_definition] table identify one type of
data to be retrieved, such as active contracts, case tasks, or SLAs. A definition record includes:
• The display label, which appears in the filter dropdown list in the Related Records tab.
• The table to be queried from. For example, the Email [sys_email] table.
• If needed, primary and secondary reference tables.
• Scripted conditions that further specify which fields to query from.
You can create definition records for each type of data to include in the Related Records tab and
then associate the definitions with one or more context records.
Related Record Definition table fields
Field

Description

Display label

The unique name of the related record definition. This label
appears in the filter list in the Related Records tab.

Primary reference table

The primary table used in the definition script. At runtime, the
script expects to get passed a record of this type.
If you entered a data type in the Primary reference field in the
related record context, enter the table for that data type.

Secondary reference table

The secondary table used in the definition script. At runtime,
the script expects to get passed a record of this type.
If you entered a data type in the Secondary reference field in
the related record context, enter the table for that data type.

Application

The application to which the definition record applies. This is a
read-only field.

Queries from

The table that stores the related record data to be retrieved.

Active

Enables the definition record. A definition must be active for
the related records of that type to be displayed in the Related
Records tab.

Script

Create a script that defines which records are retrieved based
on the context.

Context Related Record Definition table
The Context Related Record Definition [sn_m2m_context_related_record_defn] table defines the
relationship between a context record and its associated definition records.
When you open a context record, you can see the associated definition records in the Context
Related Record Definitions related list.
Context and associated definition records
Field

Description

Related record context

The context record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

867


<!-- page 868 -->
Context and associated definition records (continued)
Field

Description

Related record definition

The name of the related record definition associated with the
context record. The system uses this definition to determine
which records to retrieve.

Application

The application to which the context record applies. This is a
read-only field.

Order

The order determines where the related record type appears in
the filter list in the Related Records tab.
The order for this related record definition is compared with
the order of the other definitions associated with the Related
record context to determine the order of appearance in the
filter list.
If more than one context applies to a record, the system
evaluates the order for all of the related record types. If there
is a duplicate related record type, the system takes the record
type with the lowest order value.
Enables the Related record definition for this context record.

Active

Configure related record contexts
This type of configuration record defines the context in which related records appear in the
Related Records tab.

Before you begin

Role required: admin

About this task

In a related record context, the system administrator configures the following information:
• The table that stores the record type for the context. You can create a context for a source
record, such as a case, or for a playbook activity.
• Conditions to apply to the selected table. These conditions determine if the related record
definitions associated with this context are executed at runtime.
◦ If the conditions evaluate to true, the system executes the related record definitions.
◦ If the conditions evaluate to false, the system ignores these definitions.

Note: If a context has no conditions, this evaluates to true.
• The related record definitions to execute. Associate a definition for each type of related record
to display for this context.

Procedure
1. Navigate to All > Dynamic Related Record > Related Record Contexts.
2. Click New.
3. Enter a Name for the context record.
4. Select the table that stores the record type for the context in the Applies to table field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

868


<!-- page 869 -->
5. In the Primary reference field, select the field from the Applies to table that is passed to the
Context Related Record Definition for evaluation.
The following data types are supported:
◦ Sys ID
◦ Doc ID
◦ Reference
6. Optional: If desired, select another reference field from the Applies to table in the Secondary
reference field.
7. Enable the Inherited field if you want the context record to also consider tables that extend
from the Applies to table.
8. Use the condition builder to select conditions that are applied to the records in the Applies to
table.
For example, if you are creating a context for a playbook activity, you can use the condition
builder to identify the playbook and then the specific activity within that playbook.
9. Click Submit.
The context is added to the Related Record Contexts list.
Associate related record definitions with a related record context
Associate the desired related record definitions with a context record to determine which related
records appear for the selected record type.

Before you begin

Role required: admin

About this task

A related record context includes the following information:
• The table that stores the record type for the context (source record or playbook activity).
• Conditions to apply to the selected table which determine if the associated related record
definitions are executed at runtime.
• The related record definitions to execute.

Procedure
1. Navigate to All > Dynamic Related Record > Related Record Contexts.
2. Click the desired context.
3. In the Context Related Record Definitions related list, click New.
You may need to change the application in order to see the New button:
a. Click the system settings icon in the upper right corner.
b. Click Developer.
c. Select the Application and close the pop-up window.
4. Click the lookup icon in the Related record definition list.
5. Select a definition from the Related Record Definitions list.
6. Assign an order number to the definition in the Order field.
The order determines where the related record type appears in the filter list in the Related
Records tab.
7. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

869


<!-- page 870 -->
Configure related record definitions
Related record definitions identify the types of records that the dynamic related records feature
can display in the Related Records tab.

Before you begin

Role required: admin

About this task

The system administrator can create relate definitions and associate the desired definitions with
a related record context. For example, the admin can associate SLA and escalation definitions
with the Case related record context. Definitions can be associated with multiple contexts.
The Dynamic Related Records for Configurable Workspace plugin includes several related
record definitions for case records. For more information, see Related record definitions included
with the plugin.

Procedure
1. Navigate to All > Dynamic Related Record > Related Record Definitions.
2. Click New.
3. Enter a name for the definition in the Display label field.
This label appears in the filter dropdown list in the Related Records tab. Agents click the filter
icon and select the type of related record to view in the Related Records list.
4. In the Queries from field, select the table that stores the related record data to be retrieved.
5. Select a table in the Primary reference table field.
The primary table used in the definition script. At runtime, the script expects to get passed
a record of this type. If you entered a data type in the Primary reference field in the related
record context, enter the table for that data type.
6. Optional: If desired, select a table in the Secondary reference table field.
The secondary table used in the definition script. At runtime, the script expects to get passed
a record of this type. If you entered a data type in the Secondary reference field in the related
record context, enter the table for that data type.
7. Use the Script field to define which records are retrieved based on the context.
At runtime, the script evaluates the current record's context, along with any selected
conditions, and dynamically displays the related records.
8. Click Submit.
Configure the maximum number of related records to display
Configure the maximum number of related records to display in the Related Records tab in the
contextual side panel in CSM Configurable Workspace.

Before you begin

Role required: ui_builder_admin, admin

About this task

As part of configuring the Related Records shared page, the administrator can define the
maximum number of related records that are displayed in the Related Records tab in the
contextual side panel. This is defined as part of the UI Builder data transform configuration. The
default value is 100 records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

870


<!-- page 871 -->
Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. In the My experiences list, click the desired workspace.
3. In the Page menu, select Record.
The Page menu is in the upper left corner of the UI Builder interface.
4. Click Edit in original scope.
5. In the Content list below the Page menu, click the Contextual sidebar component.
6. In the contextual sidebar configuration panel on the right side of the UI Builder interface, click
the Config tab.
7. In the Tabs list, click Related Record.
8. Click Edit Content.
9. Click the Data icon in the bar on the left side of the UI Builder interface.
10. Under Local data resource instances, click Look Up Related Records.
11. In the Configuration tab for the data resource, enter a value in the Max results field.
12. Click Save.
Configure Customer Central
Provide customer service agents with all the information about a customer in one central place
by configuring the Customer Information and Customer History views for Customer Central.

Before you begin

Role required: admin

About this task

Customer Central provides customer service agents with all the information about the customer
in one central place. It enables them to quickly zoom in on the customer issue and provide
efficient and empathetic service to their customers.
Customer Central consists of two views, Customer Information and Customer History. In CSM
Configurable Workspace, Customer Central is displayed on the interaction, account, contact, or
consumer records.
For more information, see Customer Central.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started.
3. In the Customer Central - Customer Information or Customer Central - Customer History
category, view the list of tasks to configure the feature.
Customer central configuration tasks
Task

Description

Activate Customer Central

The Customer Central application
(com.sn_csm_customer_central)
is activated with the CSM
Configurable Workspace application
(com.snc.uib.csm_agent_workspace). The
CSM Configurable Workspace application is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

871


<!-- page 872 -->
Task

Description

activated with the Customer Service plugin
(com.sn_customerservice).

Note: Starting with the
Yokohama release, the
Customer Central application
(com.sn_csm_customer_central) has
moved to the ServiceNow Store.
Configure the Customer Information view
using CSM Configurable Workspace

Configure the display of the Customer
Information view using CSM Configurable
Workspace.

Configure the Customer History view

Configure the display of the customer history
view.

Configure the Customer History component

Starting with the Yokohama release, the
Customer History component displays
customer activity information on some record
pages in CSM Configurable Workspace.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Activate Customer Central
Activate the Customer Central plugin to use Customer Central.

About this task

Starting with the Yokohama release, the Customer Central application
(com.sn_csm_customer_central) is activated with the CSM Configurable Workspace application
(com.snc.uib.csm_agent_workspace). The CSM Configurable Workspace application is activated
with the Customer Service plugin (com.sn_customerservice).
Starting with the Yokohama release, the Customer Central application
(com.sn_csm_customer_central) has moved to the ServiceNow Store.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.sn_csm_customer_central.
3. Select Activate.

Note: To use Customer Central demo data, activate the Customer Service Management
Demo Data (com.snc.customerservice.demo) plugin.
Create data for Customer Central
When upgrading from an existing release, customers must run a fix script to create data for
Customer Central.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

872


<!-- page 873 -->
Before you begin

Role required: admin

About this task

This task applies to customers who are upgrading their release version and installing Customer
Central for the first time. Running the fix script creates data in the Activities table for Customer
Central.

Procedure
1. Navigate to All > System Definition > Fix Scripts.
2. Select the Create activities for last N days data fix script.
3. Select Run Fix Script.
Configure Customer Central properties
Set how many days you want to display data from in Customer Central.

Before you begin

Role required: admin

About this task

This property applies to both the Customer Information and Customer History views.

Procedure
1. Navigate to All > Customer Central > Administration > Properties.
2. Enter the number of days you want to display data from in Customer Central.
The default is set to 30.
Configure the Customer Information view using CSM Agent Workspace
Configure the display of the Customer Information view using the CSM Agent Workspace.

Before you begin

Role required: admin

About this task

The Customer Information view displays all touch points that a customer has had with a contact
center in the form of information cards.

Note: The following steps can be used to configure the Customer Information view in the
CSM Agent Workspace. This is the workspace that is configured using the ServiceNow AI
Platform interface.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started
3. In the Customer Central - Customer Information category, view the list of tasks to configure the
feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

873


<!-- page 874 -->
Customer Central - Customer Information configuration tasks
Task

Description

Configure your settings for the Customer
Information view

Set the Customer Central properties as
required.

Configure customer information lists

Configure the lists to display on the Customer
Information view. For example, a list can be
recent cases or recent chat interactions.

Configure customer information reports

Configure which reports to display on the
Customer Information view.

Configure customer information records

Configure the records to display on the
Customer Information view. For example,
a record could provide information on the
contact or consumer.

Configure customer information report
groups

Configure the groups of reports to display in
a single section on the Customer Information
view.

Configure customer information contexts

Associate each list, record, report, and
report group configuration you created with a
consumer or contact context, depending on
who you want to display the information for.

4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Configure lists for the Customer Information view
Configure lists for the Customer Information view.

Before you begin

Role required: admin

About this task

Lists are displayed in the Customer Information view in Agent Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

874


<!-- page 875 -->
Procedure
1. Navigate to All > Customer Central > Customer Information > List Configurations.
2. Select New.
3. Fill out the fields, as required.
New lists configurations field description
Field

Description

Title

Enter a title for the list configuration.

Context table

Select a context table.

Relationship

Enter the relationship between the context
and the list.
a. To create a new relationship, click the
Lookup icon and then New.
b. Enter a name for the relationship.
c. In the Applies to table, select either the
contact or consumer context table.
d. In the Queries from table select the table
from which this list retrieves data.
e. In Query with, type a script to specify the
records to include from the table for the
relationship queries. For example:
current.addQuery("contact",
parent.sys_id);
“contact” => is the name
of the column in the list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

875


<!-- page 876 -->
Field

Description

table that stores the
context ID, for example,
contact ID.
“parent.sys_id” => is the
unique key in the contact
table that holds the
contact record.
Note: If building a new
relationship, ensure that
the exact column name from
the list table that stores
the context ID is specified
here.
View

Select the name of the view that has the
set of columns to display for this list. For
information on how to create a view, see
Configure the list layout .

List limit

Enter the number of records to display in the
list. You can access the remaining records
using pagination.

4. Select Submit.
Configure reports for the Customer Information view
Configure which reports to display on the Customer Information view.

Before you begin

Role required: admin

About this task

Reports are displayed in the Customer Information view in Agent Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

876


<!-- page 877 -->
Procedure
1. Navigate to All > Customer Central > Customer Information > Report Configurations.
2. Select New.
3. Fill out the fields, as required.

Field

Description

Title

Enter a title for the report.

Context table

Select a Context table.

Note: For example, enter Contact if
you want to display all the information
about a customer contact.
Report

Select a report.

Note: Only pie charts, doughnuts, and
single score charts are supported.
Relationship

Enter the relationship between the context
and the report.
a. To create a new relationship, click the
Lookup icon and then New.
b. Enter a name for the relationship.
c. In the Applies to table, select either the
contact or consumer context table.
d. In the Queries from table select the table
from which this list retrieves data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

877


<!-- page 878 -->
Field

Description

e. In Query with, enter a script to build the
relationship between the context table and
the report table. You can also specify any
filter conditions if needed. For example:
current.addQuery("contact",
parent.sys_id);
“contact” => is the name of
the column in the report
table that stores the
context ID, for example,
contact ID.
“parent.sys_id” => is the
unique key in the contact
table that holds the
contact record.
Note: If building a new
relationship, ensure that
the exact column name
from the report table that
stores the context ID is
specified here.
4. Select Submit.
Configure records for the Customer Information view
Configure the records to display on the Customer Information view. For example, a record could
provide information on the contact or consumer.

Before you begin

Role required: admin

About this task

Records are displayed in the Customer Information view in Agent Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

878


<!-- page 879 -->
Procedure
1. Navigate to All > Customer Central > Customer Information > Record Configurations.
2. Select New.
3. Fill out the fields, as required.
New record configurations field description
Field

Description

Title

Enter a title for the record.

Context table

Select a Context table.

Note: For example, enter Contact if
you want to display all the information
about a customer contact.
Relationship

Enter the relationship between the context
and the record.
a. To create a new relationship, click the
Lookup icon and then New.
b. Enter a name for the relationship.
c. In the Applies to table, select the table on
which the list appears.

Note: Enter either contact or
consumer.
d. In the Queries from table select the table
from which this list retrieves data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

879


<!-- page 880 -->
Field

Description

e. In Query with, enter a script to build the
relationship between the context table and
the record table. You can also specify any
filter conditions if needed. For example:
current.addQuery('sys_id',
parent.sys_id);
“sys_id” => is the name of
the column in the record
table that stores the
context ID, for example,
contact ID.
“parent.sys_id” => is the
unique key in the contact
table that holds the
contact record.
Note: If building a new
relationship, ensure that
the exact column name
from the record table that
stores the context ID is
specified here.
Fields

Select the fields to display on the record.

4. Select Submit.
Configure report groups for the Customer Information view
Configure the groups of reports to display in a single section on the Customer Information view.

Before you begin

Role required: admin

About this task

Report groups are displayed in the Customer Information view in Agent Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

880


<!-- page 881 -->
Procedure
1. Navigate to All > Customer Central > Customer Information > Report Group Configurations.
2. Select New.
3. Fill out the fields, as required.
Report Group configurations form fields and descriptions
Field

Description

Title

Enter a title for the report group.

Context table

Select a Context table.

Note: For example, enter Contact if
you want all the information about a
customer contact to be displayed.
Report configurations

Select the list of reports to be displayed in
the group.

4. Select Submit.
Configure customer information contexts for the Customer Information view
Associate each list, record, report, and report group configuration you created with a consumer
or contact context, depending on who you want to display the information for.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

881


<!-- page 882 -->
About this task

Configure customer information cards to display each of the list, record, or report configurations
for a consumer or contact. Each customer information card corresponds to a card on the
Customer Information view.

Procedure
1. Navigate to All > Customer Central > Customer Information > Customer Information
Contexts.
2. Select the contact or consumer record that you want to add your configuration to.
3. On the Customer Information Cards related list, select New.
4. Add your configuration to create a customer information card.
5. Select Submit.

Note: Repeat these steps for every configuration that you want to add to the contact or
consumer record. You can also change the layout and order in which to display the cards
on the Customer Information view.
Configure the Customer Information view using CSM Configurable Workspace
Configure the display of the Customer Information view using CSM Configurable Workspace.

Before you begin

Role required: admin

About this task

The Customer Information view displays all touch points that a customer has had with a contact
center in the form of information cards.
Note: The following steps can be used to configure the Customer Information view in CSM
Configurable Workspace. This workspace is configured using UI Builder.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, select Get Started
3. In the Customer Central - Customer Information for CSM Configurable Workspace category,
view the list of tasks to configure the feature.
Customer Central - Customer Information for CSM Configurable Workspace configuration
tasks
Task

Description

Configure your settings for the Customer
Information view

Set the Customer Central properties as
required.

Configure customer information lists

Configure the lists to display on the Customer
Information view. For example, a list can be
recent cases or recent chat interactions.

Configure customer information reports

Configure which reports to display on the
Customer Information view.

Configure customer contact cards

Configure the contact card to display contact
information on the Customer Information
view. For example, a contact card could

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

882


<!-- page 883 -->
Task

Description

provide information on the contact,consumer,
or account.
4. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Configure the Customer History view
Configure the display of the Customer History view.

Before you begin

Role required: admin

About this task

The Customer History view provides customer service agents an overview of all interaction that a
customer has had with a contact center in the form of an activity feed.
There are two panels on the Customer History view. On the left, the facets categorize the
customer touch points and a customer service agent can filter to display the data they want. On
the right, the activity feed displays more detailed information on each of the facets in reverse
chronological order.

Procedure
1. Navigate to All > Customer Central > Customer History > Guided Setup.
2. On the Customer History Configuration page of the guided setup, view the list of tasks listed in
the following order.
Select Get Started beside each block to configure the features.
a. Customer History Properties
b. Activity Feed
c. Activity Contexts
Customer History configuration tasks
Task

Description

Configure Customer Central properties

Set the Customer History view component
attributes as required.

Configure activity types

Create an activity type to display in the
activity feed on the Customer History view.

Configure activity groups

Create an activity group and then add activity
types to the activity group.

Configure activity type templates

Create an activity type template to define
how to display the activity type data on each
of the activity tiles in the activity feed.

Configure activity contexts

Add the activity groups and activity types you
created to an activity context, depending on
who you want to display the information for
and create facets to group the data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

883


<!-- page 884 -->
3. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Configure component attributes for the Customer History view
Set the Customer History view component attributes, as required.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Central > Administration > Related Items.
2. Select Customer History.
3. Select Advanced View.
4. Select the Component Attributes tab.
5. Set the following component attributes, as required.
Related items, advanced view property field description
Property

Description

childFacetsListSize

Number of child facets to display.
Default value is 3.

activitiesListSize

Number of activities to display in the activity
feed.
Default value is 10.

Note: Avoid making changes to the other component attributes in this list.
Configure activity types for the Customer History view
Create an activity type to display in the activity feed on the Customer History view.

Before you begin

Role required: admin

About this task

An activity type is an action that a contact or consumer performs. These actions are displayed in
the activity feed on the Customer History view.
Activity types are displayed in the Customer History view in Agent Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

884


<!-- page 885 -->
Procedure
1. Navigate to All > Customer Central > Customer History > Guided Setup.
2. Select Get Started under Activity Feed.
3. Select Configure beside Activity Types.
4. Select New.
5. Fill out the fields, as required.
New Activity Types field description
Field

Description

Short description

Enter a name for the activity.

Activity message

Enter the message that is displayed on the
activity tile in the activity feed.

Note: If the message is not yet
defined, you can create a message.
Refer to the video above on how to
create a message.
Activity source

Enter the table on which the activity is
performed. For example, if creating a case
is the activity, the Case table is the Activity
Source.

Actor

Enter the person performing the activity.

Object

Select an Object, which is the unique key that
identifies the object on which the activity is
performed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

885


<!-- page 886 -->
Field

Description

Filter conditions

Specify any condition that must be met for
the activity to be displayed in the activity
feed.

Active

Deselect the Active check box to not display
the activities corresponding to this type in the
activity feed.

Note: If you deselect this check box,
deselect the corresponding facet. If not,
the facet displays with no data.
Verb

Select a verb that describes the activity
performed.

Note: If the verb is not yet defined,
you can create a verb. Refer to the video
above on how to create a verb.
Target

Select the second person involved in the
activity. Not all activities have a second
person.

6. Select Submit.

Note: Once you create a new activity type, a new business rule is created.
7. After submitting, you can configure the business rule in one of two ways:
◦ Select the link to the business rule in the notification message.
◦ Go to the Activity Feed page and select Configure beside the Business Rule section.

Note: Configuring the business rule is optional. The business rule is required to create
a record in a central activity table each time the action is performed. The central activity
table improves the performance of rendering the feed during runtime. Create a business
rule for each activity type.
8. In the Advanced tab, update the script.
The following is an example script.
var actSubCtx =
global.ActivitySubscriptionContext.getContext();
if (current.contact) {
actSubCtx.getActivityService().createActivity(current,
verb, "", "", "", module);
}
current: current variable in business rules holds the
GlideRecord of the table on which the business rules is
triggered. If this business rule is on Case table, current
will hold the GlideRecord of the case.
verb: verb that is configured in the Verb field of the created
activity type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

886


<!-- page 887 -->
module: module that is configured in the Module field of the
created activity type
Note: If there is already a Create Activity business rule, a
notification message will also be displayed. You can update
the script as required.
Configure activity groups for the Customer History view
Create an activity group and then add activity types to the activity group.

Before you begin

Role required: admin

About this task

An activity group is a logical grouping of activity types. An activity group is displayed in the
activity feed based on the facet selected.
Activity groups are displayed in the Customer History view in Agent Workspace.

Learn more about configuring activity groups from the following video tutorial. Configure activity
groups

Procedure
1. Navigate to All > Customer Central > Customer History > Guided Setup.
2. Select Get Started under Activity Feed.
3. Select Configure beside Activity Groups.
4. Select New.
5. Fill out the fields, as required.
New Activity Groups field description
Field

Description

Name

Select a name for the activity group.

Table name

Select the table that stores the object
on which the activities in this group are
performed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

887


<!-- page 888 -->
Field

Description

Usually, it is the same as the Activity Source
selected in the Activity Type.
6. Once you have created an activity group, select it from the Activity Group list and add the
activity types to the group.
7. On the Activity Types related list, select New.
8. Fill out the fields, as required.
New Activity Types field description
Field

Description

Activity type

Select the activity type you want to add to the
activity group.

Activity group field

Select the field from the Activity Source
table that identifies the object in the table
associated to the Activity Group.

9. Select Submit.
Configure activity type templates for the Customer History view
Create an activity type template to define how to display the activity type data on each of the
activity tiles in the activity feed.
Learn more about configuring activity type templates from the following video tutorial. Configure
activity type templates

Before you begin

Role required: admin

About this task

You can define which fields are displayed, where it is displayed on the tile, and the order of the
display.

Procedure
1. Navigate to All > Customer Central > Customer History > Guided Setup.
2. Select Get Started under Activity Feed.
3. Select Configure beside Activity Type Templates.
4. Select New.
5. Fill out the fields, as required.
Activity Type templates field description
Field

Description

Name

Enter a name for the template.

Activity Type

Select the activity type to add the template
for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

888


<!-- page 889 -->
Field

Description

Icon

Select an icon to use for the activity type.

Icon Background

Select a background color from the dropdown, then select the green check mark
to apply. If no default colors are set by
the admin in UI Builder, gray is applied
automatically.

6. Select Submit.
7. Once you have created an activity type template, select it from the Activity Type Template list
to configure the fields and order of fields to display.
8. Select New to create template fields for the activity type.
9. Fill out the fields, as required.
New Activity Type template field description
Field

Description

Type

Select a Type to determine whether you want
to select fields from the activity source or
activity group table.

Field

Select the field you want to add.

Note: You cannot configure HTML
fields for display in the subheader on
the activity tile.
Show label

Select this check box to show the field label
on the activity tile.

Position

Select the Position to determine whether the
field should appear as content or as a subheader on the activity tile.

Note: Only one field is displayed as
content on the activity tile.
Order

Select the order the field should appear on
the activity tile.

Enable link to activity group record

Select this check box to display the field as a
link to the activity group record.

Display as time ago

Select this check box to display the field in
time ago format.

Note: This field only applies to fields
including time or date information.
Content icon

Icon for the content displayed on a tile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

889


<!-- page 890 -->
Field

Description

Note: This field is only displayed when
Content is selected in the Position field.
Content tooltip

Tooltip for the icon displayed on a tile.

Note: This field is only displayed when
Content is selected in the Position field.
Condition

Condition that applies to the selected field.
For example, in the transcript activity type
template, you can configure a condition to
show transcript when the Chat Summary field
is empty.

10. Select Submit.
Associate activity groups and activity types to activity contexts
Add the activity groups and activity types that you created to an activity context, depending on
who you want to display the information for.
Associate an activity group to an activity context
Learn more about associating an activity group to an activity context from the following video
tutorial.
Associate an activity type to an activity context
Learn more about associating an activity type to an activity context from the following video
tutorial.

Before you begin

Role required: admin

About this task

An activity context is the person or user who is interacting with the customer service agent.
There are two predefined activity contexts: consumer and contact. Add the activity groups and
activity types that you created to the activity context, depending on who you want to display the
information for.

Procedure
1. Navigate to All > Customer Central > Customer History > Guided Setup.
2. Select Get Started under Activity Contexts.
3. Select Configure beside Activity Context Groups.
4. Open the contact or consumer record that you want to add your configuration to.
5. On the Activity Context Groups related list, select New.
6. Add the activity group.
7. On the Activity Context Types related list, select New.
8. Fill out the fields, as required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

890


<!-- page 891 -->
Activity context types related list field description
Field

Description

Activity type

Add the activity type.

Fetch from activities

Deselect Fetch from Activities if a business
rule isn’t defined for this activity type.

Filter conditions

Add filter criteria to apply filter conditions on
the source table.

Source mapping field

Select the field in the Source table that is
related to the context.

Context mapping field

Select the field in the Context table to map to
the field selected in Source mapping field.

Advanced mapping

Select Advanced Mapping and write a script
in the Advanced mapping script field if the
source and context mapping isn’t sufficient.

9. Select Submit.
Create facets for activity contexts
Create facets to group the data and enable customer service agents to filter and display the data
they want to see in the activity feed.
Defining and associating facets to contexts
Learn more about configuring facets from the following video tutorial.

Before you begin
• Role required: admin
• Ensure that the application scope is set to Customer Central.

About this task

An activity context is the person or user who is interacting with the customer service agent.
There are two predefined activity contexts: consumer and contact. Facets group the data, which
enables customer service agents to filter and display the data they want to see in the activity
feed. Each facet represents an activity group.
Facets are displayed in the Customer History view in Agent Workspace. Dynamic facets display
record details associated with the facet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

891


<!-- page 892 -->
Static facets display a subcategorization of the facets without any record details.

Procedure
1. Navigate to All > Customer Central > Customer History > Guided Setup.
2. Select Get Started under Activity Contexts.

Note: The Get Started button becomes active only after you complete all configurations
and select Mark as Complete in the previous sections.
3. Select Configure beside Facets.
4. Open the contact or consumer record that you want to create facets for.
5. On the Facets related list, select New.

Note: Ensure that the application scope is set to Customer Central. The New button only
appears under this scope.
6. Fill out the fields, as required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

892


<!-- page 893 -->
New activity contexts field description
Field

Description

Name

Enter a Name for the facet. This is the name
of the facet that appears on the Customer
History view.

Activity context group

Add an activity context group for the facet.

Facet type

Select whether the facet is dynamic or static.
Dynamic displays record details associated
with the facet.
Static displays a subcategorization of the
facets without any record details.
Static facets can also be associated to a facet
group.

Order

Enter the order the facet should appear in.

Facet group

If you selected facet type Static, associate
the facet to a group.
If you associate the facet to a facet group,
this facet becomes a subcategory of the facet
group you selected.

Icon

Select an icon for the facet.

Facet title

If you selected facet type Dynamic, choose
the field of the record to display as the facet
title.

Facet fields

If you selected facet type Dynamic, select the
fields to display for each record.

7. Select Submit.
Configure the Customer Service mobile application
Configure the Customer Service mobile application and customize it for agents who use the
application instance on their mobile devices.

Before you begin

Role required: admin

About this task

The Customer Service Mobile plugin (com.sn_csm_mobile) enables the Customer Service
mobile application.

Procedure
1. Navigate to All > System Applications > Studio.
2. In the Select Application pop-up window, click Customer Service Mobile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

893


