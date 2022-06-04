--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*) FROM film
WHERE length > 
(
    SELECT AVG(length) FROM film
); 
--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT COUNT(*) FROM film
WHERE rental_rate = 
(
    SELECT MAX(rental_rate) FROM film
); 

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT * FROM film
WHERE rental_rate =
(
    SELECT MIN(rental_rate) FROM film
) 
AND replacement_cost = 
(
    SELECT MIN(replacement_cost) FROM film
) 

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.,
--with customer informations
SELECT COUNT(payment_id), customer.customer_id, customer.first_name FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(payment_id) DESC;

--without customer informations
SELECT COUNT(payment_id), (customer_id) FROM payment
GROUP BY customer_id
ORDER BY COUNT(payment_id) DESC;

--Different perspective

SELECT customer_id, COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) = 
(
    SELECT MAX(count) FROM (SELECT customer_id, COUNT(payment_id) count FROM payment GROUP BY customer_id) AS sq
)

