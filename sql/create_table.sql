-- Create employees table

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT NOT NULL,
    salary INTEGER NOT NULL,
    hire_date DATE NOT NULL
);
