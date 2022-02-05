--  Exercise: 25

/*  Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
Result set: maker.  */


SELECT DISTINCT product.maker
FROM product
JOIN pc
ON product.model = pc.model
WHERE maker IN (
SELECT maker 
FROM product 
WHERE type = 'pc' 
AND maker IN (
SELECT maker 
FROM product 
WHERE type = 'printer')
)
AND pc.ram = (
SELECT MIN(ram) 
FROM pc
)
AND pc.speed = (
SELECT MAX(speed) 
FROM pc
WHERE pc.ram = (
SELECT MIN(ram) 
FROM pc
)
);