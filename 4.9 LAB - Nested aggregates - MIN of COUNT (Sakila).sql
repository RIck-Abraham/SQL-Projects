SELECT f.title
FROM film f
	INNER JOIN inventory i
	ON f.film_id = i.film_id
GROUP BY f.title
HAVING COUNT(i.inventory_id) = 
	(SELECT MIN(count_film_id) 
    FROM (SELECT COUNT(film_id) AS count_film_id
		 FROM inventory
         GROUP BY film_id ) 
	AS temp_table);