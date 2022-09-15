-- 3 Types of parameters in Procedure
-- IN, OUT, IN OUT

DECLARE
    a INTEGER;
    b INTEGER;
    c INTEGER;
    PROCEDURE findMax(x IN INTEGER, y IN INTEGER, z OUT INTEGER) IS
    BEGIN
        IF x > y THEN
            z := x;
        ELSE
            z := y;
        END IF;
    END;
    BEGIN
     a := 100;
     b := 200;
     findMax(a,b,c);
     DBMS_OUTPUT.PUT_LINE('Max of 100, 200 is :' || c);
    END;
    /
    
DECLARE
    a INTEGER;
    PROCEDURE squareNum(x IN OUT INTEGER) IS
    BEGIN
        x := x * x;
    END;
    BEGIN
        a := 11;
        squareNum(a);
        DBMS_OUTPUT.PUT_LINE('Square of 11 is :' || a);
    END;
    /
    
    
    
CREATE TABLE CUSTOMER(  
ID INT NOT NULL,  
NAME VARCHAR2(100),  
AGE INT,  
CITY VARCHAR2(100),  
SALARY DECIMAL (20,2)  
);



INSERT INTO CUSTOMER VALUES(1,'Rajesh',28,'Chennai',100000);

INSERT INTO CUSTOMER VALUES(2,'Kavin',2,'Bangalore',200000);

INSERT INTO CUSTOMER VALUES(3,'Sangavi',25,'Chennai',70000);

INSERT INTO CUSTOMER VALUES(4,'Ravi',50,'Hyderabad',90000);

INSERT INTO CUSTOMER VALUES(5,'Kala',40,'Chennai',75000);

INSERT INTO CUSTOMER VALUES(6,'Priya',26,'Pune',50000);

INSERT INTO CUSTOMER VALUES(7,'Durga',36,'Pune',120000);

SELECT * FROM CUSTOMER;
TRUNCATE TABLE CUSTOMER;

-- Get the city for Priya
DECLARE
    c_id INTEGER ;
    c_city VARCHAR2(100);
    PROCEDURE getCity(cid IN INTEGER , c_c OUT VARCHAR2) IS
    BEGIN
       SELECT DISTINCT city INTO c_c FROM CUSTOMER WHERE ID=cid; 
    END;
    BEGIN
        c_id := 6;
        getCity(c_id,c_city);
        DBMS_OUTPUT.PUT_LINE(' Priya is from :' || c_city);
    END;
    /
    
 -- Update city from chennai to Delhi for Sankavi 
 SELECT * FROM CUSTOMER WHERE ID=6;
DECLARE
    c_id INTEGER ;
    n_city VARCHAR2(100);
    PROCEDURE updateCity(cid IN INTEGER ,ncity IN VARCHAR2) IS
    BEGIN
       UPDATE CUSTOMER SET city=ncity WHERE ID=cid;
       -- UPDATE CUSTOMER SET city='New Delhi' WHERE ID=6;
    END;
    BEGIN
        c_id := 6;
        n_city:='Nagpur';
        updateCity(c_id,n_city);
    END;
    /
    
SELECT * FROM CUSTOMER WHERE ID=6;

    
    
    
    