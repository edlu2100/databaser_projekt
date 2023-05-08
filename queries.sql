


-- 1. Lista ut alla klubbar.
SELECT ClubName FROM Club;

-- 2. Lista ut all information var homologationsnumret är 132761119.
SELECT * FROM TechnicalData WHERE HomologationNumber= 132761119;

-- 3. Lista ut förnamn och efternamn samt vilken klubb de tillhör
SELECT Athlete.Fname, Athlete.Lname, Club.ClubName FROM Athlete INNER JOIN Club ON Athlete.ClubId=Club.ClubId;

-- 4. Lista ut alla atleters förnamn, efternamn, slalom- och storslalompoints som har lägre snitt än 45 i sl och gs.
SELECT Fname, Lname, SlPoints, GSPoints FROM Athlete WHERE ((SlPoints + GSPoints)/2) <45;

-- 5. Lista ut alla TechnicalDelegate som har ett E i sitt namn.
SELECT * FROM Jury WHERE TechnicalDelegate Like '%E%';

-- 6. Lista ut tävlingsbackens namn på skidanläggningarna Åre, Suomu samt Duved.
SELECT Slope FROM TechnicalData WHERE RaceArena IN ('Åre', 'Suomu', 'Duved'); 

-- 7. Lista ut Förnamn och efternamn om det existerar en åkare som har totalt 84,06 i slalom och gspoints.
SELECT Fname, Lname FROM Athlete WHERE EXISTS (SELECT SLPoints, GSPoints WHERE ((SLPoints + GSPoints)= 84.06));

-- 8. Lista alla atleters fiskod, förnamn, efternamn, dhpoints som har under 100points. Gruppera efter DHpoints.
Select FISCode, Fname, Lname, DHPoints FROM Athlete GROUP BY DHPoints, Fname, Lname, FISCode HAVING MIN(DHPoints)<100;

-- 10. Skriv ut Land, förnamn, efternamn samt gruppera efter land.
SELECT Country.CountryName, Athlete.Fname, Athlete.Lname FROM Athlete INNER JOIN Country ON Athlete.CountryId=Country.CountryId GROUP BY Country.CountryName, Athlete.Fname, Athlete.Lname;

-- 11. Lista ut alla atleters namn, efternamn, slpoint, fiskod samt vilket tävlingsid som de ska delta på. Ordna efter tävlingsid.
SELECT Startlist.CompetitionId, Startlist.FISCode, Athlete.Fname, Athlete.Lname, Athlete.SLPoints FROM Startlist INNER JOIN Athlete ON Startlist.FISCode=Athlete.FISCode ORDER BY Startlist.CompetitionId;

-- 12. Räkna hur många deltagare i tävlingen med id 1.
SELECT COUNT(*) FROM Startlist WHERE CompetitionId=1;

-- 13. Radera Åkare med fioskod 502443 från tävlingen med id 1.
DELETE FROM Startlist WHERE FISCode=502443 AND CompetitionId=1;

-- 14. Ändra TechnicalDelegate till Emil Svanberg där Juryid är 3.
UPDATE Jury SET TechnicalDelegate = 'Svanberg Emil' WHERE JuryId=3;

-- 15. Lägg till ett nytt värde med auto increment (Fattade inte vad frågan innebar. Om man skulle lägga till det till en kolumn eller ett nytt värde)
INSERT INTO Club VALUES (NULL, 'Sollentuna SLK'); -- La till ett nytt värde. Har redan kolumner med auto_increment












