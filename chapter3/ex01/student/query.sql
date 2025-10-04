-- Task 1: Create the REP table
DROP TABLE IF EXISTS REP;

CREATE TABLE REP
(
   REP_ID CHAR(2) PRIMARY KEY,
   FIRST_NAME VARCHAR(20),
   LAST_NAME VARCHAR(20),
   ADDRESS VARCHAR(20),
   CITY VARCHAR(15),
   STATE CHAR(2),
   POSTAL CHAR(5),
   CELL_PHONE CHAR(12),
   COMMISSION NUMERIC(7,2),
   RATE NUMERIC(3,2)
);

-- Show structure of REP table
DESCRIBE REP;

-- Task 2: Insert Fred Kiser
INSERT INTO REP
VALUES
('35','Fred','Kiser','427 Billings Dr.','Cody','WY','82414','307-555-6309',0.00,0.05);

-- Verify insert
SELECT * FROM REP;

-- Task 3: Drop the REP table
DROP TABLE REP;

-- Task 4: Verify KimTay database is back to starting point
SHOW TABLES;
