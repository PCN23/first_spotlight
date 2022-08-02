-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5

SELECT title FROM customer 
LEFT JOIN rental ON customer.customer_id = rental.customer_id
LEFT JOIN inventory ON rental.inventory_id = inventory.inventory_id
LEFT JOIN film ON inventory.film_id = film.film_id
WHERE customer.first_name = 'Roberta'
