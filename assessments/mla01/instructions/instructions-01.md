StayWell manages the owner information about every property under their management. Since the owners are essential to the operations, their addresses (with city, state, and zip code) are collected. Create the `OWNER` table, it should have the following data:

- `OWNER_NUM` as fixed-length 5 characters
- `LAST_NAME` as maximum 20 characters
- `FIRST_NAME` as maximum 20 characters
- `ADDRESS` as maximum 100 characters
- `CITY` as maximum 20 characters
- `STATE` as fixed-length 2 characters
- `ZIP_CODE` as fixed-length 5 characters

All fields are mandatory and cannot be empty

StayWell stores and manages the detailed information about the properties within their operations. Each property is assigned to an office for its management activities. In addition, property-specific information such as the house size, number of bedrooms and floors, and monthly rent are also kept. Each property has an owner reference. Considering the future expansion of StayWell, all properties should be managed within the database. Create the `PROPERTY` table, it should have the following data:

- `PROPERTY_ID` as small integer
- `OFFICE_NUM` as tiny integer
- `ADDRESS` as maximum of 100 characters
- `SQR_FT` as small integer
- `BDRMS`as tiny integer
- `FLOORS` as tiny integer
- `MONTHLY_RENT` as small integer
- `OWNER_NUM` as fixed-length 5 characters

All fields except monthly rent are mandatory and cannot be empty.
