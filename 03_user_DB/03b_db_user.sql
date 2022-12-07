/* User DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table Users*/
DROP TABLE IF EXISTS boo.users;
CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
-- Besser: PWDS verschlüsselt, zB. als SAH1-Hash
INSERT INTO
    boo.users(firstName,familyName,userName,userPwd)
VALUES 
    ("Max","Mütze","max",SHA1("1234")),
    ("Maxine","Mütze","maxine",SHA1("#7xD0")),
    ("Max","Mützerich","maxl",SHA1("user1234"))
;

/*Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;

/* Änderungen an besteheneder Tabelle / Struktur */
ALTER TABLE
    boo.users
ADD
    userPLZ INT(5) NOT NULL DEFAULT 0
;

/* Struktur & Inhalte */
DESCRIBE boo.users;
SELECT * FROM boo.users;

/* Update von Daten */
UPDATE boo.users SET userPLZ = 70367 WHERE firstName = "Max";
UPDATE boo.users SET userPLZ = 70362 WHERE id = 2;

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;
