/* ------- Structuren UNIQUE ----------- */

/*  Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/


DROP DATABASE IF EXISTS boo;

CREATE DATABASE IF NOT EXISTS boo;

CREATE TABLE IF NOT EXISTS boo.test
(
    name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",
    age INT(3) NOT NULL DEFAULT 0
);


/* Alle Tabellen in der DB anzeigen */
# SHOW TABLES; - with USE boo

DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES ();

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;


-- Doppelte Datensätze werden zugelassen!
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

SELECT * FROM boo.test;