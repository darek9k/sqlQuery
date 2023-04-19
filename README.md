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

