DELIMITER $$

CREATE FUNCTION countVertical (HomologationNumber INT(12))
RETURNS INT(12)
BEGIN 
DECLARE droping INT(12) DEFAULT 0;
SELECT StartAltitude INTO droping FROM TechnicalData WHERE HomologationNumber=HomologationNumber;

RETURN countVertical;

END$$

DELIMITER ;


SELECT countVertical(132761119) droping;




DELIMITER $$

CREATE FUNCTION getStudentMarks (uid INT (12))
RETURNS VARCHAR (30)
BEGIN 
DECLARE studentMark INT (12) DEFAULT 0;
SELECT Fname INTO studentMark FROM Athlete where FISCode=uid;

RETURN studentMark;

END;

DELIMITER ;


DELIMITER $$

CREATE FUNCTION getStudentMarks (uid INT (12))
RETURNS INT (30)
BEGIN 
DECLARE studentMark INT (30) DEFAULT 0;
SELECT FISCode INTO studentMark FROM Athlete WHERE FISCode=uid;

RETURN studentMark;

END$$

DELIMITER ;


SELECT Lname, getStudentMarks(s.id) as Fname FROM Athlete s;


SELECT Lname, getStudentMarks(s.FISCode) as Fname FROM Athlete s;


DELIMITER $$ 

CREATE FUNCTION verticalDrop (uid INT(20))
RETURNS INT (4)
BEGIN 
DECLARE dropHeight INT (4) DEFAULT 0;
SELECT Subtract(StartAltitude, EndAltidude) INTO dropHeight FROM TechnicalData WHERE HomologationNumber=uid;

RETURN dropHeight;

END$$
DELIMITER ;

SELECT Fname, dropHeight(s.FISCode) as VerticalDrop FROM Athlete s;





-- Function
-- Räkna ut antalet startande på tävling med id 1;
DELIMITER $$

CREATE FUNCTION countcomp (uid INT(4))
RETURNS INT (4)
BEGIN 
DECLARE antal INT (4) DEFAULT 0;
SELECT COUNT(*) INTO antal FROM Startlist WHERE CompetitionId=uid;

RETURN antal;

END$$
DELIMITER ;




SELECT countcomp(1) antal;













