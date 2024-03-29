DELIMITER $$

CREATE PROCEDURE PRC_INV_AMOUNTS(INV_NUM INT)
BEGIN
	DECLARE SUBTOTAL DECIMAL(10,2);
	SELECT SUM(LINE_TOTAL) INTO SUBTOTAL 
		FROM LINE 
		WHERE INV_NUMBER = INV_NUM;
	UPDATE INVOICE SET
		INV_TAX = SUBTOTAL * 0.08,
		INV_TOTAL = SUBTOTAL + INV_TAX
	WHERE INV_NUMBER = INV_NUM;
END; 

$$
