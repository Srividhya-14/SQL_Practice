-- Srividhya S - Id no - IITP_AIMLTN_2601051
.headers on
.mode column

SELECT 'TASK 3.1 - Monthly Salary Calculation';

SELECT
name,
salary,
salary/12 AS monthly_pay
FROM employees
WHERE salary > 60000;

SELECT 'TASK 3.2 - Finance Department Salary Report';

SELECT
name AS employee_name,
salary AS annual_salary,
salary/12 AS monthly_salary
FROM employees
WHERE department='Finance'
ORDER BY salary DESC;
