-- Question #8 Write a query that calculates the average regular pay (REGULAR) and overtime pay (OVERTIME) for each postal code (POSTAL). How could this analysis be useful for the Department of Innovation and Technology (DoIT) in centralizing payroll data and measuring process effectiveness by location?

SELECT "POSTAL", AVG("REGULAR") AS avg_regular_pay, AVG("OVERTIME") AS avg_overtime_pay
FROM salary_data
GROUP BY "POSTAL"
HAVING AVG("REGULAR") IS NOT NULL AND AVG("OVERTIME") IS NOT NULL
ORDER BY avg_regular_pay DESC;
