CREATE TABLE pracownik(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(200),
nazwisko VARCHAR(200),
stanowisko VARCHAR(200)
);

INSERT INTO pracownik (imie, nazwisko, stanowisko) VALUES ('Rafał','Kowalski','Informatyk');
INSERT INTO pracownik (imie, nazwisko, stanowisko) VALUES ('Jan','Kowalski','Informatyk');
INSERT INTO pracownik (imie, nazwisko, stanowisko) VALUES ('Rafał','Kowalski','Specjalista');
INSERT INTO pracownik (imie, nazwisko, stanowisko) VALUES ('Marek','Zegarek','Kucharz');

SELECT * FROM pracownik;

ALTER TABLE pracownik ADD COLUMN wiek INT AFTER nazwisko;

UPDATE pracownik SET wiek = 40 WHERE id = 1;
UPDATE pracownik SET wiek = 39 WHERE id = 2;
UPDATE pracownik SET wiek = 41 WHERE id = 3;
UPDATE pracownik SET wiek = 42 WHERE id = 4;

SELECT * FROM pracownik WHERE wiek > 40;

SELECT * FROM pracownik WHERE imie like ('Jan');

SELECT * FROM pracownik WHERE imie like ('Jan') and nazwisko like ('Kowalski');

SELECT * FROM pracownik WHERE stanowisko IN ('Specjalista', 'Kucharz');