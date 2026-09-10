# Zurich Telecommunications Network Inventory â€” Create template for network asset instantiation / Create inventory template relationship

Source: servicenow-zurich-telecom-network-inventory-enus.pdf | Release: zurich | Pages: 175â€“191 of 425

Sections: Create template for network asset instantiation (p175); Create inventory template relationship (p178)

---

<!-- page 175 -->
3. Click New.
4. Fill in the general information to create a network model relationship.

        Note: To learn more about the fields, see Network Model Relationship fields.

5. To add attachments, such as graphics or documents, click the attachment icon (     ) in the right
   panel.

6. Click Save.

7. To delete a model, click the options icon ( ) next to the Save button, and click Delete.

Related topics
   Network inventory models
   Modeling network inventory relationships

Create inventory template for network asset instantiation

As an inventory template manager, you create templates using functions you access from the
Lists view in the Network Inventory Workspace. These templates contain the detailed business
guidance rules so that you can properly configure your equipment. During this process, you also
specify the relationships between each inventory template.

An inventory template includes the rules on the proper way to configure the equipment. These
rules are based on the operating requirements from the manufacturer. A template also includes
such information as the number of available slots and whether the hardware in a piece of
equipment is compatible with the equipment that is related to it.

Your network inventory templates represent a unique configuration of a network entity that a
network service provider would instantiate based on their business guidance. If you properly
define your templates and their relationships, the instantiation process uses the configuration
rules from the vendor and you do not generate unsupported network asset instances.

     Note: To learn more about creating templates and generating network assets from your

      model and template records, see Model your workflow.

Related topics

   Network inventory templates

Create an inventory template

Create an inventory template in the Telecommunications Network Inventory application to
represent a configuration of the created inventory model.

Before you begin
Role required: sn_ni_core.inventory_admin, and sn_ni_core.inventory_template_manager

About this task
A network inventory template contains a set of detailed business guidance rules from a
telecommunications provider. These rules state how the equipment configurations should be
generated, based on certain operating requirements. When you create an inventory template,
it creates a template in the Inventory Templates [sn_ni_core_inventory_template] table. To learn
more about inventory templates, see the following topics:

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    175
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 176 -->
· Network inventory templates
· Create inventory template relationship

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Select the list icon ( ), and then go to Network Inventory Templates > Inventory Templates.
3. Select New.
4. On the Details tab, fill in the general information to create an inventory template.

   The following table lists the fields that are unique to the inventory template.

Inventory Template

Field      Description
Name
           Manufacturer-assigned name for this inventory template, as specified by the
           model manager.

Inventory  List of all product models related to the Telecommunications Network Inventory.
model
           Select the search icon (       ) and select a model. To learn more, see Create
           inventory models.

Default    Default template where the default CI attribute values can be defined. The
field      values in the list depend on the selected inventory model. Select the search icon
values
           ( ) and select a type code. To learn more, see Create a default template.

Version Version of the template

Parent     Bandwidth of the parent product model.
bandwidth
                Note: This attribute is only visible when you select a logical connection

                 model and that has a relationship type as Logical Connection to Channel.

Child      Bandwidth of the child product model.
bandwidth
                Note: This attribute is only visible when you select a logical connection

                 model and that has a relationship type as Logical Connection to Channel.

5. To add attachments, such as graphics or documents, select the attachment icon ( ).
6. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    176
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 177 -->
The Related Templates tabs appear next to the Details tab where you can view, add, update,
and delete the related templates. You can also add a related template under a related
template.

     Note:

     a. If you've defined the network model relationship between the rack and slot, equipment
         and slot, equipment and interface, interface card and slot, or interface card and
         interface,the slots and interfaces are automatically created under the Related
         Templates for the equipment or interface cards. Otherwise, manually add using New.

     b. Add shelves/equipment to racks or shelves in the Related Templatestab of each
         created rack unit or slots. You can also add equipment to each shelf. To learn more, see
         Related templates form.

     c. You can update the naming pattern of each template directly from the Name Pattern
         column under the related templates. The name pattern of the created slots or
         interfaces is fetched from the default pattern of the models. To learn more, see
         Inventory Model form - Information.

     d. To add an interface card in a slot, navigate to slot > Related Templates > New and fill in
         the required details.

