CREATE OR REPLACE TRIGGER trg_char_hours 
AFTER INSERT ON CHARTER
FOR EACH ROW
BEGIN
	UPDATE AIRCRAFT
	SET   
	AC_TTAF=AC_TTAF+:NEW.CHAR_HOURS_FLOWN,
	AC_TTEL=AC_TTEL+:NEW.CHAR_HOURS_FLOWN,
	AC_TTER=AC_TTER+:NEW.CHAR_HOURS_FLOWN
	WHERE AIRCRAFT.AC_NUMBER=:NEW.AC_NUMBER;
END;