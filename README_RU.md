# IONDV. Nutrition-tickets

This page in [English](/README.md)

<h1 align="center"> <a href="https://www.iondv.com/"><img src="/nutrition_tickets.png" height="500px" alt="IONDV. Framework nutrition tickets" align="center"></a>
</h1>  

Веб-приложение **IONDV. Nutrition-tickets** распространяется бесплатно под лицензий **Apache 2.0**. Приложение реализовано на IONDV. Framework и представляет собой простой пример базового приложения, созданного в [IONDV. Studio](https://github.com/iondv/studio/blob/master/readme_ru.md) в рамках обучающего тьюториала по созданию приложений.

### Кратко об IONDV. Framework

**IONDV. Framework** - это опенсорный фреймворк на node.js для разработки учетных приложений 
или микросервисов на основе метаданных и отдельных модулей. Он является частью 
инструментальной цифровой платформы для создания enterprise 
(ERP) приложений состоящей из опенсорсных компонентов: самого [фреймворка](https://github.com/iondv/framework), 
[модулей](https://github.com/topics/iondv-module) и готовых приложений расширяющих его 
функциональность, визуальной среды [Studio](https://github.com/iondv/studio) для 
разработки метаданных приложений.

Подробнее об [IONDV. Framework на сайте](https://iondv.com), документация доступна в [репозитории на github](https://github.com/iondv/framework/blob/master/docs/en/index.md).

## Описание 

**IONDV. Nutrition-tickets** - это программное решение на основе [IONDV. Framework](https://iondv.com), реализованное в приложении [IONDV. Studio](https://github.com/iondv/studio/blob/master/readme_ru.md) для организации учета, хранения и отображения данных о льготных талонах для граждан, имеющих льготныую категорию. Основное назначение приложения это выдача талонов на получение социального питания.
Ключевой сущность является *Талон*, который содержит в себе информацию описательного характера и ссылки на гражданина, которому предназначен. 
*Главное преимущество* - контроль за льготными талонами граждан, имеющих ту или иную льнотную категорию, что позволяет, при необходимости, получить точную информации о талоне и гражданине.

### Как создать? 

Смотрите [видео](https://www.youtube.com/watch?v=e201ko9fkQ8&t=331s) о создании простого приложения [IONDV. Nutrition-tickets](https://github.com/iondv/nutrition-tickets) в **IONDV. Studio**. Читайте подробную [инструкцию](https://github.com/iondv/nutrition-tickets/blob/master/tutorial/ru/index.md), где поэтапно описаны действия для создания системы в **IONDV. Studio**.

<a href="https://www.youtube.com/watch?v=e201ko9fkQ8&t=331s" target="_blank"><img src="/tickets_video.png" height="250px" alt="" title=""></a>

## Демо

Демо доступ в систему для ознакомления, без регистрации: https://nutrition-tickets.iondv.com. Существует три основных роли: **оператор**, **кассир**, **контролёр**. Название роли соответствует ее логину, пароль один для всех трех логинов - **ion-demo**. 

Учетная запись для [бек-офиса](https://nutrition-tickets.iondv.com/registry) под пользователем с ролью "Администратор": логин **demo**, пароль **ion-demo**. 

### Модули

Основу реестра талонов составляет [модуль Регистри](https://github.com/iondv/registry). 
Также используются: 

* [Административный модуль](https://github.com/iondv/ionadmin) - позволяет управлять пользователями и ролями для доступа к системе и другими функциями, неоходимыми администартору.  

## Как получить?  

### Git

Быстрый старт с использованием репозитория IONDV. Nutrition-tickets на GitHub — [подробная инструкция](https://github.com/iondv/framework/blob/master/docs/ru/readme.md#быстрый-старт-с-использованием-репозитория).  

1. Установите системное окружение и глобальные зависимости.
2. Клонируйте ядро, модуль и приложение.
3. Соберите и разверните приложение.
4. Запустите.

Или установка и запуск в одну строку под Linux с использованием установщика [iondv-app](https://github.com/iondv/iondv-app) (требуется локально node.js, MongoDB и Git):
```
bash <(curl -sL https://raw.githubusercontent.com/iondv/iondv-app/master/iondv-app) -q -i -m localhost:27017 nutrition-tickets
```
Где вместо `localhost:27017` нужно указать адрес MongoDb. После запуска открыть ссылку 'http://localhost:8888', учетная запись бек офиса **demo**, пароль **ion-demo**.

### Docker

Запуск приложения с использованием докер контейнера - [подробная инструкция](https://hub.docker.com/r/iondv/nutrition-tickets).

1. Запустите СУБД mongodb: `docker run --name mongodb -v mongodb_data:/data/db -p 27017:27017 -d mongo`
2. Запустите IONDV. Telecom `docker run -d -p 80:8888 --link mongodb iondv/nutrition-tickets`.
3. Откройте ссылку `http://localhost` в браузере через минуту (время требуется для инициализации данных). Для бек офиса логин: **demo**, пароль: **ion-demo** 

## Ссылки

Для дополнительной информации смотрите следующие ресурсы:

* [Инструкция по созданию IONDV. Ticket](tutorial/ru/index.md)
* [Руководство пользователя IONDV. Studio](https://github.com/iondv/studio/tree/master/manuals/RP_studio.docx)
* [IONDV. Framework](https://iondv.com/) 
* [Facebook](https://www.facebook.com/iondv/)

--------------------------------------------------------------------------  


#### [License](/LICENSE) &ensp; [Contact us](https://iondv.com/contacts) &ensp; [English](/README.md)          
<div><img src="https://mc.iondv.com/watch/github/docs/ticket-en" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>


--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV".**  
All rights reserved.
