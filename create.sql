DROP TABLE IF EXISTS Club CASCADE;
DROP TABLE IF EXISTS Country CASCADE;
DROP TABLE IF EXISTS Disciplin CASCADE;
DROP TABLE IF EXISTS Sport CASCADE;
DROP TABLE IF EXISTS GeographicLevel CASCADE;
DROP TABLE IF EXISTS TechnicalData CASCADE;
DROP TABLE IF EXISTS Jury CASCADE;
DROP TABLE IF EXISTS Athlete CASCADE;
DROP TABLE IF EXISTS Competition CASCADE;


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


CREATE TABLE Sport  (
    SportId                 INT             NOT NULL,
    SportName               VARCHAR(30)     NOT NULL    
);


CREATE TABLE GeographicLevel  (
    GeographicCode          INT             NOT NULL,
    GeographicLevel         VARCHAR(20)     NOT NULL     
);

CREATE TABLE TechnicalData  (
    HomologationNumber      INT             NOT NUll,
    Slope                   VARCHAR(30)     NOT NULL,
    StartAltitude           INT             NOT NULL,
    EndAltidude             INT             NOT NULL,
    Lenght                  INT             NOT NULL,
    VerticalDrop            INT             NOT NULL
  
);

CREATE TABLE Jury  (
    JuryId                  INT             NOT NULL,
    TechnicalDelegate       VARCHAR(30)     NOT NULL,
    Referee                 VARCHAR(30)     NOT NULL,
    AssistantReferee        VARCHAR(30)     NOT NULL,
    ChiefOfRace             VARCHAR(30)     NOT NULL
);

CREATE TABLE Athlete  (
    FISCode                 INT             NOT NULL,
    Fname                   VARCHAR(20)     NOT NULL,
    Lname                   VARCHAR(20)     NOT NULL,
    SSN                     DATE            NOT NULL,
    Gender                  VARCHAR(1)      NOT NULL,
    ACPoints                INT,            
    DHPoints                INT,          
    SGPoints                INT,         
    GSPoints                INT,            
    SLPoints                INT           
);

CREATE TABLE Competition  (
    CompetitionId           INT             NOT NULL,
    CompetitionDate         DATE            NOT NULL,
    PRIMARY KEY (CompetitionId),
    FOREIGN KEY (FISCode) REFERENCES Athlete(FISCode)
);