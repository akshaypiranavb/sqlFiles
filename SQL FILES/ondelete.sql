USE EMPLOYEE;
CREATE TABLE PRACTICE
(
	BRANCH_ID INT PRIMARY KEY AUTO_INCREMENT,
	EMP_NAME VARCHAR(20)


);
DROP TABLE PRACTICE1;
CREATE TABLE PRACTICE1
(
	EMP_ID INT PRIMARY KEY AUTO_INCREMENT,
	EMP_NAME VARCHAR(20),
	AGE INT,
    SALARY BIGINT,
    BRANCH_ID INT,
    CONSTRAINT FK_BRANCH FOREIGN KEY (BRANCH_ID) REFERENCES PRACTICE(BRANCH_ID)
    ON DELETE CASCADE -- CASCADE OR SET NULL BOTH ARE SAME
);
TRUNCATE TABLE PRACTICE;
INSERT INTO PRACTICE VALUES
	(1,"CEO AKSHAY"),
    (2,"FOUNDER SRI AKSHAY");
INSERT INTO PRACTICE1 VALUES
	(1,"AKSHAY",18,200000,2),
	(2,"PIRANAV",29,20000,2),
    (3,"SRI",18,200000,2),
    (4,"LATHA",18,100000,1),
    (5,"AKSHAY",18,200000,1),
	(6,"AKSHAYBEEMA",18,200000,2),
	(7,"PIRANAVBEEMA",29,20000,2),
    (8,"SRIPRANAV",18,200000,2),
    (9,"LATHABEEMA",18,100000,1),
    (10,"AKSHAYPIRANAV",18,200000,1);
    
SELECT * FROM PRACTICE1;
SELECT * FROM PRACTICE;
    
DROP TABLE PRACTICE1;


DELETE FROM PRACTICE WHERE BRANCH_ID =2;
-- SET NULL NA ROW DELETE ANA VALUE VARA EDATHULA NULL NU SET PANNIRUM
-- CASCADE NA ENGA DELETE PANNUROMO ATHUKU LINK AGIRUKA TABLE LA ATHA REFERENCE AH VACHIRUKA ROW LAM DELETE AGIRUM



