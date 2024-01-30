SELECT last_name, first_name, ROUND(AVG(length)) AS 'average' 
FROM film 
	INNER JOIN film_actor ON film.film_id = film_actor.film_id
	INNER JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id > 0
GROUP BY last_name, first_name
ORDER BY average DESC, last_name ASC;