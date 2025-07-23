-- PostgreSQL Ödev 12

-- 1.Soru : film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film
-- uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(title) FROM film WHERE length > (SELECT AVG(length) FROM film);

-- 2.Soru : film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(title) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3.Soru : film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND
replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4.Soru : payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer.first_name, customer.last_name, payment.amount FROM customer
JOIN payment ON customer.customer_id = payment.customer_id WHERE amount = (SELECT MAX(amount) FROM payment);