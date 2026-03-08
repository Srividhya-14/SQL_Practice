-- Insert sample employees (100 rows)

WITH RECURSIVE employee_generator(id) AS (
    SELECT 1
    UNION ALL
    SELECT id + 1
    FROM employee_generator
    WHERE id < 100
)

INSERT INTO employees (employee_id, name, department, salary, hire_date)
SELECT
    id,
    'Employee_' || id,
    CASE (id % 6)
        WHEN 0 THEN 'Engineering'
        WHEN 1 THEN 'Sales'
        WHEN 2 THEN 'Marketing'
        WHEN 3 THEN 'Finance'
        WHEN 4 THEN 'HR'
        ELSE 'TechSupport'
    END,
    50000 + (id * 1200),
    date('2015-01-01', '+' || id || ' days')
FROM employee_generator;
