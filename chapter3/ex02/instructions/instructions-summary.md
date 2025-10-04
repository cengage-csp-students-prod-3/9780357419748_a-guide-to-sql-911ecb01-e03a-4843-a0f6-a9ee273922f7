## Database Model: StayWell

Staywell finds and manages accommodation for owners of student accommodation in the Seattle Area. The company rents out and helps to maintain 1–5-bedroom properties located in two main areas in the city, Columbia City and Georgetown. This is done on behalf of property owners based both in the local area and throughout the United States. Each location is administrated by a different office, StayWell-Columbia City and StayWell-Georgetown.

StayWell wishes to expand its business. The current model relies on advertisements in student and university publications in print and online, but prospective owners and renters need to contact the offices and speak to an administrator on all matters relating to renting of properties. The office organizes maintenance services for a fee, which is also currently done via email or direct communication.

StayWell has decided that the best way to increase efficiency and move toward an e-commerce-based business model is to store all the data about the properties, owners, tenants and services in databases. This will mean that the information can be easily accessed. StayWell hopes that these databases can then be used in future projects such as mobile apps and online booking systems.

The data is split into several tables, shown below:

The `OFFICE` table shows the office number, office name, address, area, city, state, and ZIP code.

<p align='center'>
<img src='../assets/xUADFJq3R8iP5DqspMT1.png' width='95%' alt='OFFICE table' />
</p>

<suo>_OFFICE table_</sup>

StayWell stores information about the owners of each property in the `OWNER` table. Each owner is identified by a unique owner number that consists of two uppercase letters followed by a three-digit number. For each owner, the table also includes the last name, first name, address, city, state, and ZIP code. Notice the owners are from across the United States. Although some apartments may be owned by a couple or a family, only the primary contact is given.

<p align='center'>
<img src='../assets/4kiPPaZFSs2ghFdDDl3b.png' width='95%' alt='OWNER table' />
</p>

<sup>_OWNER table_</sup>

Each property at each location is identified by a property ID, as seen in the `PROPERTY` table. Each property also includes the office number that manages the property, address, floor size, the number of bedrooms, the number of floors, monthly rent per property, and the owner number. The property ID is an integer unique for each property.

<p align='center'>
<img src='../assets/Dc4nuZFpRvKMFKPvlBvc.png' width='95%' alt='PROPERTY table' />
</p>

<sup>_PROPERTY table_</sup>

The `RESIDENTS` table includes details about the residents living in each property. The `RESIDENTS` table includes the first name and last name for each of the residents, along with a resident ID. The `PROPERTY_ID` is the unique identification number of the property in which they are staying.

<p align='center'>
<img src='../assets/BlU2XB5IQhSGf34XpIQn.png' width='95%' alt='RESIDENTS table' />
</p>

<sup>_RESIDENTS table_</sup>

The `SERVICE_REQUEST` table shows requests that residents have put into the offices for maintenance. Each row contains a unique service ID number, the property ID, the category number associated with the type of work, the office managing the property, a description of the request, the current status of the request, the estimated hours to complete the request, the hours spent on the request, and the scheduled service date.

<p align='center'>
<img src='../assets/Y1m5yLPTfWwiiXINQqNM.png' width='95%' alt='SERVICE_REQUEST table' />
</p>

<sup>_SERVICE_REQUEST table_</sup>

The `SERVICE_CATEGORY` table includes details of these services. The `CATEGORY_NUM` provides a unique number for the service, and `CATEGORY_DESCRIPTION` shows what the service is.

<p align='center'>
<img src='../assets/0vN0brzdRvqmolNffCTO.png' width='95%' alt='SERVICE_CATEGORY table' />
</p>

<sup>_SERVICE_CATEGORY table_</sup>
