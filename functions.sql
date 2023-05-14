

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













