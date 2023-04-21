CREATE DATABASE task;

USE task;

CREATE TABLE produkty(
id INT AUTO_INCREMENT PRIMARY KEY,
nazwa VARCHAR(200),
cena INT
);

DROP TABLE produkty;

INSERT INTO produkty (nazwa, cena) VALUES ('Komputer', 1500);
INSERT INTO produkty (nazwa, cena) VALUES ('Monitor', 4500);
INSERT INTO produkty (nazwa, cena) VALUES ('Mysz', 350);
INSERT INTO produkty (nazwa, cena) VALUES ('Klawiatura', 500);
INSERT INTO produkty (nazwa, cena) VALUES ('Glosniki', 330);

SELECT avg(cena) FROM produkty;
SELECT min(cena) FROM produkty;
SELECT max(cena) FROM produkty;
SELECT * FROM produkty ORDER BY cena DESC;
SELECT sum(cena) FROM produkty;

SELECT * FROM produkty WHERE cena > 1000;

CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(200),
nazwisko VARCHAR(200)
);

INSERT INTO users (imie, nazwisko) VALUES ('Dariusz', 'Kowalski');
INSERT INTO users (imie, nazwisko) VALUES ('Ola', 'Kowalska');
INSERT INTO users (imie, nazwisko) VALUES ('Juliusz', 'Kowalski');

CREATE TABLE sprzedaz(
data timestamp default now(),
id_produktu INT,
id_users INT
);

INSERT INTO sprzedaz (id_produktu, id_users) VALUES (1,1);
INSERT INTO sprzedaz (id_produktu, id_users) VALUES (2,1);
INSERT INTO sprzedaz (id_produktu, id_users) VALUES (3,2);
INSERT INTO sprzedaz (id_produktu, id_users) VALUES (4,2);
INSERT INTO sprzedaz (id_produktu, id_users) VALUES (5,3);
INSERT INTO sprzedaz (id_produktu, id_users) VALUES (1,3);

SELECT * FROM sprzedaz;

SELECT b.imie, b.nazwisko, c.nazwa, c.cena FROM sprzedaz a
LEFT JOIN users b ON a.id_users = b.id
LEFT JOIN produkty c ON a.id_produktu = c.id;

DELETE FROM produkty WHERE id = 1;

SELECT * FROM produkty;

UPDATE users SET imie = 'Tomasz' WHERE id = 1;

SELECT * FROM users;
 
