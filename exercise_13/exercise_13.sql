-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country, AVG(payment.amount) FROM country
LEFT JOIN city ON country.country_id = city.country_id
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer ON address.address_id = customer.address_id
LEFT JOIN rental ON customer.customer_id = rental.customer_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
WHERE payment.amount is not null
GROUP by country.country
ORDER by AVG(payment.amount) DESC
LIMIT 10
