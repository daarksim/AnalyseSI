# script créé le : Thu Dec 23 15:26:48 CET 2010 ;

# use  VOTRE_BASE_DE_DONNEE ;

DROP TABLE IF EXISTS a ;

CREATE TABLE a (id_a int AUTO_INCREMENT NOT NULL,
id_c int NOT NULL,
PRIMARY KEY (id_a) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS b ;

CREATE TABLE b (id_b int AUTO_INCREMENT NOT NULL,
id_a int NOT NULL,
PRIMARY KEY (id_b) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS c ;

CREATE TABLE c (id_c int AUTO_INCREMENT NOT NULL,
PRIMARY KEY (id_c) ) ENGINE=InnoDB;

ALTER TABLE a ADD CONSTRAINT FK_a_id_c FOREIGN KEY (id_c) REFERENCES c (id_c);

ALTER TABLE b ADD CONSTRAINT FK_b_id_a FOREIGN KEY (id_a) REFERENCES a (id_a);

