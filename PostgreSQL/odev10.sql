-- PostgreSQL Ödev 10

-- 1.Soru : city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini
-- birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT city.city AS "Şehir İsmi", country.country AS "Ülke İsmi" FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 2.Soru : customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki
-- first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız
SELECT
customer.first_name AS "Ad",
customer.last_name AS "Soyad",
payment.payment_id FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

-- 3.Soru : customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki
-- first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT
customer.first_name AS "Ad",
customer.last_name AS "Soyad",
rental.rental_id FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
