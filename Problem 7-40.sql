SELECT A.EMP_NUM, A.EMP_FNAME, A.EMP_LNAME, MAX(B.SAL_AMOUNT) AS LARGESTSALARY
FROM LGEMPLOYEE A, LGSALARY_HISTORY B  
WHERE A.DEPT_NUM = 200 AND A.EMP_NUM = B.EMP_NUM
GROUP BY B.EMP_NUM
ORDER BY LARGESTSALARY DESC;
