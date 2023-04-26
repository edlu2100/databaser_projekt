
CREATE DATABASE Sport_Competition IF NOT EXISTS;

DROP TABLE IF EXISTS Club CASCADE;
DROP TABLE IF EXISTS Country CASCADE;
DROP TABLE IF EXISTS Disciplin CASCADE;
DROP TABLE IF EXISTS GeographicLevel CASCADE;
DROP TABLE IF EXISTS TechnicalData CASCADE;
DROP TABLE IF EXISTS Jury CASCADE;
DROP TABLE IF EXISTS Athlete CASCADE;
DROP TABLE IF EXISTS Competition CASCADE;
DROP TABLE IF EXISTS Startlist CASCADE;

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
    ClubId                  INT             NOT NUll,
    ClubName                VARCHAR(50)     NOT NULL
);

CREATE TABLE Country (
    CountryId               INT             NOT NUll,
    CountryName             VARCHAR(30)     NOT NULL
);

CREATE TABLE Disciplin  (
    DisciplinId             INT             NOT NULL,
    DisciplinName           VARCHAR(30)     NOT NULL   
);

CREATE TABLE GeographicLevel  (
    GeographicCode          INT             NOT NULL,
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
    JuryId                  INT             NOT NULL,
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