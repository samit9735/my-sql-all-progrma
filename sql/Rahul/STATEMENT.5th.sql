-- TRANSACTION CONTROL STATEMENT -- commit and rollback

SELECT * FROM transaction_tbl;

SET sql_safe_updates=0;

START TRANSACTION;

UPDATE transaction_tbl SET amount=100000 WHERE transid=4;

COMMIT;  -- Make the change permenantly 
ROLLBACK;  -- Revert or undo the changes


SELECT * FROM customer;

START transaction;

UPDATE CUSTOMER SET city='Cochin' WHERE city='Delhi';

COMMIT;
ROLLBACK;

-- DCL  DATA CONTROL LANGUAGE

GRANT SELECT ,INSERT ON customer TO 'root'@'localhost';
REVOKE INSERT ON customer FROM 'root'@'localhost';

GRANT ALL ON customer TO 'root'@'localhost';
REVOKE DELETE ON customer FROM 'root'@'localhost';  

-- root is an administrator for this database who have all permission

SELECT * FROM transaction_tbl;

SELECT * FROM transaction_tbl WHERE productname LIKE 'T%';

SELECT * FROM transaction_tbl WHERE productname LIKE '%o%';

SELECT * FROM transaction_tbl WHERE productname LIKE 'T___' OR  productname LIKE 'T__' OR  productname LIKE 'T_';

SELECT * FROM transaction_tbl WHERE productname LIKE '%e';
