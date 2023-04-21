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

-----------------------------------------------------------------------------
query3.sql

Wstawienie rekordu z wartością 'Brak' w kolumnie name
Dodanie kolumny kolumna_po_id po kolumnie id

/*
Inserting a record with the value 'Brak' in the name column.
Adding a column named column_po_id after the id column.
*/

-----------------------------------------------------------------------------
query4.sql

Użycie operatorów > < = != do wyświetlania rekordów wg wartości.

/*
Using the operators > < = != to display records based on their values.
*/

-----------------------------------------------------------------------------
query5.sql

Zastosowanie BETWEEN AND. 
oraz WHERE IN ()
Zaczyna się na '%Kow%' oraz kończy na '_anu%'

/*
Using BETWEEN AND.
and WHERE IN ()
Starting with '%Kow%' and ending with '_anu%'.
*/

-----------------------------------------------------------------------------
query6.sql

Operatory and oraz not in

-----------------------------------------------------------------------------
query7.sql

Sorting DESC and ASC

-----------------------------------------------------------------------------
query8.sql

Tworzymy nową tabelę pracownik. 
Dodajemy rekordy.
Dodanie kolumny.
Aktualizacja pól wiek po id.

/*
We are creating a new table called "pracownik".
We are adding records.
Adding a column.
Updating age fields by id.
*/

-----------------------------------------------------------------------------
query9.sql

Cheat sheet for functions.

-----------------------------------------------------------------------------
query10.sql

Sprawdzanie długości znaków w wartościach wierszy tabeli users;

/*
Checking the length of characters in the values of rows in the users table.
*/

-----------------------------------------------------------------------------
query11.sql

Podzapytania, tworzenie widoków.

/*
Subqueries, creating views.
*/

-----------------------------------------------------------------------------
query12.sql

Wyrażenie regularne.

/*
Regular expression.
*/

-----------------------------------------------------------------------------
query13.sql

LEFT JOIN, RIGHT JOIN, INNER JOIN

-----------------------------------------------------------------------------
query14.sql

Łączenie trzech tabel - JOIN

/*
Joining three tables - JOIN.
*/

-----------------------------------------------------------------------------
query15.sql

CREATE TRIGGER

-----------------------------------------------------------------------------
query16.sql

CREATE PROCEDURE

-----------------------------------------------------------------------------
query17.sql

Task. Stwórz nową bazę. Tabele : cena, users, sprzedaż. 
Wyświetlić : imię i nazwisko z ceną i nazwą produktu. Wykorzystując relacje po id z tabeli sprzedaż.

/*
Task: Create a new database. Tables: price, users, sales.
Display: 'imie' and 'nazwisko' with 'cena' and 'nazwa', using relationships by ID from the 'sprzedaz' table.
*/

-----------------------------------------------------------------------------
query18.sql

Zadanie składa się z kilku podzadań:

1) Dodaj tabele

sale z kolumnami
id,
id_product,
id_client,
price.
product z kolumnami
id,
name
client z kolumnami
id,
name,
country
info z kolumnami
id,
dzisiejsza data,
id_sale

2) Następnie stwórz 3 procedury, które będą dodawały:

klientów na podstawie dwóch parametrów: name oraz country
produkty na podstawie parametru: name
sprzedaż na podstawie parametrów: id_product, id_client, price :

3) Dodaj za pomocą procedury klientów, produkty oraz sprzedaże

4) Wyświetl dane łącząc tabele produkt i klient z tabelą sprzedaż

5) Stwórz triggera, który doda wpis do tabeli info, że zanotowano nową sprzedaż.

6) Napisz zapytanie, które wyświetli informację o sprzedaży wraz z wszystkimi danymi z tabeli sprzedaż, produkt i klient

7) Następnie Stwórz procedurę, która będzie usuwała klientów na podstawie podanego ID

8) Usuń z każdej tabeli rekord o id = 1

/*
The task consists of several subtasks:

Add tables
sales table with columns:
id,
id_product,
id_client,
price.
product table with columns:
id,
name.
client table with columns:
id,
name,
country.
info table with columns:
id,
today's date,
id_sale.

Next, create 3 procedures that will add:
clients based on two parameters: name and country.
products based on the parameter: name.
sales based on parameters: id_product, id_client, price.

Add clients, products, and sales using the procedures.

Display data by joining the product and client tables with the sales table.

Create a trigger that adds an entry to the info table that a new sale has been recorded.

Write a query that displays sales information along with all data from the sales, product, and client tables.

Then create a procedure that will delete clients based on the given ID.

Delete a record with id = 1 from each table.
*/