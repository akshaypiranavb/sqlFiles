-- CONSTRAINTS AFTER CREATING A TABLE AND TAKE OUT THE CONSTRAINTS


USE EMPLOYEE;
CREATE TABLE EMPLOYEE_DETAIL(
	EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(20),
	JOB_DESCRIPTION VARCHAR(20),
    SALARY INT
);

-- ADDING NOT NULL CONSTRAINT 
ALTER TABLE EMPLOYEE_DETAIL MODIFY EMP_ID INT AUTO_INCREMENT;
ALTER TABLE EMPLOYEE_DETAIL MODIFY EMP_NAME VARCHAR(20) NOT NULL;

-- ADDING DEFAULT CONSTRAINT
ALTER TABLE EMPLOYEE_DETAIL MODIFY JOB_DESCRIPTION VARCHAR(20) DEFAULT "NOT ASSIGNED"; 


-- REMOVING NOT NULL CONSTRAINTS
ALTER TABLE EMPLOYEE_DETAIL MODIFY EMP_NAME VARCHAR(20);

-- REMOVING DEFAULT CONSTRAINT
ALTER TABLE EMPLOYEE_DETAIL ALTER JOB_DESCRIPTION  DROP DEFAULT;


-- ADDING CHECK CONSTRAINT
ALTER TABLE EMPLOYEE_DETAIL ADD CONSTRAINT CHECK_SALARY CHECK(SALARY>20000);

-- REMOVING CHECK CONSTRAINT
ALTER TABLE EMPLOYEE_DETAIL DROP CHECK CHECK_SALARY;



