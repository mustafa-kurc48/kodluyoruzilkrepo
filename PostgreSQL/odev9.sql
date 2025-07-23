-- PostgreSQL Ödev 9

-- 1.Soru : city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini
-- birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT city.city AS "Şehir İsimleri", country.country AS "Ülke İsimleri" FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2.Soru : customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki
-- first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT
    customer.first_name,
	customer.last_name,
	payment.payment_id
FROM
    customer
INNER JOIN
    payment ON payment.customer_id = customer.customer_id;

-- 3.Soru : customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name
-- ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT
    rental.rental_id,
	customer.first_name,
	customer.last_name
FROM
    rental
INNER JOIN
    customer ON customer.customer_id = rental.customer_id;