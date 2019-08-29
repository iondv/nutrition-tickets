# Create work-flow

The ticket is created in the “Issued” status, then the cashier changes the status to “Acknowledged” after the recipient cached the ticket. If the recipient did not manage to cash the ticket within a month, then the coupon status automatically changes to “Expired”.


To create a work-flow for objects of the "Tickets" class, go to the "Workflows" section and select the "+ Workflows" action:

![shema](/tutorial/images/new_workflow.png)

A form to create a work-flow opens, where you need to enter the logical and system name of the created process and select a class from the list:

![shema](/tutorial/images/create_workflow.png)

## State of work-flow

On the work panel of the "Workflows" section, select the  "+ State" action to create the state of work-flow:

![shema](/tutorial/images/new_state_workflow.png)

A form to create state opens. Fill in the system and logical name and, if necessary, the conditions of the work-flow state of the system object:

![shema](/tutorial/images/create_state_workflow.png)

In this case, 3 states are available for objects of the “Tickets” class: «Issued by», «Acknowledged», «Expired».

![shema](/tutorial/images/all_state_workflow.png)

## Create transitions between states of work-flow

After that, it is necessary to create transitions between the states of the work-flow of system objects. Select the action “+ Transition” and a form for creating a transition opens. It is necessary to fill in the following:

* system and logical name of the transition
* state in which the object is located to make the transition
* the state that the object will acquire after the transition
* values assigned to the attributes of the object after the transition

![shema](/tutorial/images/create_transition_workflow.png)

When transitioning from the “Issued by” state to “Acknowledged” the status, the current date for the ticket acknowledgment date, and the current user as the user who acknowledged the ticket must be changed:

![shema](/tutorial/images/assignment_transitions_workflow.png)

When transitioning from the “Issued by” state to “Acknowledged” status:

![shema](/tutorial/images/assignment_state_workflow.png)

That's how we created the work-flow to issue the ticket to the recipient:

![shema](/tutorial/images/shems_workflow.png)

## Override the view form according to the state of the object

Further, you can override the attributive composition of the view form of the Ticket depending on its state. To do this, select the state of the ticket's work-flow (in the side menu or in the workspace of the “Workflows” section) and select the “View” action on the work panel. Then, select the “Acknowledged” state, go to the “View” work panel, after which the constructor for generating the standard view form for the object is displayed:

![shema](/tutorial/images/view_workflow.png)

### The next page: [Application and user roles](/tutorial/en/6_done_application.md)  

--------------------------------------------------------------------------  

 #### [Licence](/LICENSE) &ensp;  [Contact us](https://iondv.ru/index.html) &ensp;  [English](/tutorial/en/5_create_workflow.md)    &ensp;   <div><img src="https://mc.iondv.com/watch/local/docs/framework" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>        
--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV"**.  
All rights reserved. 