--  Exercise: 26

/*  Find out the average price of PCs and laptops produced by maker A.
Result set: one overall average price for all items.    */


SELECT AVG(price) AS AVG_price
FROM (
SELECT model, price
FROM pc
UNION ALL
SELECT model, price
FROM laptop
) AS table1
WHERE model IN (
SELECT model
FROM product
WHERE maker = 'A'
);