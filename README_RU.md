# IONDV. Ticket  

**IONDV. Ticket** - это программное решение на основе [IONDV. Framework](https://iondv.com), реализованное в приложении [IONDV. Studio](https://github.com/iondv/studio/blob/master/readme_ru.md) для организации учета, хранения и отображения данных о льготных талонах для граждан, имеющих льготныую категорию. 
Ключевой сущность является Талон, который содержит в себе информацию описательного характера и ссылки на гражданина, которому предсназначен. 

Главное преимущество использования системы - контроль за отавариваеем льготных талонов граждан, имеющих ту или иную льнотную категорию, что позволяет, при необходимости, получить точную информации о талоне и гражданине.

### Демо

Демо доступ в систему для ознакомления, без регистрации: https://ticket-en.iondv.com

Учетная запись для [бек-офиса](https://ticket-en.iondv.com/registry): пользователь **demo**, пароль **ion-demo**. 

### Дополнительные преимущества:
 
* Открытый исходный код всех компонентов Системы - https://github.com/iondv/ticket-en;
* Открытое программное обеспечение используемое для СУБД и серверных ОС (работет под linux и windows);
* Возможна любая адаптация и модернизация системы, в том числе структур данных без программирования в [визуальном редакторе](https://studio.iondv.com).
* Запуск собственной версии в течении нескольких минут - см. [Как получить](#как-получить)

### Модули

Основу реестра талонов составляет [модуль Регистри](https://github.com/iondv/registry). 
Также используются: 

* [Административный модуль](https://github.com/iondv/ionadmin) - позволяет управлять пользователями и ролями для доступа к системе и другими функциями, неоходимыми администартору.  
## Как получить?  

### Git

Быстрый старт с использованием репозитория IONDV. Ticket на GitHub — [подробная инструкция](https://github.com/iondv/framework/blob/master/docs/ru/readme.md#быстрый-старт-с-использованием-репозитория).  

1. Установите системное окружение и глобальные зависимости.
2. Клонируйте ядро, модуль и приложение.
3. Соберите и разверните приложение.
4. Запустите.

Или установка и запуск в одну строку под Linux с использованием установщика [iondv-app](https://github.com/iondv/iondv-app) (требуется локально node.js, MongoDB и Git):
```
curl -L -s https://github.com/iondv/iondv-app/archive/master.zip > iondv-app.zip &&\
  unzip -p iondv-app.zip iondv-app-master/iondv-app > iondv-app &&\
  bash iondv-app -q -i -m localhost:27017 ticket-en
```
Где вместо `localhost:27017` нужно указать адрес MongoDb. После запуска открыть ссылку 'http://localhost:8888', учетная запись бек офиса **demo**, пароль **ion-demo**.

### Docker

Запуск приложения с использованием докер контейнера - [подробная инструкция](https://hub.docker.com/r/iondv/ticket-en).

1. Запустите СУБД mongodb: `docker run --name mongodb -v mongodb_data:/data/db -p 27017:27017 -d mongo`
2. Запустите IONDV. Telecom `docker run -d -p 80:8888 --link mongodb iondv/ticket-en`.
3. Откройте ссылку `http://localhost` в браузере через минуту (время требуется для инициализации данных). Для бек офиса логин: **demo**, пароль: **ion-demo** 

## Ссылки

Для дополнительной информации смотрите следующие ресурсы:

* [Инструкция по созданию IONDV. Ticket](tutorial/ru/index.md)
* [Руководство пользователя IONDV. Studio](https://github.com/iondv/studio/tree/master/manuals/RP_studio.docx)
* [IONDV. Framework](https://iondv.com/) 
* [Facebook](https://www.facebook.com/iondv/)

--------------------------------------------------------------------------  


#### [Licence](/LICENSE) &ensp; [Contact us](https://iondv.com/contacts) &ensp; [Stack Overflow](https://stackoverflow.com/questions/tagged/iondv) &ensp; [FAQs](/faqs.md)          
<div><img src="https://mc.iondv.com/watch/github/docs/ticket-en" style="position:absolute; left:-9999px;" height=1 width=1 alt="iondv metrics"></div>


--------------------------------------------------------------------------  

Copyright (c) 2018 **LLC "ION DV".**  
All rights reserved.
