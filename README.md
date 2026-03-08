Name - Srividhya S
Date - 08/03/2026
Id no - IITP_AIMLTN_2601051

# SQL Employee Data Analysis

This project demonstrates common SQL querying techniques using a simulated HR employee dataset.
The goal is to generate insights for the HR department by querying employee salary, department, and hiring data using SQLite.

---

# 1. Table Schema

The database contains a single table named `employees`.

| Column      | Type    | Description                                       |
| ----------- | ------- | ------------------------------------------------- |
| employee_id | INTEGER | Unique identifier for each employee (Primary Key) |
| name        | TEXT    | Employee name                                     |
| department  | TEXT    | Department the employee belongs to                |
| salary      | INTEGER | Annual salary in USD                              |
| hire_date   | DATE    | Date when the employee joined the company         |

The dataset includes **100 employees** distributed across the following departments:

* Engineering
* Sales
* Marketing
* Finance
* HR
* Operations

---

# 2. SQL Solutions

## Task 1 – Basic Querying

### 1.1 Employees in the Marketing Department

This query retrieves all columns for employees who belong to the Marketing department.

```sql
.headers on
.mode column

SELECT *
FROM employees
WHERE department = 'Marketing';
```

---

### 1.2 Employees Earning More Than $90,000

This query shows only the employee name, department, and salary for employees whose annual salary exceeds $90,000.

```sql
.headers on
.mode column

SELECT
name,
department,
salary
FROM employees
WHERE salary > 90000;
```

---

### 1.3 Employees in Sales or Finance

This query retrieves all employees who belong to either the Sales or Finance departments.

```sql
.headers on
.mode column

SELECT *
FROM employees
WHERE department IN ('Sales','Finance');
```

---

# Task 2 – Sorting and Limiting

### 2.1 Top 5 Highest-Paid Employees

This query sorts employees by salary in descending order and returns the top five highest-paid employees.

```sql
.headers on
.mode column

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

---

### 2.2 Three Most Recently Hired Engineers

This query filters employees in the Engineering department and returns the three most recently hired employees based on the hire date.

```sql
.headers on
.mode column

SELECT *
FROM employees
WHERE department='Engineering'
ORDER BY hire_date DESC
LIMIT 3;
```

---

### 2.3 Oldest Employee Earning More Than $70,000 (Not in HR)

This query finds the employee with the earliest hire date among employees earning more than $70,000 and not belonging to the HR department.

```sql
.headers on
.mode column

SELECT *
FROM employees
WHERE salary > 70000
AND department != 'HR'
ORDER BY hire_date ASC
LIMIT 1;
```

---

# Task 3 – Calculated Fields and Aliases

### 3.1 Monthly Salary Calculation

This query calculates monthly salary by dividing the annual salary by 12 and displays the result using the alias `monthly_pay`.

```sql
.headers on
.mode column

SELECT
name,
salary,
salary/12 AS monthly_pay
FROM employees
WHERE salary > 60000;
```

---

### 3.2 Finance Department Salary Report

This query generates a report for Finance department employees showing renamed columns and calculated monthly salary.

```sql
.headers on
.mode column

SELECT
name AS employee_name,
salary AS annual_salary,
salary/12 AS monthly_salary
FROM employees
WHERE department='Finance'
ORDER BY salary DESC;
```

---

# 3. Running the Project

Anyone can reproduce the project locally using SQLite.

### Step 1 – Clone the repository

```
git clone <repository-url>
cd SQL_Practice
```

### Step 2 – Create the database

```
sqlite3 data/employees.db < sql/create_table.sql
```

### Step 3 – Insert sample data

```
sqlite3 data/employees.db < sql/sample_data.sql
```

### Step 4 – Run the queries

Example:

```
sqlite3 data/employees.db < sql/task1_basic_queries.sql
```

You can also generate stored outputs:

```
sqlite3 data/employees.db < sql/task1_basic_queries.sql > results/task1_results.txt
sqlite3 data/employees.db < sql/task2_sorting_limiting.sql > results/task2_results.txt
sqlite3 data/employees.db < sql/task3_calculations_aliases.sql > results/task3_results.txt
```

---

# Tools Used

* SQLite
* SQL
* Git & GitHub

