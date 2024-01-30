SELECT B1.BRAND_NAME, B1.BRAND_TYPE, ROUND(B1.AVG_PRICE,2) AS 'Average Price', 
  B2.UNITS_SOLD AS 'Units Sold' 
FROM (SELECT B.BRAND_NAME, B.BRAND_TYPE, B.BRAND_ID, 
	(SUM(P.PROD_PRICE)/COUNT(DISTINCT P.PROD_SKU)) AS AVG_PRICE 
	FROM LGPRODUCT P, LGBRAND B 
	WHERE B.BRAND_ID = P.BRAND_ID 
	GROUP BY B.BRAND_ID 
	ORDER BY B.BRAND_NAME 
)B1,  
(SELECT B.BRAND_ID, SUM(L.LINE_QTY) AS UNITS_SOLD 
	FROM LGBRAND B, LGLINE L, LGPRODUCT P 
	WHERE B.BRAND_ID = P.BRAND_ID 
	AND P.PROD_SKU = L.PROD_SKU 
	GROUP BY B.BRAND_ID 
	ORDER BY B.BRAND_NAME 
)B2 
WHERE B1.BRAND_ID = B2.BRAND_ID;
