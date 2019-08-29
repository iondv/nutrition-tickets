# Create class

Save the form and a side menu with the main application management objects becomes available:

![shema](/tutorial/images/new_app.png)

The main object of the application is the class. To create a data model class, go to the “Classes” menu item and select “+ Class” in the work panel. The form for filling in the properties of the new class will open. It is necessary to specify the system and logical name in it, as well as fill in the remaining properties of the attributes (if necessary). Create the class - "Tickets":

![shema](/tutorial/images/create_app.png)

When creating a class, the “ID” is automatically created. It's the key attribute which is a unique for the class. The created class "Tickets" is displayed in the form of an entity table in the studio workspace:

![shema](/tutorial/images/new_class.png)

## Create attribute class

Next, we select the "+ Attribute" button to add an attribute to the “Tickets” class. The form for creating the "Number" attribute opens where you need to fill in the data on the system and logical name of the attribute, set the attribute type and specify the uniqueness properties, indexing for searching. Do not tick the "Nullable" field to ban the entry of the empty values, since the "Number" attribute will be the key attribute for this class:

![shema]![shema](/tutorial/images/create_attr.png) ![shema](/tutorial/images/create_attr2.png)

The remaining necessary class attributes are created in the same way. As a result, we have the following attributive structure for the "Tickets" class:

![shema](/tutorial/images/new_attr_in_class.png)

## Edit class properties

So, we have the attributive structure and now you can fill in the additional properties for the class. For example, you can add a value to the "creatorTracker" property (to label the user who created the object), a unique composite index of the class objects and the value of the class semantics. To do this, open the class form for editing. There are several ways to perform this action:

* By double-clicking on the class name in the workspace.
* By double-clicking on the class name located in the Classes item on the sidebar.
* If there is a selected class in the workspace or in the sidebar, the Edit class action is available.

![shema](/tutorial/images/edit_class.png)

When you open the editing form, the action of opening the class in the editor is available at the bottom of the form:

![shema](/tutorial/images/edit_json.png)

When you select an action, a window opens where the class is displayed as a file in `. json` format:

![shema](/tutorial/images/code_editor.png) (/tutorial/images/code_editor_doc.png)

This action is available in all forms of created objects while editing. 

## Inheritance

IONDV. Studio allows you to create the inheritance between the application objects. First, create the base class - “Person” and fill it with the necessary attribute structure:

![shema](/tutorial/images/attr_person.png)

Next, we create the “Recipient” class. It will inherit the attribute composition of the “Person” class and we add other attributes for it:

![shema](/tutorial/images/attr_recipient.png)

We open for editing the form of the Recipient class and for the Ancestor property, select the value from the list - the Person class:

![shema](/tutorial/images/ancentor_recipient.png)

Thus, when creating view forms for the Recipient class, you can use attributes of the base class.

## Connections between Entities

The functionality of the IONDV. Studio allows you to create connections between created objects by specifying the appropriate type for the class attribute. Let’s take a look at the example of the “Tickets” attribute of the “Recipient” class. We open the attribute editing form and select the “Collection” value from the list for the “Type” property. It is also necessary to specify the “Item class” property to which the collection is reference:

![shema](/tutorial/images/item_class.png)

Thus, on the form of an object of "Recipient" class a collection of "Tickets" objects will be displayed. Here is how it will look in the system:

![shema](/tutorial/images/collection_form.png)

## Building a data model schema

We create the “Documents” class and set the attribute composition for it. After that, it is necessary to determine the types of attributes and set the references to the corresponding classes for them.

* In the “Recipient” class, open the “Passport” attribute for editing, select the type - “Collection” and in the “Item class” field select the “Documents” class from the list:

![shema](/tutorial/images/item_class_doc.png)

* In the “Tickets” class, open the “Recipient” attribute for editing, select the type - “Reference” and in the “Reference class” field select the “Recipient” class from the list:

![shema](/tutorial/images/ref_class_recipient.png)

* In the “Documents” class, open the “Recipient” attribute for editing, select the type - “Reference” and in the “Reference class” field select the “Recipient” class from the list.


As a result, we have the model shema for “Social nutrition tickets” app:

![shema](/tutorial/images/shems_workflow.png)

## Formula to calculate the number of recipients receiving aid

Now we need to set a formula to calculate automatically the number of preferential categories for one ticket's recipient. To select a preferential category on the form we use the attributes with the Boolean type. To indicate the preferential category of the recipient, it is necessary to tick the check box for the corresponding attributes:

![shema](/tutorial/images/category_form.png)

After saving the form for the “Number of selected categories” attribute, the value of an equal number of preferential categories of the coupon recipient will be calculated.

Calculation formula: convert value of the logical attribute to a number - where 1 is true, false is 0 and we sum up the values. Thus, we get the number of selected categories of the recipient:

![shema](/tutorial/images/formula_category.png)

## Formula to calculate the maximum ticket value

For the form of the ticket, we set the formula to calculate automatically the maximum ticket value, which depends on the number of preferential categories for the user.
In the “Tickets” class, open the form for editing the “Maximum allowable amount of use” attribute and set the value for the “Formula” property of the following form:

![shema](/tutorial/images/formula_sum.png)

It means that we multiply the value of the number of categories of the recipient by the maximum ticket value calculated for one preferential category (in this case 200).

## Restriction on creating objects in the collection

A recipient receives 1 ticket per week every 4 weeks. For each ticket a recipient must contact the social security, where the operator creates 4 tickets for each recipient in the "Tickets" collection. If there are 4 valid tickets in the collection, the “Create” action is blocked. In the view form of the “Tickets” attribute for the “Availability” property, you need to set the following value *“. Tickets.length <4”* thereby limiting the number of current objects in the collection.

## Formula to calculate the ticket expiration date

Also we set automatic calculation of the ticket expiration date based on the calculation that the maximum period for using the ticket is 28 days (4 weeks). For the attribute “Date of completion” of the “Tickets” class in the “Formula” property we set the following value:

![shema](/tutorial/images/formula_date_end.png)

Here we see that to the issue date we add 28 days during which the tickets are valid. 

### The next page: [Create navigation](/tutorial/en/3_create_navigation.md)  

--------------------------------------------------------------------------  

 #### [Licence](/LICENSE) &ensp;  [Contact us](https://iondv.ru/index.html) &ensp;  [Russian](/tutorial/ru/2_create_class.md)    &ensp;   <div><img src="https://mc.iondv.com/watch/local/docs/framework" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>        
--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV"**.  
All rights reserved.  