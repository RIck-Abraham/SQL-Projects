SELECT A.BRAND_ID, A.BRAND_NAME, ROUND(AVG(B.PROD_PRICE),2) AS TOTALINVENTORY
FROM LGBRAND A, LGPRODUCT B
WHERE A.BRAND_ID = B.BRAND_ID
GROUP BY BRAND_ID
ORDER BY BRAND_NAME ASC;