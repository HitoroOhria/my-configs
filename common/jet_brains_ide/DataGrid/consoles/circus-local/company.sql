SELECT industry_main, industries_sub
FROM companies
WHERE industry_main IS NOT NULL
LIMIT 10
;