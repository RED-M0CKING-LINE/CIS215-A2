CREATE TRIGGER oil_change_trigger
BEFORE UPDATE ON vehicle
FOR EACH ROW
BEGIN
    DECLARE difference INT;
    SET difference = NEW.miles_last - NEW.miles_oil_change_last;
    
    IF difference >= 4000 THEN
        SET NEW.oil_change_needed = TRUE;
    ELSE
        SET NEW.oil_change_needed = FALSE;
    END IF;
END;
