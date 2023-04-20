-- podzapytania

USE pierwsza_baza;

SELECT * FROM users;

SELECT * FROM profession;

UPDATE profession SET name = 'Dziadek' WHERE id = 1;

SELECT * FROM users WHERE profession in (SELECT name FROM profession);

SELECT * FROM users WHERE age > (SELECT avg(age) FROM users);

-- WIDOKI

CREATE VIEW klienci AS SELECT name, surname, profession, age FROM users;
SELECT * FROM klienci;
SELECT * FROM klienci WHERE age > 40;

CREATE VIEW spis_pracownikow AS SELECT * FROM users WHERE profession in (SELECT name FROM profession);
SELECT * FROM spis_pracownikow;
DROP VIEW spis_pracownikow;

-- ZADANIE DOMOWE
 CREATE VIEW ageandprof AS SELECT age, profession FROM users;
 DROP VIEW ageandprof;
 
 SELECT * FROM ageandprof;
 CREATE VIEW ageandprof AS SELECT age, upper(profession) FROM users WHERE profession in (SELECT name FROM profession) and age > 40;
 SELECT * FROM ageandprof ORDER BY age ASC;
