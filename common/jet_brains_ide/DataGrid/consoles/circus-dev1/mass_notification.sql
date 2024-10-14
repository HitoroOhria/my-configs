SELECT g.id AS agent_id, c.email AS account_email
FROM agents AS g
JOIN members AS m ON m.agent_id = g.id
JOIN accounts AS c ON m.account_id = c.id
WHERE g.id IN (12, 19, 82, 128, 173, 257, 264, 378, 404, 436, 444, 457, 655, 658, 667, 669, 671, 699, 701, 707, 722, 724, 741, 755, 774, 799, 808, 885, 100015, 100060, 100066, 100068, 100086, 100087, 100106)
;

SELECT COUNT(*) FROM agent_selection_salary_range_6_months_summaries;
#=>
SELECT COUNT(*) FROM agent_selection_occupation_6_months_summaries;
#=>
SELECT COUNT(*) FROM hr_selection_6_months_summaries;
#=>