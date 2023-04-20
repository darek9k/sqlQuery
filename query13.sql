USE pierwsza_baza;

CREATE TABLE klient(
id INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(200),
nazwisko VARCHAR(200)
);

INSERT INTO klient (imie, nazwisko) VALUES ('Dariusz', 'Kowalski');
INSERT INTO klient (imie, nazwisko) VALUES ('Juliusz', 'Kowalski');
INSERT INTO klient (imie, nazwisko) VALUES ('Ignacy', 'Kowalski');
INSERT INTO klient (imie, nazwisko) VALUES ('Rafał', 'Kowalski');
INSERT INTO klient (imie, nazwisko) VALUES ('Krzysztof', 'Kowalski');
INSERT INTO klient (imie, nazwisko) VALUES ('Aleskandra', 'Kowalska');
INSERT INTO klient (imie, nazwisko) VALUES ('Anna', 'Kowalska');
INSERT INTO klient (imie, nazwisko) VALUES ('Danuta', 'Kowalska');

SELECT * FROM klient;

CREATE TABLE sprzedaz(
id INT AUTO_INCREMENT PRIMARY KEY,
id_klient INT,
produkt VARCHAR(200)
);

INSERT INTO sprzedaz (id_klient, produkt) VALUES (1, 'Klawiatura');
INSERT INTO sprzedaz (id_klient, produkt) VALUES (2, 'Myszka');
INSERT INTO sprzedaz (id_klient, produkt) VALUES (1, 'Monitor');
INSERT INTO sprzedaz (id_klient, produkt) VALUES (1, 'Pad');
INSERT INTO sprzedaz (id_klient, produkt) VALUES (3, 'Sluchawki');
INSERT INTO sprzedaz (id_klient, produkt) VALUES (5, 'Glosniki');

SELECT * FROM sprzedaz;

SELECT a.id_klient, b.imie, b.nazwisko, a.produkt FROM sprzedaz a LEFT JOIN klient b ON a.id_klient = b.id;

SELECT a.id_klient, b.imie, b.nazwisko, a.produkt FROM sprzedaz a RIGHT JOIN klient b ON a.id_klient = b.id;

SELECT a.id_klient, b.imie, b.nazwisko, a.produkt FROM sprzedaz a INNER JOIN klient b ON a.id_klient = b.id;

DROP TABLE sprzedaz;

CREATE TABLE sprzedaz(
id INT AUTO_INCREMENT PRIMARY KEY,
id_klienta INT,
id_produktu VARCHAR(200)
);

CREATE TABLE produkt(
id INT AUTO_INCREMENT PRIMARY KEY,
nazwa VARCHAR(200)
);

INSERT INTO produkt (nazwa) VALUES ('Klawiatura');
INSERT INTO produkt (nazwa) VALUES ('Myszka');
INSERT INTO produkt (nazwa) VALUES ('Monitor');
INSERT INTO produkt (nazwa) VALUES ('Pad');
INSERT INTO produkt (nazwa) VALUES ('Sluchawki');
INSERT INTO produkt (nazwa) VALUES ('Glosniki');

INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (1,1);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (2,4);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (4,3);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (2,2);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (3,2);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (1,2);

SELECT * FROM sprzedaz;
SELECT * FROM produkt;

SELECT b.imie, b.nazwisko, c.nazwa FROM sprzedaz a LEFT JOIN klient b ON a.id_klienta = b.id
LEFT JOIN produkt c ON a.id_produktu = c.id;












