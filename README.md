# sqlQuery - przykłady zapytań SQL

query1.sql
Utworzenie bazy danych
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
query1.sql

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

-----------------------------------------------------------------------------
query2.sql
Dodanie rekordów do tabeli users.
Wyświetlenie wszystkich rekordów z tabeli users.
Zmiana pola age w tabeli users gdzie id wynosi 1.
Zmiana pola wiek w tabeli users gdzie id wynosi 3.
Usunięcie rekordu z tabeli users gdzie id wynosi 1.
/*
Adding records to the users table.
Displaying all records from the users table.
Changing the age field in the users table where id is 1.
Changing the age field in the users table where id is 3.
Deleting a record from the users table where id is 1.
*/

