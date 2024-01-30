DELIMITER $$

CREATE TRIGGER trg_line_prod 
	AFTER INSERT 
	ON LINE FOR EACH ROW 
BEGIN
	UPDATE PRODUCT
	SET PRODUCT.PROD_QOH = PRODUCT.PROD_QOH - NEW.LINE_UNITS
	WHERE PRODUCT.PROD_QOH = NEW.P_QOH;
END$$

DELIMITER ;



DELIMITER $$

CREATE TRIGGER trg_line_prod 
	AFTER INSERT 
	ON LINE FOR EACH ROW 
BEGIN
	UPDATE PRODUCT
	SET NEW.P_QOH = P_QOH - NEW.LINE_UNITS;
END$$

DELIMITER ;

DELIMITER $$


DELIMITER $$

CREATE TRIGGER trg_line_prod 
	AFTER INSERT 
	ON LINE FOR EACH ROW 
BEGIN
	UPDATE PRODUCT
	SET P_QOH = NEW.P_QOH;
END$$

DELIMITER ;



CREATE TRIGGER trg_line_prod 
	AFTER INSERT 
	ON LINE FOR EACH ROW 
BEGIN
	UPDATE PRODUCT
	SET P_QOH = 13;
END$$

DELIMITER ;