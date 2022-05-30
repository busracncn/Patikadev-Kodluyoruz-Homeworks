--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?

--ex1
SELECT ROUND(AVG(rental_rate), 3) FROM film; --2.98
--ex2
SELECT ROUND((SUM(rental_rate)/COUNT(rental_rate)), 3) FROM film; --2.98

--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?

SELECT COUNT(*) FROM film
WHERE title LIKE 'C%'; --92

--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?

SELECT MAX(length) FROM film
WHERE rental_rate = 0.99; --184

--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150; --21
