USE pierwsza_baza;

INSERT INTO profession (name) VALUES ('Brak');

SELECT * FROM profession;

ALTER TABLE profession ADD COLUMN nowa_kolumna VARCHAR(20);

UPDATE profession SET nowa_kolumna = 'tresc' WHERE id =1;

ALTER TABLE profession DROP COLUMN nowa_kolumna;

ALTER TABLE profession ADD COLUMN nowa_kolumna VARCHAR(20) AFTER id;

ALTER TABLE profession CHANGE nowa_kolumna kolumna_po_id INT;

DELETE TABLE profession;
