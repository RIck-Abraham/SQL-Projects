SELECT E.EMP_NUM, E.EMP_LNAME, E.EMP_FNAME, S.SAL_AMOUNT
FROM LGEMPLOYEE E 
NATURAL JOIN LGSALARY_HISTORY S
WHERE S.SAL_END IS NULL AND E.DEPT_NUM = 300 
ORDER BY S.SAL_AMOUNT DESC;