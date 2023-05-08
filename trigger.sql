



-- Trigger

DELIMITER $$

CREATE TRIGGER JuryTrigger 
AFTER DELETE ON Jury
FOR EACH ROW
BEGIN
INSERT INTO JuryLogTable VALUES(null, current_time, current_date, 'DELETE');
END $$

DELIMITER ;


CALL Startlist(2);
