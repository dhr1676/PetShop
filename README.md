# Pet Shop

## CS5200 Project Proposal

### Group Members:
Haoran Ding, Mangyue Sun

### Project Brief Description
Many people and families like to have pets. At the same time, many people choose to adopt pets from animal welfare platform, which not only satisfy the needs of pets, but also ease the pressure of animal welfare platform.
Our project aims to build an information platform for animal welfare, showing pet data to users who want to adopt pets.

If users are registered as customers, the users can choose their favorite pets by setting rule filters, such as pet breed, fur color, or health condition.
If users are registered as host, the users can post their pets' data on the platform, and the pets' data would be stored in the database.

### Data Domain and the Functionality
An EER model is presented in Appendix I.

### Functionality:
Users as consumers should have the access to create data tuples, read tuples, update tuples and delete tuples, which should be controlled by exposed interfaces rather than directly control the database.
Users as customers should have the access to read data tuples by using rule filters using the aforementioned interfaces.

The frontend part should have the functionality to allow the customers to view the data, control the frontend router, and communicate to the backend server.
The backend part connect the frontend and the database, and provide APIs required by frontend.

### SQL Storage
We plan to use SQL storage to store the data. Because our model is a relational model which can be easily managed by the SQL.

### Realization of the Project
We plan to use Python as the backend part programming language, using some frameworks like Django or Flask.
And we plan to use React as the front-end presentation framework, and use Node as middle layer to control frontend router as well as server-side rendering.

### Reason to Choose this Data Domain
Because we like animals. Millions of stray animals suffer on the streets or are euthanized in shelters every day around the world. If homes can be found for them, many precious lives can be saved — and more happy families created.
