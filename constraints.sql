
 
 
-- Primärnycklar 

ALTER TABLE Club ADD CONSTRAINT Club_PK PRIMARY KEY (ClubId);
 
ALTER TABLE Country ADD CONSTRAINT Country_PK PRIMARY KEY (CountryId);

ALTER TABLE Disciplin ADD CONSTRAINT Disciplin_PK PRIMARY KEY (DisciplinId);

ALTER TABLE Sport ADD CONSTRAINT Sport_PK PRIMARY KEY (SportId);

ALTER TABLE GeographicLevel ADD CONSTRAINT GeographicLevel_PK PRIMARY KEY (GeographicCode);

ALTER TABLE TechnicalData ADD CONSTRAINT TechnicalData_PK PRIMARY KEY (HomologationNumber);

ALTER TABLE Jury ADD CONSTRAINT Jury_PK PRIMARY KEY (JuryId);

ALTER TABLE Athlete ADD CONSTRAINT Athlete_PK PRIMARY KEY (FISCode);

ALTER TABLE Competition ADD CONSTRAINT Competition_PK PRIMARY KEY (CompetitionId);


 -- Främmande nycklar 
 
ALTER TABLE Athlete ADD CONSTRAINT Athlete_Club_FK FOREIGN KEY (ClubId) REFERENCES Club(ClubId); 

ALTER TABLE Athlete ADD CONSTRAINT Athlete_Country_FK FOREIGN KEY (CountryId) REFERENCES Country(CountryId);

ALTER TABLE Competition ADD CONSTRAINT Competition_Disciplin_FK FOREIGN KEY (DisciplinId) REFERENCES Disciplin(DisciplinId);

ALTER TABLE Competition ADD CONSTRAINT Competition_Sport_FK FOREIGN KEY (SportId) REFERENCES Sport(SportId);

ALTER TABLE Competition ADD CONSTRAINT Competition_GeographicLevel_FK FOREIGN KEY (GeographicCode) REFERENCES GeographicLevel(GeographicCode);

ALTER TABLE Competition ADD CONSTRAINT Competition_TechnicalData_FK FOREIGN KEY (HomologationNumber) REFERENCES TechnicalData(HomologationNumber);

ALTER TABLE Competition ADD CONSTRAINT Competition_Athlete_FK FOREIGN KEY (FISCode) REFERENCES Athlete(FISCode);