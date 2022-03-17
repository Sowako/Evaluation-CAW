--
-- Fichier généré par SQLiteStudio v3.3.3 sur jeu. mars 17 11:58:25 2022
--
-- Encodage texte utilisé : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table : ADMINISTRATEUR
CREATE TABLE ADMINISTRATEUR(
nom VARCHAR
prenom VARCHAR,
email VARCHAR,
motdepasse VARCHAR
création DATE
);

-- Table : AGENT
CREATE TABLE AGENT(
id Primary KEY,
nom VARCHAR,
prenom VARCHAR,
naissance DATE,
nationalité VARCHAR,
spécialité VARCHAR
);
INSERT INTO AGENT (id, nom, prenom, naissance, nationalité, spécialité) VALUES (1, 'DUPOND', 'JEAN', '1993-11-24', 'Francais', 'Surveillance');
INSERT INTO AGENT (id, nom, prenom, naissance, nationalité, spécialité) VALUES (2, 'PHOENIX', 'TOM', '1987-01-02', 'Amercicains', 'Surveillance');
INSERT INTO AGENT (id, nom, prenom, naissance, nationalité, spécialité) VALUES (3, 'BUCCIALITTI', 'GIORNO', '1995-07-07', 'Italien', 'Assassinat');
INSERT INTO AGENT (id, nom, prenom, naissance, nationalité, spécialité) VALUES (4, 'SMITH', 'OLIVIA', '1997-09-29', 'Britannique', 'Infiltration');

-- Table : CIBLE
CREATE TABLE CIBLE(
nom VARCHAR,
prenom VARCHAR,
naissance DATE,
nationalité VARCHAR,
code VARCHAR
);
INSERT INTO CIBLE (nom, prenom, naissance, nationalité, code) VALUES ('BAUMGAERTNER', 'KERSTIN', '1977-05-19', 'Allemande', 'QUIET EAGLE');
INSERT INTO CIBLE (nom, prenom, naissance, nationalité, code) VALUES ('TOMKOVA', 'Denisa', '1980-09-09', 'Tchèque', 'Loyal Lightfoot');
INSERT INTO CIBLE (nom, prenom, naissance, nationalité, code) VALUES ('WHITE', 'ADAM', '1986-03-20', 'Ecossais', 'Rough Swordsman');
INSERT INTO CIBLE (nom, prenom, naissance, nationalité, code) VALUES ('PETKOVIC', 'GABRIELA', '1966-05-30', 'Croate', 'Toxic Spectator');

-- Table : CONTACT
CREATE TABLE CONTACT(
nom VARCHAR,
prenom VARCHAR,
naissance DATE,
nationalité VARCHAR,
code VARCHAR
);
INSERT INTO CONTACT (nom, prenom, naissance, nationalité, code) VALUES ('FUHRMANN', 'MAXIMILIAN', '1971-05-11', 'Allemand', 'The Watcher');
INSERT INTO CONTACT (nom, prenom, naissance, nationalité, code) VALUES ('CAO', 'PETR', '1971-04-01', 'Tchèque', 'Tracker');
INSERT INTO CONTACT (nom, prenom, naissance, nationalité, code) VALUES ('HAY', 'ROBBIE', '1971-08-21', 'Ecossais', 'THE SMELLER');
INSERT INTO CONTACT (nom, prenom, naissance, nationalité, code) VALUES ('BABIC', 'MARICA', '1985-06-15', 'Croate', 'SHE KNOW');

-- Table : MISSIONS
CREATE TABLE MISSIONS(
titre VARCHAR,
description VARCHAR,
pays VARCHAR,
agent INT,
contact VARCHAR,
cible VARCHAR,
type VARCHAR,
statut VARCHAR,
planque INT,
spécialité VARCHAR,
debut DATE,
fin DATE,
code VARCHAR
);
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, spécialité, debut, fin, code) VALUES ('ALL SUrveillance', 'Missions en Allemagne pour surveillé un individu', 'ALLEMAGNE', 1, 'The Watcher', 'QUIET EAGLE', 'Surveillance', 'en cours', 1, 'Surveillance', ' 2002-11-10', '2002-12-05', 'FOLLOW');
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, spécialité, debut, fin, code) VALUES ('TCH SUrveillance', 'Missions en Tchèque pour surveillé un individu', 'Tchèque', 2, 'Tracker', 'Loyal Lightfoot', 'Surveillance', 'en préparation', 2, 'Surveillance', ' 2007-07-01', '2002-10-07', 'CHECK');
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, spécialité, debut, fin, code) VALUES ('EKILL', 'Missions en Ecosse pour éliminé un individu dangereux', 'Ecosse', 3, 'THE SMELLER', 'Rough Sword', 'Assassinat', 'terminé', 3, 'Assassinat', ' 2010-03-03', '2010-03-06', 'KECC');
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, spécialité, debut, fin, code) VALUES ('CROATIE INF', 'Missions en Croatie pour infiltré un individu ', 'Croatie', 4, 'SHE KNOW', 'Toxic Spectator', 'Infiltration', 'terminé', 4, 'Infiltration', ' 2015-10-03', '2016-02-01', 'INFCR');

-- Table : PLANQUE
CREATE TABLE PLANQUE(
adresse VARCHAR,
pays VARCHAR,
type VARCHAR,
code INT
);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('5 FAHRMMANN ', 'Allemagne', 'Maison', 1);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('252 Lisnice ', 'Tchéque', 'Appartement', 2);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('Bruar Water ', 'Ecosse', 'Appartement', 3);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('Modrus ', 'Croatie', 'Maison', 4);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
