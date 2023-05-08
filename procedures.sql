


-- Procedures
-- Skriv ut atleternas fiskod, förnamn, efternamn, kön, födelsedatum samt slpoints som ksa start tävlingen med id=2 ordnat efter slpoints
DELIMITER $$

CREATE PROCEDURE Startlist(uid INT(4))

Begin
SELECT  Startlist.FISCode, Athlete.Fname, Athlete.Lname, Athlete.gender, Athlete.SSN, Athlete.SLPoints FROM Startlist INNER JOIN Athlete ON Startlist.FISCode=Athlete.FISCode WHERE competitionId=uid ORDER BY Athlete.SLPoints;

END$$

DELIMITER ;




