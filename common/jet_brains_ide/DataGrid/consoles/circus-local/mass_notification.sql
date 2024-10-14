
INSERT INTO feature_controls(agent_id, feature, is_active, capacity)
VALUES (582, 'massNotification', 1, 5)
;

INSERT INTO mail_logs (account_id, agent_id, recipient, title, message, attachments, sending_status)
VALUES (1043,582,'[{"agent_id": 1043, "account_id": 582}]','タイトル','s3.url','{}','success')
;
# 1043,582,"[{""agent_id"": 1043, ""account_id"": 582}]",タイトル,s3.url,{},success
# 1043,582,"[{""agent_id"": 1043, ""account_id"": 582}]",タイトル,s3.url,{},success

SELE

