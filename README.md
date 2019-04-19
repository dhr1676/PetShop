# A Database for animal welfare<br>Final Report

Many people and families like to have pets. At the same time, many people choose to adopt pets from animal welfare platform, which not only satisfy the needs of pets, but also ease the pressure of animal welfare platform.Our project aims to build an information platform for animal welfare, showing pet data to users who want to adopt pets.

## README docs

README file is attached in our project folder already. You can also run our project on your computer following the instruction below:

### Back-End

// TODO

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

// TODO

### Back-End

// TODO

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

### Data domain insight

// TODO

## Future work

### Uses of the database

// TODO

### Functionality to be added

We have already implemented simple CURD operations for administrators, but handling huge data when data scale became large would be troublesome. So a more versatile "Edit" page would be needed for our application, in which administrator can select and edit multiple pets at same time, which brings much efficiency.

