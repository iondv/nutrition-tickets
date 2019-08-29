# Application and user roles

A recipient comes to social protection for a ticket to receive benefits. The operator (employee of social protection) starts the recipient's card and creates 4 tickets for him per month. The recipient must cash out the tickets within a month in the store / canteen / issuing point for the amount indicated in the ticket, which depends on the number of categories assigned to the recipient. When using a ticket, the cashier must mark it in the program as “Acknowledged”. Acknowledged tickets are no longer valid.

## «operator» role

An employee with the “Operator” role creats the recipient's card with the information of the availability of a preferential category and creates 4 tickets for him in the appropriate collection in the form. When created, the ticket acquires the state - “Issued by”:

![shema](/tutorial/images/form_person.png) ![shema](/tutorial/images/form_person_category.png)

## «cashier» role

An employee with the role “Cashier” finds the number of the recipient's ticket in the list and, if the coupon has not expired (it is not highlighted in red and the completion date is longer than the current one), opens the object for editing. After taking the action, the employee needs to acknowledge the ticket, after which it is no longer valid.

![shema](/tutorial/images/form_list_tickets.png) ![shema](/tutorial/images/form_tickets.png) ![shema](/tutorial/images/form_ticket_ack.png)


--------------------------------------------------------------------------  

 #### [Licence](/LICENSE) &ensp;  [Contact us](https://iondv.ru/index.html) &ensp;  [Russian](/tutorial/ru/6_done_application.md)    &ensp;   <div><img src="https://mc.iondv.com/watch/local/docs/framework" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>        
--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV"**.  
All rights reserved. 