What to do next                                  ), and then select Delete.
To delete a template, select the options icon (

Create a default template

Create a default template in the Telecommunications Network Inventory application to capture
the default attribute definition for a specific configuration item (CI) class.

Before you begin
Role required: sn_ni_core.inventory_admin, and sn_ni_core.inventory_template_manager

About this task
Default templates capture the default attribute values for a configuration item (CI) class. A
template defines the set of attribute values for any resource (equipment, card, and so on). When
this default template is associated with an inventory template, it adds these attribute values to
the resource that is instantiated using that template.

When you use the Template field to select the table that stores the CI class information, you can
select specific attributes and set the default values for each attribute. When you create a default
template, it creates a default template record in the Templates [sn_ni_core_default_template]
table. To learn more about the default templates, see Network inventory templates.

Procedure
1. Navigate to Workspaces > Network Inventory Workspace.

2. Click the list icon ( ), and then go to Network Inventory Templates > Default Templates.
3. Click New.
4. On the form, fill in the general information to create a default template.

   To learn more about the fields, see Default Template form.
5. Click Save.
6. To schedule the form, click Schedule and fill in the Scheduled Entity Generation form.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    177
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 178 -->
       Note: Scheduling is only available in the classic environment.

   To learn more about the fields, see Scheduled Entity Generation form.

Create inventory template relationship

Use this sequence as a guide when creating inventory templates for your equipment and
establishing the proper template relationships in the Telecommunications Network Inventory
application.

Sequence for creating template relationships

Equipment instantiation, or the task of generating network asset instances from the inventory
template relationships that you create, is a key function in the Telecommunications Network
Inventory application. To operate properly, it depends on you creating accurate inventory
models, default templates, and inventory templates, in a certain sequence, to establish proper
equipment relationships.

     Note: To learn more about equipment instantiation, see Design and assign.

When you create an equipment or card template, the associated slots and interface templates
are automatically created by using the data from the model relationship. If the model
relationships aren't made, it doesn't create the associated templates. In this case, you must
create the templates manually. To learn more about the model relationship, see Create inventory
template for network asset instantiation. For example, when you create a template for an
equipment model, the associated templates, such as the Telco equipment holder (slot) and
interface, are automatically created.

The names for these associated templates are mapped from the Slot naming pattern or
Interface naming pattern fields in the Information tab of the Equipment Model or Interface
Model forms.
 · To learn more about the Slot naming pattern or Interface naming pattern fields, see Inventory

   Model form - Information.
 · To learn more about the naming convention, see Naming convention for associated templates.

To establish the proper relationships between these elements for your equipment, perform these
tasks in the following order.

Establishing a default template

The first step in this process is to create an appropriate default template for use in your inventory
template relationship sequence.

Default templates capture the default attribute values for a configuration item (CI) class. A
template defines the set of attribute values for any resource (equipment, card, and so on). When
this default template is associated with an inventory template, it adds these attribute values to
the resource that is instantiated using that template.

To learn more, see Create a default template.

What's next

After establishing a default template, begin the sequence by creating an inventory template for
the equipment model. To learn more, see Create an inventory template for the equipment model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    178
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 179 -->
Related topics
   Create inventory template for network asset instantiation

Create an inventory template for the equipment model

In the Inventory Template form in the Network Inventory Workspace Lists view, you can create an
inventory template for the equipment model.

Procedure

When you create an equipment inventory model, you must enter the following information:
1. In the Name and Inventory Model fields, your names and inventory model number must be

   unique for that piece of equipment, and can't be the same as any other piece of equipment.
2. In the Inventory Model field, you must enter a reference qualifier to the equipment model.
3. In the Default Field Values field, you need to select a default template for the tagging of the

   default attribute values.

        Note: These rules also apply to the remaining steps to this process. To learn more, see:

         Create an inventory template
         Create a default template

         Inventory template for equipment model

What's next

Next, create inventory templates for related interface card models. To learn more, see Create
inventory templates for related interface card models.

Related topics
   Create inventory template for network asset instantiation

Create inventory templates for related interface card models

In the Inventory Template form in the Network Inventory Workspace Lists view, you can create
inventory templates for the interface card models that are associated with the equipment
inventory template.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    179
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 180 -->
Procedure

The following example shows an inventory template for an interface card model.
         Inventory template for the interface card model

     Note: If the equipment model supports multiple models of an interface card, you must

      create an individual inventory template for each model.

What's next

Next, create inventory templates for the related network interface models. To learn more, see
Create inventory templates for related network interface models.

Related topics
   Create inventory template for network asset instantiation

Create inventory templates for related network interface models

In the Inventory Template form in the Network Inventory Workspace Lists view, you can create
inventory templates for the network interface models that are associated with the equipment
inventory template.

Procedure

The following example shows an inventory template for a network interface model.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    180
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 181 -->
Inventory template for a network interface model

     Note: If the equipment model supports multiple models of network interfaces, you must

      create an individual inventory template for each model.

What's next

Next, add slots to the equipment template. To learn more, see Add slots to the equipment
inventory template.

Related topics
   Create inventory template for network asset instantiation

Add slots to the equipment inventory template

In the equipment inventory template that you created in the Network Inventory Workspace
Lists view, use the Related Templates tab to create the associations for the slots. The following
example shows how you add a related inventory template for an equipment model.

Procedure

1. In the Related Templates tab, click New.

            Equipment model inventory template - related templates

2. In the Name field, enter a unique name for the slot. When you generate a network asset
   instance, the generation process assigns this name to the slot.

3. In the Inventory model field, the equipment holder model that is associated with this
   equipment inventory template appears. If there is no existing relationship with an equipment
   holder relationship, you can select any slot model as needed.

Note: While it appears that inventory templates are created for the slots that are

attached to the Related Templates tab, only the default template values are created
and stored for them. The records created for them are not considered formal inventory
templates but are flagged internally with an attribute of Template=N.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    181
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 182 -->
Adding an interface card to a slot

After you create all the associated slots, they all appear in the Related Templates tab.
         Equipment inventory template with all associated slots

     Note: If there are no inventory templates for the slots, you select a default template in the

      Default Field Values field to set the default attributes for the assigned slots.

What's next

Next, add a network interface to the equipment template. To learn more, see Add a network
interface to the equipment template.

Related topics
   Create inventory template for network asset instantiation

Add a network interface to the equipment template

In the equipment inventory template that you created in the Network Inventory Workspace Lists
view, use the Related Templates tab to add the associated network interface.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    182
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 183 -->
Procedure

To add a network interface, you do it in the same manner as you added slots. To learn more, see
Add slots to the equipment inventory template.

         Inventory template for equipment model - related templates

1. In the Related Templates tab, click New.
2. In the Name field, enter a unique name for the network interface. When you generate a

   network asset instance, the generation process assigns this name to the slot.

   In the Inventory model field, the equipment inventory model that is associated with the
   equipment inventory template appears. If there is an associated inventory model, you can
   select one as needed.

         Adding a network interface

What's next

Next, add interface cards to the slots. To learn more, see Add interface card templates to the slot
templates.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    183
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 184 -->
Related topics
   Create inventory template for network asset instantiation

Add interface card templates to the slot templates

In the equipment inventory template that you created in the Network Inventory Workspace Lists
view, use the Related Templates tab to add the interface cards to the selected slots.

Procedure

In the Related Templates tab, select the slot that you want to add the interface card to.
         Equipment inventory template with all associated slots

When the slot record appears, in the Related Templates tab, click New. Create an inventory
template for the associated interface card.

         Inventory template for the associated interface card

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    184
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 185 -->
1. In the Name field, enter a name for the interface card.
2. In the Inventory model field, the associated network interface cards according to the specified

   slot-to-interface card model relationship. If there is an associated inventory model, you can
   select one as needed.

   When you submit the form, the interface appears in the Related Templates tab for the
   associated slot. If there are associated interface cards, repeat this procedure until you've
   paired all slots in the equipment template.

The following example shows the inventory template for the slot with an associated interface
card.

         Slot with associated interface card

If the card model has a Slot Occupied attribute, and its value is greater than 1, a Slot Occupied
field appears on the form. It ensures that you are able to identify that when this card is
instantiated, other slots are also attached it. By using this field, you can indicate if the other slots
that are attached to that piece of equipment are compatible to the network interface that you are
selecting.

What's next

Next, add subslots to the network interface template. To learn more, see Add subslot templates to
the interface card template.

Related topics
   Create inventory template for network asset instantiation

Add subslot templates to the interface card template

In the Inventory Template form in the Network Inventory Workspace Lists view, you can add
subslots to the interface card template that you created. You perform this procedure any time
that you add a new card model to an existing equipment inventory template.

Procedure

If the interface card supports SFP (Small Form Pluggable), the card has slots. To create this
relationship, you can use the same procedures that you used to add slots to in the equipment
inventory template. To learn more, see Add slots to the equipment inventory template.

The following example shows an inventory card template where subslots were added.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    185
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 186 -->
         Interface card template - related templates

In the interface card template, in the Related Templates tab, click New to create a subslot
inventory template.

         Inventory template for subslot

After you submit the subslot inventory template, it appears on the Related Templates tab for the
interface card.

         Interface card template with related subslot

What's next

Next, add a network interface to an interface card template. To learn more, see Adding a network
interface template to an interface card template.

Related topics
   Create inventory template for network asset instantiation

Adding a network interface template to an interface card template

If the interface card supports network interfaces directly to it, create an interface template
relationship between the two interfaces in the Network Inventory Workspace Lists view.

Procedure

In the Interface template, in the Related Templates tab, click New to create an interface card
template.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    186
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 187 -->
         Inventory template for interface card - related templates

In the Inventory Templates form, create an inventory template for the interface card in the
Telecommunications Network Inventory application.

         Inventory template for network interface

When you submit the inventory template, the relationship appears in the Related Templates tab
for the interface card.

         Interface card template with related interface cards

What's next

Next, add an interface card to subslots. To learn more, see Add an interface card template to the
subslot templates.

Related topics
   Create inventory template for network asset instantiation

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    187
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 188 -->
Add an interface card template to the subslot templates

Add an interface card to the subslots that are associated with a piece of equipment in the
Network Inventory Workspace Lists view.

Procedure

You perform this task in the same manner as you did for the Adding the related interface cards
to the equipment template procedure. To learn more about this earlier procedure, see Add a
network interface to the equipment template.

The following example shows an interface card model that is assigned to a subslot.

         Interface cards assigned to a subslot

Adding more subslots to child cards

Interface card templates that you add to subslots to are referred to as child and daughter cards.
 · An interface card template that goes inside these subslots are referred to as a child card.
 · A child card can slot have subslots, and an interface card template that goes inside the subslot

   of a child card is referred to as a daughter card.

What's next

Next, add a network interface to a child or daughter card. To learn more, see Add a network
interface template to a child or daughter card template.

Related topics
   Create inventory template for network asset instantiation

Add a network interface template to a child or daughter card template

As a last step, you can optionally add a network interface template to a child and daughter card
template in the Network Inventory Workspace Lists view.

Procedure

The following example shows a network interface template that was added to a child or daughter
card.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    188
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 189 -->
Inventory Template - Network Interface Card

     Note: Not all inventory templates have a relationship with a network interface template.

      Some equipment inventory templates only have a single network interface relationship,
      while some interface card templates don't have any relationship to slots as a parent.
      However, an equipment and interface card template must have those many slots or
      interfaces defined as per their model relationship.

What's next

You're done with creating inventory template relationships for this piece of equipment. To create
another inventory template for another piece of equipment, do the following actions:
1. Create a default template for use in that inventory template relationship sequence.
2. Proceed to the Creating an inventory template for the equipment model topic, and repeat

   the entire process again. To learn more, see Create an inventory template for the equipment
   model.

Related topics
   Create inventory template for network asset instantiation

Create an inventory template for cable models

Create an inventory template for the cable models in the Telecommunications Network Inventory
application. You can use this template to instantiate a cable record and related stand records.

Use case

The following example shows an inventory template for a cable model.

         Inventory template for the card model

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    189
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 190 -->
After saving the inventory record, it creates the related strand templates depending on the count
mentioned in the network model relationship.

         Related strand templates of a cable template

The default naming pattern of a strand record is "Strand-+position". You can edit the Name
Pattern field.

         Details of a strand template

What's next

Use a cable template to instantiate cable and strand records using design and assign. To learn
more, see Create a cable record by using design and assign.

Related topics
   Create a cable model
   Network inventory templates
   Model your workflow

Create an inventory template for a logical composite

Create an inventory template for the logical composite in the Telecommunications Network
Inventory application. You can use this template to instantiate a logical composite record and its
related equipment and rack records.

Use case

The following example shows an inventory template for a logical composite.

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    190
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

<!-- page 191 -->
         Inventory template for a logical composite

The inventory model has inventory relationships such as Multi Chassis to Equipment and Multi
Chassis to Rack attached to it.

         Example of the network relationship

After saving the inventory template, it creates the related equipment and rack templates
depending on the count mentioned in the network model relationship.

         Related templates of a logical composite template

         Details of a logical composite related template

© 2025 ServiceNow, Inc. All rights reserved.                                                                                                                                    191
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

