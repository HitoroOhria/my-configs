# Set up for mass notifications
UPDATE jobs
SET member_id    = 1111,
    agent_id     = 582,
    career_stage = (IF(id = 3002, 1, 2)),
    public = 1,
    open = 1
WHERE id IN (3002, 3004)
;
# Create job_commission_fee_logs
INSERT INTO job_commission_fee_logs (job_id, fee_value, fee_unit)
VALUES (3002, 25, 1),
       (3004, 750000, 2)
;

SELECT id, commission_fee_value, commission_fee_id
FROM jobs
WHERE id IN (3002, 3004)
;


# FetchJobsWithLastFeeLogs
SELECT *
FROM jobs j
LEFT JOIN job_commission_fee_logs l ON j.id = l.job_id
LEFT JOIN mass_notification_logs mnl ON j.id = mnl.job_id AND mnl.created_at > NOW() - INTERVAL 30 DAY
INNER JOIN (
    SELECT job_id, MAX(created_at) AS latest_created_at
    FROM job_commission_fee_logs
    Group BY job_id
) AS latest_logs ON l.job_id = latest_logs.job_id AND l.created_at = latest_logs.latest_created_at
WHERE l.created_at > NOW() - INTERVAL 30 DAY
    AND mnl.id IS NULL -- 既に一括告知した求人は、告知できない
    AND  j.public = 1
    AND j.open = 1
    AND j.commission_fee_value > l.fee_value
    AND j.commission_fee_id = l.fee_unit
    AND j.agent_id = 582
ORDER BY l.created_at DESC
;

