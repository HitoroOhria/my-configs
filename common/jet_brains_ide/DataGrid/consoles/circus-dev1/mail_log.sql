INSERT INTO `mail_logs` (`account_id`, `agent_id`, `recipient`, `title`, `message`, `attachments`, `sending_status`, `created_at`, `updated_at`)
VALUES
    (100039, 100037,  '[{\"agent_id\": 100039, \"account_id\": 582}]',  'タイトル', 's3.url', '{}', 'success',  NOW(),  NOW()),
    (100039, 100037,  '[{\"agent_id\": 100039, \"account_id\": 582}]',  'タイトル', 's3.url', '{}', 'success',  NOW(),  NOW()),
    (100039, 100037,  '[{\"agent_id\": 100039, \"account_id\": 582}]',  'タイトル', 's3.url', '{}', 'success',  NOW(),  NOW()),
    (100039, 100037,  '[{\"agent_id\": 100039, \"account_id\": 582}]',  'タイトル', 's3.url', '{}', 'success',  NOW(),  NOW()),
    (100039, 100037,  '[{\"agent_id\": 100039, \"account_id\": 582}]',  'タイトル', 's3.url', '{}', 'success',  NOW(),  NOW())
;

SELECT *
FROM mail_logs
WHERE account_id = '100039'
    AND agent_id = '100037'
;