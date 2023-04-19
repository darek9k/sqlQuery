# sqlQuery - utworzenie bazy danych
Stworzenie tabeli users oraz profession
Tabela users pola id,name,surname,age,city,profession
Tabela profession pola id, name

Pole age typu INT;
id - INT NOT NULL AUTO_INCREMENT PRIMARY KEY // klucz główny, auto numeracja
na końcu usunięcię / zrzucenie bazy danych
/*
Creating tables users and profession:
Table users fields: id, name, surname, age, city, profession
Table profession fields: id, name

Field age is of type INT;
id - INT NOT NULL AUTO_INCREMENT PRIMARY KEY // primary key with auto numbering
At the end, remove/drop the database.
*/
#sqlQuery

CREATE DATABASE pierwsza_baza;
USE pierwsza_baza;

CREATE TABLE users (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200),
surname VARCHAR(200),
age INT,
city VARCHAR(200),
profession VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

CREATE TABLE profession (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

DROP DATABASE pierwsza_baza;
