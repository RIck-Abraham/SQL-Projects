CREATE TRIGGER trg_line_total 
	BEFORE INSERT 
	ON LINE FOR EACH ROW 
	SET NEW.LINE_TOTAL = NEW.LINE_UNITS * NEW.LINE_PRICE;