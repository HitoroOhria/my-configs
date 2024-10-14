
SELECT g.id AS agent_id, c.email AS member_email
FROM agents AS g
         JOIN members AS m
              ON m.agent_id = g.id
         JOIN accounts AS c
              ON c.id = m.account_id
# WHERE g.id IN (12, 19, 82, 128, 173, 257, 264, 378, 404, 436, 444, 457, 655, 658, 667, 669, 671, 699, 701, 707, 722, 724, 741, 755, 774, 799, 808, 885, 100015, 100060, 100066, 100068, 100086, 100087, 100106)
WHERE g.id IN (15, 19)
;
