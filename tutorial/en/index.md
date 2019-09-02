Эта страница на [русском](/tutorial/ru/index.md)

# Instruction to create the app in ION. Studio

## IONDV. Nutrition-tickets - example app

A recipient comes to social protection for a ticket to receive benefits. The operator (employee of social protection) starts the recipient's card and creates 4 tickets for him per month. The recipient must cash out the tickets within a month in the store / canteen / issuing point for the amount indicated in the ticket, which depends on the number of categories assigned to the recipient. When using a ticket, the cashier must mark it in the program as “Acknowledged”. Acknowledged tickets are no longer valid.

Watch a brief [video](https://www.youtube.com/watch?v=e201ko9fkQ8&t=331s) about the creation of a simple app - [IONDV. Nutrition-tickets](https://github.com/iondv/nutrition-tickets) in **IONDV. Studio**. 

## Content 

1. [Create application](/tutorial/en/1_create_application.md)
2. [Create class](/tutorial/en/2_create_class.md)
3. [Create class attribute](/tutorial/en/3_create_navigation.md)
4. [Create navigation](/tutorial/en/4_create_views.md)
5. [Create work-flow](/tutorial/en/5_create_workflow.md)
6. [Application and user roles](/tutorial/en/6_done_application.md)

## Short description

Select the `«Create your first app»` action on the main page to create an app.

The main element of application is a class. To create a data model class, select the `«+Class»` action in the work panel. The form to fill in new class properties will open. Next select the `«+Attribute»` action for a class to create new attributes. 

After determining the attributive composition of the class, it is possible to add additional attributes for the class.
When you open the editing form, the action of opening the class in the editor (JSON format) becomes available.

Navigation for the created application is formed in the `«Navigation»` subsection in the side panel. The main navigation element of the future application is the section. To create a navigation section, you must select the `«+Section»` action in the work panel. To create a menu item for a section, you must select the `«+item»` action.

Moving on to create the view forms. Such forms allow you to specify an arbitrary attributive composition for different views of class attributes. To form a view form, firstly, select the `«Classes»` section and then, select the `«View»` action in the work panel.

--------------------------------------------------------------------------  


#### [License](/LICENSE) &ensp; [Contact us](https://iondv.com/contacts) &ensp; [Russian](/tutorial/ru/index.md)          
<div><img src="https://mc.iondv.com/watch/local/docs/nutrition-tickets" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>


--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV".**  
All rights reserved.
