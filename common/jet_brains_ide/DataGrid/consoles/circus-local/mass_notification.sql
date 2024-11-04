# 一括告知の配信済み件数の取得
SELECT COUNT(m.id) AS mail_log_count
FROM agents AS a
LEFT JOIN mail_logs AS m
    ON m.agent_id = a.id
    AND DATE_FORMAT(m.created_at, '%Y%m') = DATE_FORMAT(NOW(), '%Y%m')
    AND m.sending_status = 'success'
WHERE a.id = 582
;

