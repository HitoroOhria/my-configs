SELECT job_id, MAX(created_at) AS latest_created_at
FROM job_commission_fee_logs
Group BY job_id
;
