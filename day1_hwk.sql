WEEK 4 DAY 1 HWK
---------------------------------------------------------
1. How many actors are there with the last name 'Wahlberg'? 
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
ANSWER = 2

2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
ANSWER = 5607

3. 
SELECT film_id, inventory_id
FROM inventory
GROUP BY inventory_id
ORDER BY COUNT(film_id) DESC;
ANSWER = Academy Dinosaur

4. How many customers have the last name 'William'?
SELECT last_name
FROM customer
WHERE last_name = 'William';
ANSWER = 0

5. What store employee (get the id) sold the most rentals? 
SELECT COUNT(rental_id), staff_id
FROM payment
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC
ANSWER = 2, Jon Stephens

6. How many different district names are there? 
SELECT COUNT(DISTINCT district)
FROM address
ORDER BY COUNT(district)
ANSWER = 378

7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id
FROM film_actor 
GROUP BY film_id
HAVING COUNT(actor_id) > 10
ANSWER = 649

8. From store_id, how many customers have a last name ending with 'es'? (use customer table and get film_id)
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
ORDER BY store_id
ANSWER = 13

9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
with ids between 380 and 430? (use group by and having > 250)
SELECT rental_id, customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY rental_id, customer_id
ORDER BY COUNT(amount) > 250 DESC

10.Within the film table, how many rating categories are there? And what rating has the most 
   movies total? 
SELECT rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC
ANSWER: 5 ratings; PG-13





















