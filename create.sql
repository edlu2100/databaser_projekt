
CREATE DATABASE Sport_Competition IF NOT EXISTS;

DROP TABLE IF EXISTS Startlist;
DROP TABLE IF EXISTS Competition;
DROP TABLE IF EXISTS Athlete;
DROP TABLE IF EXISTS Club;
DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Disciplin;
DROP TABLE IF EXISTS GeographicLevel;
DROP TABLE IF EXISTS TechnicalData;
DROP TABLE IF EXISTS Jury;


CREATE TABLE Club  (
    ClubId                  INT             NOT NUll            UNIQUE          AUTO_INCREMENT,
    ClubName                VARCHAR(50)     NOT NULL
);

CREATE TABLE Country (
    CountryId               INT             NOT NUll            UNIQUE          AUTO_INCREMENT,
    CountryName             VARCHAR(30)     NOT NULL
);

CREATE TABLE Disciplin  (
    DisciplinId             INT             NOT NULL            UNIQUE          AUTO_INCREMENT,
    DisciplinName           VARCHAR(30)     NOT NULL   
);

CREATE TABLE GeographicLevel  (
    GeographicCode          INT             NOT NULL            UNIQUE          AUTO_INCREMENT,
    GeographicLevel         VARCHAR(50)     NOT NULL     
);

CREATE TABLE TechnicalData  (
    HomologationNumber      INT             NOT NUll,
    Slope                   VARCHAR(30)     NOT NULL,
    StartAltitude           INT             NOT NULL,
    EndAltidude             INT             NOT NULL,
    RaceArena               VARCHAR(30)     NOT NULL
);

CREATE TABLE Jury  (
    JuryId                  INT             NOT NULL            UNIQUE          AUTO_INCREMENT,
    TechnicalDelegate       VARCHAR(30)     NOT NULL,
    Referee                 VARCHAR(30)     NOT NULL,
    ChiefOfRace             VARCHAR(30)     NOT NULL
);

CREATE TABLE Athlete  (
    FISCode                 INT             NOT NULL,
    Fname                   VARCHAR(20)     NOT NULL,
    Lname                   VARCHAR(20)     NOT NULL,
    SSN                     DATE            NOT NULL,
    Gender                  VARCHAR(1)      NOT NULL,
    ClubId                  INT             NOT NUll,
    CountryId               INT             NOT NUll,
    ACPoints                DECIMAL(5,2),            
    DHPoints                DECIMAL(5,2),          
    SGPoints                DECIMAL(5,2),         
    GSPoints                DECIMAL(5,2),            
    SLPoints                DECIMAL(5,2)           
);
CREATE TABLE Competition  (
    CompetitionId           INT             NOT NULL,
    DisciplinId             INT             NOT NULL,
    GeographicCode          INT             NOT NULL,
    HomologationNumber      INT             NOT NUll,
    JuryId                  INT             NOT NULL,
    CompetitionDate         DATE            NOT NULL
);

CREATE TABLE Startlist (
    CompetitionId           INT             NOT NULL,
    FISCode                 INT             NOT NULL
)

CREATE TABLE JuryLogTable(
    id                      INT             NOT NULL            UNIQUE          AUTO_INCREMENT,
    times					TIME            NOT NULL,
    dates					DATE            NOT NULL,
    method					VARCHAR(20)     NOT NULL
);

