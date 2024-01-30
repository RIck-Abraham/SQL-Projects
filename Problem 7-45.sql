SELECT MAX(P.AVGPRICE) AS "LARGEST AVERAGE"
FROM (SELECT BRAND_ID, ROUND(AVG(PROD_PRICE),2) AS AVGPRICE
FROM LGPRODUCT
GROUP BY BRAND_ID) P