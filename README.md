# SQL Queries Project

## Query Descriptions

**query1.sql**: Creates a database named "first_database" and two tables named "users" and "profession". The tables have appropriate columns.

**query2.sql**: Inserts data into the "users" table. Updates data in the "users" table. Deletes a record from the "users" table.

**query3.sql**: Updates the "profession" table. Drops the column "new_column". Adds a column "new_column" and changes its type. Drops the "profession" table.

**query4.sql**: Displays the contents of the "users" table. Displays data in the "users" table that satisfies the condition "age >= 41". Updates data in the "users" table. Displays data in the "users" table that satisfies the condition "age != 42".

**query5.sql**: Displays data in the "users" table that satisfies the condition "age BETWEEN 30 AND 50". Displays data in the "users" table that satisfies the condition "name IN ('Krzysztof', 'Danuta')". Displays data in the "users" table that satisfies the condition "surname like '%Kow%'". Displays data in the "users" table that satisfies the condition "name like '_anu%'". Displays data in the "users" table that satisfies the condition "age is null". Displays data in the "users" table that satisfies the condition "age is not null".

**query6.sql**: Displays the contents of the "users" table. Displays data in the "users" table that satisfies the condition "name = 'Jan' and surname ='Kowalski'". Displays data in the "users" table that satisfies the condition "name not in ('Jan','Ewa')".

**query7.sql**: Displays the contents of the "users" table sorted in descending order by the "id" column. Displays the contents of the "users" table sorted in ascending order by the "id" column. Displays data in the "users" table that satisfies the condition "name like '%ks%'" sorted in ascending order by the "age" column.

**query8.sql**: Creates a table named "employee" and inserts data into it. Updates data in the table. Displays the contents of the "employee" table that satisfies the condition "age > 40". Displays the contents of the "employee" table that satisfies the condition "name like ('Jan')". Displays data in the "employee" table that satisfies the condition "name like ('Jan') and surname like ('Kowalski')". Displays data in the "employee" table that satisfies the condition "position IN ('Specialist', 'Cook')".

**query9.sql**: Executes grouping functions and displays the results. Executes the `DISTINCT` function and displays the results.

**query10.sql**: Displays the results of text and mathematical functions and displays the data from the "users" table.

**query11.sql**: Executes subqueries and creates views. Displays data from the view.

**query12.sql**: Uses regular expressions to search for data in the "users" table.


# Projekt Zapytania SQL

## Opisy zapytań

**query1.sql**: Tworzy bazę danych `"pierwsza_baza"` oraz dwie tabele `"users"` i `"profession"`. Tabele mają odpowiednie kolumny.

**query2.sql**: Wstawia dane do tabeli `"users"`. Aktualizuje dane w tabeli `"users"`. Usuwa rekord z tabeli `"users"`.

**query3.sql**: Aktualizuje tabelę `"profession"`. Usuwa kolumnę `"nowa_kolumna"`. Dodaje kolumnę `"nowa_kolumna"` i zmienia jej typ. Usuwa tabelę `"profession"`.

**query4.sql**: Wyświetla zawartość tabeli `"users"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"age >= 41"`. Aktualizuje dane w tabeli `"users"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"age != 42"`.

**query5.sql**: Wyświetla dane w tabeli `"users"` spełniające warunek `"age BETWEEN 30 AND 50"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"name IN ('Krzysztof', 'Danuta')"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"surname like '%Kow%'"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"name like '_anu%'"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"age is null"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"age is not null"`.

**query6.sql**: Wyświetla zawartość tabeli `"users"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"name = 'Jan' and surname ='Kowalski'"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"name not in ('Jan','Ewa')"`.

**query7.sql**: Wyświetla zawartość tabeli `"users"` posortowaną malejąco względem kolumny `"id"`. Wyświetla zawartość tabeli `"users"` posortowaną rosnąco względem kolumny `"id"`. Wyświetla dane w tabeli `"users"` spełniające warunek `"name like '%ks%'"` posortowane rosnąco względem kolumny `"age"`.

**query8.sql**: Tworzy tabelę `"pracownik"` i wstawia dane do tabeli. Aktualizuje dane w tabeli. Wyświetla zawartość tabeli `"pracownik"` spełniającą warunek `"wiek > 40"`. Wyświetla zawartość tabeli `"pracownik"` spełniającą warunek `"imie like ('Jan')"`. Wyświetla dane w tabeli `"pracownik"` spełniające warunek `"imie like ('Jan') and nazwisko like ('Kowalski')"`. Wyświetla dane w tabeli `"pracownik"` spełniające warunek `"stanowisko IN ('Specjalista', 'Kucharz')"`.

**query9.sql**: Wykonuje funkcje grupujące i wyświetla wyniki. Wykonuje funkcje `DISTINCT` i wyświetla wyniki.

**query10.sql**: Wyświetla wyniki z funkcji tekstowych, matematycznych i wyświetla dane z tabeli `"users"`.

**query11.sql**: Wykonuje podzapytania i tworzy widoki. Wyświetla dane z widoku.

**query12.sql**: Wykorzystuje wyrażenia regularne do wyszukiwania danych w tabeli `"users"`.

///OLD FILE BELOW
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

Zadanie składa się z kilku podzadań

Stwórz bazę danych o nazwie task
Dodaj tabele z produktami gdzie jest id, nazwa oraz cena
Dodaj kilka różnych produktów
Policz średnią cenę z tabeli produkt
Policz minimalną cenę z tabeli produkt
Policz maksymalną cenę z tabeli produkt
Posortuj malejąco po cenie
Policz sumę w tabeli produkt
Wyszukaj wszystkie produkty o nazwie X
Wyszukaj wszystkie produkty gdzie cena jest większa od 1000
Dodaj tabele z użytkownikami gdzie będzie id, imię i nazwisko
Dodaj użytkowników
Dodaj tabele ze sprzedaż
Dodaj sprzedaż gdzie będzie data, id produktu i id użytkownika
Dodaj rekordy do tabeli sprzedaż
Wyświetl wszystkie sprzedaże tak by były w niej widoczne dane użytkowników i produktów
Usuń produkt o id = 1
Zaktualizuj imię użytkownika o id = 1

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
