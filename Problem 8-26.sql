CREATE TRIGGER trg_updatecustbalance 
AFTER INSERT ON INV_MYSQL FOR EACH ROW
UPDATE CUST_MYSQL 
SET CUST_MYSQL.CUST_BALANCE = CUST_MYSQL.CUST_BALANCE + NEW.INV_AMOUNT
WHERE CUST_MYSQL.CUST_NUM = NEW.CUST_NUM;

INSERT INTO INV_MYSQL (INV_NUM,CUST_NUM,INV_DATE,INV_AMOUNT) VALUES(9005,2001,'2018-04-27',225.40);