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

