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
* TechSupport

![Table Creation](https://github.com/user-attachments/assets/276492f0-2b95-404c-96b8-78f1d7ffa45b)


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

![Result](https://github.com/user-attachments/assets/a7b5d7f8-d821-4ab9-b5a2-41dc625a0ff7)

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

![Result](https://github.com/user-attachments/assets/f1a1f45e-76c0-400f-97d2-ef33e19a499e)


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

![Result](https://github.com/user-attachments/assets/8317b9e2-daa5-4b1e-b6be-4c26125bdb5d)

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


![Result](https://github.com/user-attachments/assets/9afd23bc-8492-4a4e-af8c-22ee3de6f126)

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

![Result](https://github.com/user-attachments/assets/cd0f2651-8219-42ee-a391-1395595cb53c)


---

# 3. Running the Project
Requirement - sqlite3 installed locally

### Step 1 – Clone the repository

```
git clone <repourl>
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

Generate stored outputs:

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

