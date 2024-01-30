SELECT RegisteredName, Height
FROM Horse
WHERE Height >  
  (SELECT AVG(Height)
   FROM Horse)
ORDER BY Height ASC;