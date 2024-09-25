--Question #4 Write a query to identify departments where the percentage of employees working overtime (OVERTIME > 0) exceeds 20% of the total department size.#
WITH Department_Size AS (
    SELECT "DEPARTMENT_NAME", COUNT("NAME") AS total_employees
    FROM salary_data
    GROUP BY "DEPARTMENT_NAME"
),
Overtime_Employees AS (
    SELECT "DEPARTMENT_NAME", COUNT("NAME") AS overtime_employees
    FROM salary_data
    WHERE "OVERTIME" > 0
    GROUP BY "DEPARTMENT_NAME"
)
SELECT ds."DEPARTMENT_NAME", oe.overtime_employees, ds.total_employees,
       (oe.overtime_employees::decimal / ds.total_employees * 100) AS overtime_percentage
FROM Department_Size ds
JOIN Overtime_Employees oe ON ds."DEPARTMENT_NAME" = oe."DEPARTMENT_NAME"
WHERE (oe.overtime_employees::decimal / ds.total_employees) * 100 > 20;