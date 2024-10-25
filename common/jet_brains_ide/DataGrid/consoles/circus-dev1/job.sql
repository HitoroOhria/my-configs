SELECT id, occupations_sub FROM jobs WHERE JSON_LENGTH(occupations_sub) = 0;

# SalaryType
SELECT id, jobs.salary_type, expected_annual_salary_min, expected_annual_salary_max, expected_monthly_salary_min, expected_monthly_salary_max
FROM jobs
WHERE salary_type = 2
ORDER BY created_at DESC
;

# Occupation
-- occupations_main: 23
-- occupations_sub: [46]
SELECT occupation_main, occupations_sub FROM jobs WHERE id = 99268;

-- join to masters
SELECT j.id AS job_id, m1.name AS occupation_main, m2.name AS occupations_sub
FROM jobs j
LEFT JOIN masters m1
    ON m1.value = j.occupation_main
    AND m1.group_name = 'minor-occupations'
    AND m1.parent_id IS NOT NULL
LEFT JOIN masters m2
    ON JSON_CONTAINS(j.occupations_sub, CAST(m2.value AS json))
    AND m2.group_name = 'minor-occupations'
    AND m2.parent_id IS NOT NULL
WHERE j.id = 99268
;

UPDATE jobs
SET
#     occupation_main = 23,
    occupations_sub = '[46]'
#     occupations_sub = '[]'
WHERE id = 99268
;
