DROP DATABASE IF EXISTS POKEDEX;
CREATE DATABASE POKEDEX;
USE POKEDEX;

CREATE TABLE ABILITY(
	ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    NAME_ABILITY VARCHAR(100),
    DAMAGE DOUBLE NOT NULL,
    ABILITY_TYPE VARCHAR(50) NOT NULL
);

CREATE TABLE POKEMON(
	ID BIGINT AUTO_INCREMENT,
    NAME_POKEMON VARCHAR(100),
    HEALTH DOUBLE,
    POWER DOUBLE,
    WEIGHT DOUBLE,
    HEIGHT DOUBLE,
    POKEMON_TYPE VARCHAR(50),
    CONSTRAINT PRIMARY_KEY PRIMARY KEY (ID)
);

DROP TABLE POKEMON;
DROP TABLE POKEMON_ABILITIES;
DROP TABLE ABILITY;

CREATE TABLE POKEMON_ABILITIES(
	ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    ABILITY_ID BIGINT,
    POKEMON_ID BIGINT,
    CONSTRAINT FK_ABILITIES_POKEMON FOREIGN KEY (ABILITY_ID) REFERENCES ABILITY (ID),
    CONSTRAINT FK_POKEMON_ABILITIES FOREIGN KEY (POKEMON_ID) REFERENCES POKEMON (ID)
);

INSERT INTO POKEMON (NAME_POKEMON, HEALTH, POWER, WEIGHT, HEIGHT, POKEMON_TYPE) VALUES
	('PIKACHU', 100, 900, 23.5, 50, 'ELECTRICO'),
    ('CHARMANDER', 100, 450, 25, 80, 'FUEGO');
INSERT INTO POKEMON (NAME_POKEMON, HEALTH, POWER, WEIGHT, HEIGHT, POKEMON_TYPE) VALUES
	('RAICHU', 100, 400, 20, 30, 'ELECTRICO'),
    ('SNORLAX', 500, 600, 500, 200, 'NORMAL');

INSERT INTO POKEMON (NAME_POKEMON, HEALTH, POWER, WEIGHT, HEIGHT, POKEMON_TYPE) VALUES
	('CHIKORITA', 127, 100, 15, 25, 'PLANTA');
    
SELECT * FROM POKEMON;