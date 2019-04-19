# A Database for animal welfare<br>Final Report

## Project Description
Many people and families like to have pets. At the same time, many people choose to adopt pets from animal welfare platform, which not only satisfy the needs of pets, but also ease the pressure of animal welfare platform.
Our project aims to build an information platform for animal welfare, showing pet data to users who want to adopt pets.

## README docs

README file is attached in our project folder already. You can also run our project on your computer following the instruction below:

### Back-End

> Prerequisite:
>
> 1. Python 3.6
> 2. Python Package: flask 1.0.2
> 3. Python Package: flask-restful 0.3.6
> 4. Python Package: pymsql 0.9.3

Go to the directory of the main project back-end directory and run the back-end in shell:
```shell
python app.py
```

### Database

> Prerequisite:
>
> 1. MySQL
> 2. MySQL Workbench

Use MySQL Workbench import the file PetShopDatabase.sql in folder /project/MySQL


### Front-End

> Prerequisite:
>
> 1. Node.js > 8. You can download Node.js from [here.](https://nodejs.org/en/download/)
> 2. [A Chrome extensions](https://chrome.google.com/webstore/detail/allow-control-allow-origi/nlfbmbojpeacfghkpbjhddihlkkiljbi) to resolve cross-origin issues. (Please make sure it opened before start the project)

Goto the directory of the front-end project and install dependencies:

```shell
npm install
```

and run the front-end server:

```
npm run start
```

then you can see the home page in [http://localhost:9000/](http://localhost:9000/).

There're two types of user in our project, customer and administrator. You can login as administrator by using the information provided below:

```
username: admin
password: admin
```



## Technical Specifications

### Database

Database stores all the data, which supports the data showing on the front-end homepage.

### Back-End

Back-end's functionality is to connect the database and front-end. The front-end will send some request for data, so the back-end should be able to analyse the post request and send back the correct form of the data.

For example, when user searches a pet on the homepage, the back-end receives the post request from the front-end, and turns it to MySQL request, then sends it to database and receives the database results. Finally, the back-end returns the JSON format data to front-end.

### Front-End

Front end accesses data using RESTful API provided by back-end service, sealing these different types of data using RxJS as a higher abstraction of the data flow to manage all state of the front-end application, and use React as the view model framework of this project to create a responsive and easy-to-use application.

## Database Schema Sepcifications

// TODO: insert UML and EER here...

## User flow

There're two types of users, namely common users (customers) and administrators. Common users can view all the pet of our system, and get the contact info of the owner if needed.User can also search a certain pet by its ID. Administrators can also view all pets, and they could also add, delete or edit pet info as well.

![flow chart](./flow.png)

## Lessons Learned

### Technical expertise gained

#### Front End

We used React as the front-end framework, using minimal 3-rd library to practice building web application from scratch. Instead of using Redux as state manager, we use RxJS, a higher abstraction of state and data flow, to manage state, giving us much flexibility of handling complex AJAX requests.

Session handling is also a key issue we encountered during finishing our project. Although we cannot handle that issue pretty well, some workarounds are implemented to achieve a smooth login process.

### Back End

We use flask, which is Python micro-framework, to implement the back-end.
One of the main task for back-end is to connect to the front-end. In order to simplify the communication protocal with the front-end, we use RESTful api so that we can easily define the data format.
Another task for back-end is to connect to the database. The database we choose is MySQL, so that we use the pymysql package to conncet to the database, which is able to send query and receive the query results.

### Data domain insight

MySQL is good at managing the relational data model, so that we choose MySQL as the DBMS for our project.
Including constructing the data model and building the necessary tables, we also implement some procedures to help finish the CRUD operations. The best part of the procedures and functions is that it can support input parameters settings, so that we can implement more flexible query through the front-end and easily manage the query on the back-end.

### Goup work insigh

We have a clear work division, which is Mangyue finished the front-end and Haoran finished the back-end and database. After finished each part of the code, we debugged the code together.
Such clear work division brings a high efficiency and no work conflicts.

## Future work

### Uses of the database

We have already constructed the data model and implemented the CRUD operations for administrators. So the future work would be adding some functions for the normal users and shop owners.

### Functionality to be added

We have already implemented simple CURD operations for administrators, but handling huge data when data scale became large would be troublesome. So a more versatile "Edit" page would be needed for our application, in which administrator can select and edit multiple pets at same time, which brings much efficiency.

