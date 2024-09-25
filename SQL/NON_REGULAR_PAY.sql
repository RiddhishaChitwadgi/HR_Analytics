-- Question #5 Create a query that compares the REGULAR and TOTAL GROSS pay for each department and calculates the percentage of total gross pay that comes from non-regular sources like overtime, retroactive pay, or other compensations. How can this information be useful in revising current payroll policies and procedures?

SELECT "DEPARTMENT_NAME", SUM("REGULAR") AS total_regular_pay, SUM("TOTAL GROSS") AS total_gross_pay,
       ((SUM("TOTAL GROSS") - SUM("REGULAR")) / SUM("TOTAL GROSS") * 100) AS non_regular_percentage
FROM salary_data
GROUP BY "DEPARTMENT_NAME"
ORDER BY non_regular_percentage DESC;