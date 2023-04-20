CREATE TABLE uzytkownik(
id INT AUTO_INCREMENT PRIMARY KEY,
Imie VARCHAR(200),
Nazwisko VARCHAR(200)
);

INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Jan', 'Kowalski');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Tomek', 'Kowalski');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Ignacy', 'Kowalski');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Rafał', 'Kowalski');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Zbyszek', 'Kowalski');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Ewa', 'Kowalska');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Anna', 'Kowalska');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Danuta', 'Kowalska');

SELECT * FROM uzytkownik;

CREATE TABLE zawod(
id INT AUTO_INCREMENT PRIMARY KEY,
Nazwa VARCHAR(200)
);

INSERT INTO zawod (Nazwa) VALUES ('Informatyk');
INSERT INTO zawod (Nazwa) VALUES ('Programista');
INSERT INTO zawod (Nazwa) VALUES ('QA Engineer');
INSERT INTO zawod (Nazwa) VALUES ('Engineer');
INSERT INTO zawod (Nazwa) VALUES ('Scrum Master');
INSERT INTO zawod (Nazwa) VALUES ('DevOps');

SELECT * FROM zawod;

CREATE TABLE pracownicy(
id int auto_increment primary key,
id_zawod int,
id_uzytkownik int,
FOREIGN KEY (id_zawod) references zawod(id) ON DELETE CASCADE,
FOREIGN KEY (id_uzytkownik) references uzytkownik(id) ON DELETE CASCADE
);

SELECT * FROM pracownicy;

INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (3,4);
INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (1,1);
INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (3,5);

SELECT a.id, b.imie, b.nazwisko, c.nazwa FROM pracownicy a
LEFT JOIN uzytkownik b ON a.id_uzytkownik = b.id
LEFT JOIN zawod c ON a.id_zawod = c.id;

