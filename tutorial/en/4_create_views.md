# Create view

Next, we move on to creating view forms for class objects. Such forms allow you to specify an arbitrary attributive composition for view of class attributes in the system. The form for creating an object ("create form") displays the attributive composition which is necessary to fill in the data about the class object when it is created. The view form for editing an object ("item form") displays the attributive composition needed to view and possibly edit the data of a system object. The list view form ("list form") form displays the attributive structure necessary to view brief information about the system object, when choosing a navigation item, or adding a class object by reference or to the collection.

To go into the formation area of the view form, you must select the "Classes" section, and then the "View" action on the work panel. Next,select the type of view in the list that appears ![Shema](/ tutorial / images / type_view.png). And to create each form one by one with the necessary attribute composition by dragging and dropping attribute blocks into the corresponding area:

![shema](/tutorial/images/create_view.png)

To move attribute blocks to the desired area more quickly, there is the `<<` action on the work panel.

Attributes on the form will be displayed in the same order that they are formed in the area of view forms. Therefore, you can reorder the location of the attribute on the form by dragging and dropping the attributes:

![shema](/tutorial/images/order_namber_attr_view.png)

## Add the attribute properties to the view form

Also on the presentation form for an attribute, you can set properties (in addition to those that were set on the class form). For example, set the mask for the “Number phone” attribute:

![shema](/tutorial/images/mask_view.png)

Or, for the list view form of objects of the “Tickets” class, set styles for objects in the list. For example, we set the condition for highlighting in red those tickets whose completion date is greater than the current one:

![shema](/tutorial/images/style_view.png)

### The next page: [Create work-flow](/tutorial/en/5_create_workflow.md)  

--------------------------------------------------------------------------  

 #### [Licence](/LICENSE) &ensp;  [Contact us](https://iondv.ru/index.html) &ensp;  [Russian](/tutorial/ru/4_create_views.md)    &ensp;   <div><img src="https://mc.iondv.com/watch/local/docs/framework" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>        
--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV"**.  
All rights reserved. 