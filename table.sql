DROP TABLE IF EXISTS TouristicSite;
DROP TABLE IF EXISTS Hotel;
DROP TABLE IF EXISTS Distance;
DROP TABLE IF EXISTS Textuel;

CREATE TABLE TouristicSite
(
    S_ID     INTEGER NOT NULL,
    S_NAME   VARCHAR(40) NOT NULL,
    TYPE     ENUM('historic', 'activity'),
    ADRESS   VARCHAR(40),
    PRICE_SITE FLOAT,
    X INTEGER NOT NULL,
    Y INTEGER NOT NULL,
    PRIMARY KEY(S_ID,S_NAME)
  );

CREATE TABLE Hotel
  (
    H_ID  INTEGER NOT NULL,
    H_NAME  VARCHAR(50) NOT NULL,
    PRICE_H  FLOAT,
    RANGE_H INTEGER,
    BEACH_NAME VARCHAR(40) NOT NULL,
    DUREE_sejour INTEGER,
    X INTEGER NOT NULL,
    Y INTEGER NOT NULL,
    PRIMARY KEY(H_ID,H_NAME)
  );

CREATE TABLE Textuel
  (
   T_ID INTEGER REFERENCES TouristicSite(S_ID) ON DELETE CASCADE,
   T_NOM VARCHAR(50) NOT NULL,
   PRIMARY KEY(T_ID)
  );


