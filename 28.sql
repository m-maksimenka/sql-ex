--  Exercise: 28

/*  Using Product table, find out the number of makers who produce only one model.  */


SELECT COUNT(maker) AS qty
FROM (
SELECT maker
FROM product
GROUP BY maker
HAVING COUNT(model) = 1
) new_table;