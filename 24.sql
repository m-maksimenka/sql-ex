--  Exercise: 24

/*  List the models of any type having the highest price of all products present in the database.  */


SELECT model
FROM (
SELECT model, price
FROM pc
UNION
SELECT model, price
FROM laptop
UNION
SELECT model, price
FROM printer) AS table1
WHERE price = (
SELECT MAX(price) 
FROM (
SELECT price
FROM pc
UNION
SELECT price
FROM laptop
UNION
SELECT price
FROM printer) AS table2
);
