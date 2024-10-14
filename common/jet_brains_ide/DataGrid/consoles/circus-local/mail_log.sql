INSERT INTO `mail_logs` (`account_id`, `agent_id`, `title`, `message`, `attachments`, `sending_status`, `created_at`, `updated_at`)
VALUES (1043, 582, 'タイトル', 's3.url', '{}', 'success', NOW(), NOW()),
       (1043, 582, 'タイトル', 's3.url', '{}', 'success', NOW(), NOW()),
       (1043, 582, 'タイトル', 's3.url', '{}', 'success', NOW(), NOW())
;


-- 	s := squirrel.Select(
# 		"COUNT(m.id) AS mail_log_count",
# 		"f.capacity AS capacity",
# 	).
# 	From("agents AS a").
# 	LeftJoin("mail_logs AS m ON m.agent_id = a.id AND DATE_FORMAT(m.created_at, '%Y%m') = DATE_FORMAT(NOW(), '%Y%m') AND m.sending_status = 'success'").
# 	LeftJoin("feature_controls AS f ON f.agent_id = a.id AND f.feature = 'massNotification'").
# 	Where("a.id = ?", hrAgentID).
# 	GroupBy("f.capacity").
# 	Having(squirrel.NotEq{"f.capacity": nil})

SELECT COUNT(m.id), f.capacity
FROM agents AS a
         LEFT JOIN mail_logs AS m
                   ON m.agent_id = a.id
                       AND DATE_FORMAT(m.created_at, '%Y%m') = DATE_FORMAT(NOW(), '%Y%m')
                       AND m.sending_status = 'success'
         LEFT JOIN feature_controls AS f
                   ON f.agent_id = a.id
                       AND f.feature = 'massNotification'
WHERE a.id = '582'
;