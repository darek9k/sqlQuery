CREATE TABLE produkty(
ID INT AUTO_INCREMENT PRIMARY KEY,
cena INT,
nazwa VARCHAR(200),
ile_sprzedano INT DEFAULT 0
);

INSERT INTO produkty (cena, nazwa) VALUES (100,'Komputer');
INSERT INTO produkty (cena, nazwa) VALUES (5000,'Samochdd');
INSERT INTO produkty (cena, nazwa) VALUES (100000,'Jacht');
INSERT INTO produkty (cena, nazwa) VALUES (1000000,'Pociag');

SELECT * FROM produkty;

CREATE TABLE sprzedaz_produktow(
ID INT AUTO_INCREMENT PRIMARY KEY,
kiedy TIMESTAMP,
id_produktu INT
);

INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);

CREATE TRIGGER licznik AFTER INSERT ON sprzedaz_produktow
FOR EACH ROW
UPDATE produkty SET ile_sprzedano = ile_sprzedano + 1 WHERE ID = NEW.id_produktu;

DROP TRIGGER licznik;


INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 2);
INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 3);
INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);

SELECT * FROM sprzedaz_produktow;

SELECT * FROM produkty;


DROP TABLE produkty;
DROP TABLE sprzedaz_produktow;
DROP TABLE info;

CREATE TABLE info(
ID INT AUTO_INCREMENT PRIMARY KEY,
komunikat VARCHAR(200)
);

CREATE TRIGGER info BEFORE INSERT ON sprzedaz_produktow
FOR EACH ROW
INSERT INTO info (komunikat) VALUES ('Jestem przed dodawaniem do tabeli');

SELECT * FROM info;




