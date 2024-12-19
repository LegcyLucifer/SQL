use assesment;
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(50)
);
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-01 09:00', 'Admin');

SELECT * FROM Worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

SELECT * FROM Worker WHERE first_name IN ('Vipul', 'Satish');

SELECT * FROM Worker WHERE FIRST_NAME LIKE '_____h';

SELECT * FROM Worker WHERE SALARY like "%1" or SALARY like "1%";

SELECT w.*
FROM Worker w
JOIN (
    SELECT first_name, last_name
    FROM Worker
    GROUP BY first_name, last_name
    HAVING COUNT(*) > 1
) dup
ON w.first_name = dup.first_name AND w.last_name = dup.last_name;

SELECT * FROM Worker LIMIT 6;

SELECT department, COUNT(*) AS employee_count FROM Worker GROUP BY department HAVING COUNT(*) < 5;

SELECT department, COUNT(*) AS employee_count FROM Worker GROUP BY department;

SELECT department, first_name, last_name, salary FROM Worker WHERE (department, salary) IN (
    SELECT department, MAX(salary)
    FROM Worker
    GROUP BY department
);




