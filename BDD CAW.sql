--
-- Fichier g�n�r� par SQLiteStudio v3.3.3 sur jeu. mars 17 11:58:25 2022
--
-- Encodage texte utilis� : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table : ADMINISTRATEUR
CREATE TABLE ADMINISTRATEUR(
nom VARCHAR
prenom VARCHAR,
email VARCHAR,
motdepasse VARCHAR
cr�ation DATE
);

-- Table : AGENT
CREATE TABLE AGENT(
id Primary KEY,
nom VARCHAR,
prenom VARCHAR,
naissance DATE,
nationalit� VARCHAR,
sp�cialit� VARCHAR
);
INSERT INTO AGENT (id, nom, prenom, naissance, nationalit�, sp�cialit�) VALUES (1, 'DUPOND', 'JEAN', '1993-11-24', 'Francais', 'Surveillance');
INSERT INTO AGENT (id, nom, prenom, naissance, nationalit�, sp�cialit�) VALUES (2, 'PHOENIX', 'TOM', '1987-01-02', 'Amercicains', 'Surveillance');
INSERT INTO AGENT (id, nom, prenom, naissance, nationalit�, sp�cialit�) VALUES (3, 'BUCCIALITTI', 'GIORNO', '1995-07-07', 'Italien', 'Assassinat');
INSERT INTO AGENT (id, nom, prenom, naissance, nationalit�, sp�cialit�) VALUES (4, 'SMITH', 'OLIVIA', '1997-09-29', 'Britannique', 'Infiltration');

-- Table : CIBLE
CREATE TABLE CIBLE(
nom VARCHAR,
prenom VARCHAR,
naissance DATE,
nationalit� VARCHAR,
code VARCHAR
);
INSERT INTO CIBLE (nom, prenom, naissance, nationalit�, code) VALUES ('BAUMGAERTNER', 'KERSTIN', '1977-05-19', 'Allemande', 'QUIET EAGLE');
INSERT INTO CIBLE (nom, prenom, naissance, nationalit�, code) VALUES ('TOMKOVA', 'Denisa', '1980-09-09', 'Tch�que', 'Loyal Lightfoot');
INSERT INTO CIBLE (nom, prenom, naissance, nationalit�, code) VALUES ('WHITE', 'ADAM', '1986-03-20', 'Ecossais', 'Rough Swordsman');
INSERT INTO CIBLE (nom, prenom, naissance, nationalit�, code) VALUES ('PETKOVIC', 'GABRIELA', '1966-05-30', 'Croate', 'Toxic Spectator');

-- Table : CONTACT
CREATE TABLE CONTACT(
nom VARCHAR,
prenom VARCHAR,
naissance DATE,
nationalit� VARCHAR,
code VARCHAR
);
INSERT INTO CONTACT (nom, prenom, naissance, nationalit�, code) VALUES ('FUHRMANN', 'MAXIMILIAN', '1971-05-11', 'Allemand', 'The Watcher');
INSERT INTO CONTACT (nom, prenom, naissance, nationalit�, code) VALUES ('CAO', 'PETR', '1971-04-01', 'Tch�que', 'Tracker');
INSERT INTO CONTACT (nom, prenom, naissance, nationalit�, code) VALUES ('HAY', 'ROBBIE', '1971-08-21', 'Ecossais', 'THE SMELLER');
INSERT INTO CONTACT (nom, prenom, naissance, nationalit�, code) VALUES ('BABIC', 'MARICA', '1985-06-15', 'Croate', 'SHE KNOW');

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
sp�cialit� VARCHAR,
debut DATE,
fin DATE,
code VARCHAR
);
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, sp�cialit�, debut, fin, code) VALUES ('ALL SUrveillance', 'Missions en Allemagne pour surveill� un individu', 'ALLEMAGNE', 1, 'The Watcher', 'QUIET EAGLE', 'Surveillance', 'en cours', 1, 'Surveillance', ' 2002-11-10', '2002-12-05', 'FOLLOW');
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, sp�cialit�, debut, fin, code) VALUES ('TCH SUrveillance', 'Missions en Tch�que pour surveill� un individu', 'Tch�que', 2, 'Tracker', 'Loyal Lightfoot', 'Surveillance', 'en pr�paration', 2, 'Surveillance', ' 2007-07-01', '2002-10-07', 'CHECK');
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, sp�cialit�, debut, fin, code) VALUES ('EKILL', 'Missions en Ecosse pour �limin� un individu dangereux', 'Ecosse', 3, 'THE SMELLER', 'Rough Sword', 'Assassinat', 'termin�', 3, 'Assassinat', ' 2010-03-03', '2010-03-06', 'KECC');
INSERT INTO MISSIONS (titre, description, pays, agent, contact, cible, type, statut, planque, sp�cialit�, debut, fin, code) VALUES ('CROATIE INF', 'Missions en Croatie pour infiltr� un individu ', 'Croatie', 4, 'SHE KNOW', 'Toxic Spectator', 'Infiltration', 'termin�', 4, 'Infiltration', ' 2015-10-03', '2016-02-01', 'INFCR');

-- Table : PLANQUE
CREATE TABLE PLANQUE(
adresse VARCHAR,
pays VARCHAR,
type VARCHAR,
code INT
);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('5 FAHRMMANN ', 'Allemagne', 'Maison', 1);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('252 Lisnice ', 'Tch�que', 'Appartement', 2);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('Bruar Water ', 'Ecosse', 'Appartement', 3);
INSERT INTO PLANQUE (adresse, pays, type, code) VALUES ('Modrus ', 'Croatie', 'Maison', 4);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
