USE pierwsza_tabela;

SELECT name FROM users WHERE name RegExp '^Da';

SELECT name FROM users WHERE name RegExp 'ta$';

/*
ściąga

* - zero lub więcej wystąpień
[.] - dowolna litera
+ - Jedno lub więcej wystąpień
? - zero lub jedno wystąpienie
{n,m} - Co najmniej n i maksymalnie m wystąpień
{n,} - co najmniej n wystąpieńalte
{,m} - maksymalnie m wystąpień
[abcde] - Jedna z liter a, b, c, d, lub e
[a-zA-Z] - Jedna z liter do a do Z mała lub duża
[a-k3-6] - Litera od a do k lub cyfra 3 do 6
*/

SELECT name FROM users WHERE name RegExp '[nl]';

CREATE TABLE numer(
ID INT AUTO_INCREMENT PRIMARY KEY,
NUMER VARCHAR(200)
);

INSERT INTO numer (NUMER) VALUES (1);
INSERT INTO numer (NUMER) VALUES ('WDR-654321');
INSERT INTO numer (NUMER) VALUES ('CDR-123456');
INSERT INTO numer (NUMER) VALUES (80010188345);
INSERT INTO numer (NUMER) VALUES (426783456);
INSERT INTO numer (NUMER) VALUES ('siala baba mak');

SELECT * FROM numer;

SELECT * FROM numer WHERE numer RegExp'[0-9]{11}$';

SELECT * FROM numer WHERE numer RegExp '[A-Z]{3}\\-[0-9]{6}$';
SELECT * FROM numer WHERE numer RegExp '^[0-9]{9}$';


