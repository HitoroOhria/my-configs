SELECT g.id AS agent_id, c.email AS member_email
# SELECT g.id AS agent_id, GROUP_CONCAT(c.email ORDER BY c.email SEPARATOR ', ') AS member_emails
FROM agents AS g
JOIN members AS m
    ON m.agent_id = g.id
JOIN accounts AS c
    ON c.id = m.account_id
WHERE g.id IN (7, 9)
# GROUP BY g.id
;