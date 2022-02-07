SELECT product.maker, AVG(pc.hd) AS AVG_hd
FROM product
JOIN pc
ON product.model = pc.model
WHERE maker IN (
SELECT maker
FROM product
WHERE type = 'printer'
)
GROUP BY maker;