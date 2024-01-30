SELECT E.EMP_NUM, E.EMP_LNAME, E.EMP_FNAME,  
ROUND(S.SAL_AMOUNT,0) AS SAL_AMOUNT
FROM LGEMPLOYEE E, LGSALARY_HISTORY S
WHERE E.EMP_NUM = S.EMP_NUM
AND S.SAL_FROM = (SELECT MIN(SAL_FROM)
  FROM LGSALARY_HISTORY S
  WHERE E.EMP_NUM = S.EMP_NUM)
ORDER BY EMP_NUM;
