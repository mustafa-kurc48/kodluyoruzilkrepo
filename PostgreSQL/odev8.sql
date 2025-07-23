-- PostgreSQL Ödev 8

-- Talimatlar :
-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE,
-- email VARCHAR(100) olan bir tablo oluşturalım.
-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

-- İşlemler testdb veritabanında yapılmıştır
CREATE TABLE employee (
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(100),
birthday DATE
);

insert into employee (id, name, email, birthday) values (1, 'Gradey', 'gcrenshaw0@newyorker.com', '2005-10-03');
insert into employee (id, name, email, birthday) values (2, 'Malinde', null, '1932-03-05');
insert into employee (id, name, email, birthday) values (3, 'Melody', 'mkeyes2@homestead.com', '1985-01-09');
insert into employee (id, name, email, birthday) values (4, 'Berton', 'bcluff3@mail.ru', '1938-05-26');
insert into employee (id, name, email, birthday) values (5, 'Maureene', 'msongust4@illinois.edu', null);
insert into employee (id, name, email, birthday) values (6, 'Marcos', 'mschreiner5@quantcast.com', '1957-05-06');
insert into employee (id, name, email, birthday) values (7, 'Ola', 'ospracklin6@cocolog-nifty.com', '2005-08-22');
insert into employee (id, name, email, birthday) values (8, 'Rhianon', 'rfairpo7@xinhuanet.com', '1989-03-03');
insert into employee (id, name, email, birthday) values (9, 'Karylin', 'khrus8@weebly.com', '1902-11-20');
insert into employee (id, name, email, birthday) values (10, 'Farly', 'froskams9@devhub.com', '1913-10-05');
insert into employee (id, name, email, birthday) values (11, 'Janie', 'jmardea@diigo.com', '1963-05-12');
insert into employee (id, name, email, birthday) values (12, 'Frasier', 'fbingb@google.com.au', '2001-07-24');
insert into employee (id, name, email, birthday) values (13, 'Ira', 'irandlesomec@gmpg.org', '1924-09-13');
insert into employee (id, name, email, birthday) values (14, 'Britta', 'blevenskyd@hud.gov', '2003-04-20');
insert into employee (id, name, email, birthday) values (15, 'Marsiella', 'molonee@amazon.co.uk', '2008-03-14');
insert into employee (id, name, email, birthday) values (16, 'Jordana', 'jsherlockf@creativecommons.org', '1968-02-10');
insert into employee (id, name, email, birthday) values (17, 'Bo', 'bsicklingg@vimeo.com', '1968-05-29');
insert into employee (id, name, email, birthday) values (18, 'Patrizio', 'ponslowh@spotify.com', '1931-05-24');
insert into employee (id, name, email, birthday) values (19, 'Fulton', 'feveristi@homestead.com', '1957-09-15');
insert into employee (id, name, email, birthday) values (20, 'Kirstin', 'kguyonneauj@wikimedia.org', '1905-04-09');
insert into employee (id, name, email, birthday) values (21, 'Daron', 'dchretienk@google.fr', '1941-06-18');
insert into employee (id, name, email, birthday) values (22, 'Binni', 'biiannonel@newsvine.com', '1991-01-23');
insert into employee (id, name, email, birthday) values (23, 'Alistair', 'aloudonm@bigcartel.com', '1971-10-31');
insert into employee (id, name, email, birthday) values (24, 'Karin', 'kcharopenn@engadget.com', '1939-11-23');
insert into employee (id, name, email, birthday) values (25, 'Lorin', null, '1953-08-21');
insert into employee (id, name, email, birthday) values (26, 'Georgine', 'ggynnep@smh.com.au', '1917-09-28');
insert into employee (id, name, email, birthday) values (27, 'Estel', 'ekohtlerq@nba.com', '2016-01-13');
insert into employee (id, name, email, birthday) values (28, 'Clayton', 'cmoffattr@amazon.com', '1968-09-22');
insert into employee (id, name, email, birthday) values (29, 'Averil', 'aheughs@live.com', '1990-12-25');
insert into employee (id, name, email, birthday) values (30, 'Ardisj', 'acockittt@squarespace.com', '1965-09-16');
insert into employee (id, name, email, birthday) values (31, 'Adara', 'awoodleyu@ihg.com', '1959-05-14');
insert into employee (id, name, email, birthday) values (32, 'Alessandra', 'apretov@reference.com', '1989-11-13');
insert into employee (id, name, email, birthday) values (33, 'Rowney', null, '1981-09-18');
insert into employee (id, name, email, birthday) values (34, 'Reiko', null, '1930-02-02');
insert into employee (id, name, email, birthday) values (35, 'Ken', null, '1966-06-21');
insert into employee (id, name, email, birthday) values (36, 'Gerrard', 'grickwordz@imgur.com', '1996-12-21');
insert into employee (id, name, email, birthday) values (37, 'Ellswerth', null, '1969-11-04');
insert into employee (id, name, email, birthday) values (38, 'Gordy', null, '1988-04-02');
insert into employee (id, name, email, birthday) values (39, 'Minnnie', 'mrobion12@cyberchimps.com', null);
insert into employee (id, name, email, birthday) values (40, 'Bradan', 'bchaulk13@artisteer.com', '1965-10-23');
insert into employee (id, name, email, birthday) values (41, 'Vince', 'vmanners14@chron.com', '1926-03-09');
insert into employee (id, name, email, birthday) values (42, 'Gladi', 'gpirri15@barnesandnoble.com', '2009-11-08');
insert into employee (id, name, email, birthday) values (43, 'Melisande', 'msharville16@nps.gov', null);
insert into employee (id, name, email, birthday) values (44, 'Winonah', 'wguess17@answers.com', '1932-04-25');
insert into employee (id, name, email, birthday) values (45, 'Eloisa', 'ehardern18@harvard.edu', '1960-08-21');
insert into employee (id, name, email, birthday) values (46, 'Kirsteni', 'klowndsbrough19@fastcompany.com', '1959-10-04');
insert into employee (id, name, email, birthday) values (47, 'Stephen', 'squilty1a@seattletimes.com', '1970-11-29');
insert into employee (id, name, email, birthday) values (48, 'Burke', 'bstroobant1b@ebay.co.uk', '1955-01-15');
insert into employee (id, name, email, birthday) values (49, 'Osborn', 'obrimmicombe1c@bigcartel.com', '1906-09-11');
insert into employee (id, name, email, birthday) values (50, 'Norina', 'npickaver1d@youtu.be', '1987-08-18');

SELECT * FROM employee


UPDATE employee SET name = 'Faruk' WHERE id = 10;
UPDATE employee SET email = 'melody.new@email.com' WHERE name = 'Melody';
UPDATE employee SET email = 'lorin@mail.com' WHERE name = 'Lorin' AND email IS NULL;
UPDATE employee SET birthday = '2000-01-01' WHERE birthday = '2008-03-14';
UPDATE employee SET name = 'Ada' WHERE email = 'awoodleyu@ihg.com';
DELETE FROM employee WHERE id = 2;
DELETE FROM employee WHERE name = 'Bo';
DELETE FROM employee WHERE email = 'khrus8@weebly.com';
DELETE FROM employee WHERE birthday = '1905-04-09';
DELETE FROM employee WHERE email IS NULL AND name = 'Ken';