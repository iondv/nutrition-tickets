# IONDV. Nutrition-tickets

Эта страница на [Русском](/README_RU.md)

<h1 align="center"> <a href="https://www.iondv.com/"><img src="/nutrition_tickets.png" height="500px" alt="IONDV. Framework nutrition tickets" align="center"></a>
</h1>  

The **IONDV. Nutrition-tickets** web-app is licensed under **Apache 2.0**. The app is implemented on IONDV. Framework as a simple example of a basic application created in [IONDV. Studio](https://github.com/iondv/studio/blob/master/readme_ru.md).  It's a part of "How to create applications in IONDV. Studio" [tutorial](https://www.youtube.com/watch?v=e201ko9fkQ8). 

### IONDV. Framework in brief

**IONDV. Framework** - is a node.js open source framework for developing accounting applications
or microservices based on metadata and individual modules. Framework is a part of 
instrumental digital platform to create enterprise 
(ERP) apps. This platform consists of the following open-source components: the [IONDV. Framework](https://github.com/iondv/framework), the
[modules](https://github.com/topics/iondv-module) и ready-made applications expanding it
functionality, visual development environment [Studio](https://github.com/iondv/studio) to create metadata for the app.

* For more details, see [IONDV. Framework site](https://iondv.com). 

* Documentation is available in the [Github repository](https://github.com/iondv/framework/blob/master/docs/en/index.md).

## Description 

**IONDV. Nutrition-tickets** - is a web application based on [IONDV. Framework](https://iondv.com), created in [IONDV. Studio](https://github.com/iondv/studio/blob/master/README.md). It is used as a registry to account, store, and present the data on preferential coupons for citizens with a preferential category. The main purpose of the application is the issuance of tickets for social nutrition.
The key entity is a *Ticket*, that contains descriptive information and references to the person. 
*The main advantage* - control of tickets for people with a particular preferential category, which allows, if necessary, to obtain accurate information about a ticket or person.

### How to create? 

Watch a brief [video](https://www.youtube.com/watch?v=e201ko9fkQ8&t=331s) about creating a simple application - [IONDV. Nutrition-tickets](https://github.com/iondv/nutrition-tickets) in **IONDV. Studio**. Read the detailed [instructions](https://github.com/iondv/nutrition-tickets/blob/master/tutorial/ru/index.md), where the process is described step by step.

<a href="https://www.youtube.com/watch?v=e201ko9fkQ8&t=331s" target="_blank"><img src="/tickets_video.png" height="250px" alt="" title=""></a>

## Demo

Demo access to the system without registration: https://nutrition-tickets.iondv.com. There are three different roles:  operator, cashier, and controller. The name of a role corresponds to its login, the password is one for all four logins - ion-demo. 

Account for [back office](https://nutrition-tickets.iondv.com/registry) as a user with the role of "Administrator": login - **demo**, password **ion-demo**.

### Modules

The basis of all data is [Registry module](https://github.com/iondv/registry). **Registry module** – is a central module designed specifically for working with data based on metadata structures - including project management, programs, events, etc.
Also used:

* [Admin module](https://github.com/iondv/ionadmin) - is used for assigning rights, managing tasks on a schedule and other administrative tasks; 

## How to get the app?  

### Git

Quick start with the **IONDV. Nutrition-tickets** repository on GitHub — [detailed instruction](https://github.com/iondv/framework#quick-start-with-the-repository).  

1. Set the system environment and global dependencies.
2. Clone the core, module and application.
3. Build and deploy the app.
4. Run.

Install and run with a single line under Linux using the [iondv-app](https://github.com/iondv/iondv-app) installer (install lоcally node.js, MongoDB и Git):
```
bash <(curl -sL https://raw.githubusercontent.com/iondv/iondv-app/master/iondv-app) -q -i -m localhost:27017 nutrition-tickets
```
Where insted of `localhost:27017` you need to set the MongoDb adress. After launch, open the link 'http://localhost:8888', account back office is available - 'http://localhost:8888/registry' **demo**, password **ion-demo**.

### Docker

Run application using docker container - [detailed instruction](https://hub.docker.com/r/iondv/nutrition-tickets).

1. Run MongoDB: `docker run --name mongodb -v mongodb_data:/data/db -p 27017:27017 -d mongo`
2. Run IONDV. Nutrition-tickets `docker run -d -p 80:8888 --link mongodb iondv/nutrition-tickets`.
3. Open the `http://localhost` link in a browser in a minute (time required to initialize data). For back office login: **demo**, password: **ion-demo** 

## Useful links

Some handy links to learn more information:

* [Instruction to create the app in ION. Studio](tutorial/en/index.md)
* [IONDV. Framework](https://iondv.com/) 
* [Facebook](https://www.facebook.com/iondv/)

--------------------------------------------------------------------------  


#### [License](/LICENSE) &ensp; [Contact us](https://iondv.com/contacts) &ensp; [Russian](/README_RU.md)          
<div><img src="https://mc.iondv.com/watch/github/docs/ticket-en" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>


--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV".**  
All rights reserved.
