**Task 1:** Create a `NONCAT` table with the structure shown below.
| Field       | Type        | Null | Key | Default |
|-------------|-------------|------|-----|---------|
| ITEM_ID     | char(4)     | NO   | PRI | NULL    | 
| DESCRIPTION | char(30)    | YES  |     | NULL    |
| ON_HAND     | int         | YES  |     | NULL    |
| CATEGORY    | char(3)     | YES  |     | NULL    | 
| PRICE       | decimal(6,2)| YES  |     | NULL    |
