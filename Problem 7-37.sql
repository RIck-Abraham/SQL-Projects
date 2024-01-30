SELECT A.BRAND_ID, SUM(B.PROD_QOH) AS TOTALINVENTORY
FROM LGBRAND A, LGPRODUCT B
WHERE A.BRAND_ID = B.BRAND_ID
GROUP BY BRAND_ID
ORDER BY BRAND_ID DESC;
