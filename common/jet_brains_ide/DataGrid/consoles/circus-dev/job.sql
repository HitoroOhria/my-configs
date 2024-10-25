# SalaryType
SELECT id, jobs.salary_type, expected_annual_salary_min, expected_annual_salary_max, expected_monthly_salary_min, expected_monthly_salary_max
FROM jobs
WHERE salary_type = 2
ORDER BY expected_annual_salary_max DESC
;
