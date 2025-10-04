## Scenario

StayWell focuses on finding and managing accommodation for owners of student accommodation in the Seattle area. Currently, it operates in two main areas of the city with separate administrative offices: Colombia City and Georgetown. StayWell rents out 1 to 5-bedroom properties to students on behalf of property owner 7.
You are assigned, as the database administrator, to collect and manage transactional data of the StayWell operations. You will begin by creating the database and tables for StayWell and will transfer the collected data. Then, you will need to execute further database operations as StayWell’s operations expand.

The `OFFICE` table contains information about the two StayWell office locations, including the office number, office name, and address.

<p align='center'>
<img src='../assets/OxLyTXiS1mL4qoV5ck9P.png' width='95%' alt='OFFICE table' />
</p>

<sup>_OFFICE table_</sup>

The `SERVICE_CATEGORY` table contains information regarding the different service categories, such as their numerical designation and description.

<p align='center'>
<img src='../assets/GiYdm0jRPq5WXTcRjynO.png' width='95%' alt='SERVICE_CATEGORY table' />
</p>

<sup>_SERVICE_CATEGORY table_</sup>

The `SERVICE_REQUEST` table contains information on service requests for each property. The `SERVICE_REQUEST` table stores the service ID, property ID, service category number, the managing office ID, request description, the request's status, estimated hours, hours spent, and the service date.

<p align='center'>
<img src='../assets/nWmvSXBTjpKmC0ud6T8A.png' width='95%' alt='SERVICE_REQUEST' />
</p>

<sup>_SERVICE_REQUEST table_</sup>

The `RESIDENTS` table contains the information on each resident, such as their resident ID, first name, surname (last name), and property ID.

<p align='center'>
<img src='../assets/ikkGN0XRFmuuvGCDZxMG.png' width='95%' alt='RESIDENTS table' />
</p>

<sup>_RESIDENTS table_</sup>

The `OWNER` table contains information on each property owner, such as their owner number (ID), last name, first name, and address.

<p align='center'>
<img src='../assets/DA5AHKE6Q0yBUxdHbbKM.png' width='95%' alt='OWNER table' />
</p>

<sup>_OWNER table_</sup>

The `PROPERTY` table contains information on each property, including the property ID, managing office number, address, square feet, bedrooms, floors, monthly rent, and the owner.

<p align='center'>
<img src='../assets/bdx7Zlv7QTenGWZ4Tk12.png' width='95%' alt='PROPERTY table' />
</p>

<sup>_PROPERTY table_</sup>

## Project Objectives

- Create, use, and drop views
- Update the data over views instead of tables
- Create and test constraints such as foreign keys
- Use mathematical functions over numerical data
- Calculate dates with SQL functions
- Create triggers before inserting data into tables

## Best practices to follow:

- Write detailed comments for SQL statements.
- Organize and structure SQL statements for readability.

## Your tasks are as follows:
