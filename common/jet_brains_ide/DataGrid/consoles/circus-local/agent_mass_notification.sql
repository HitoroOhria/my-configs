-- 配信先エージェントユーザー数 SQL (古いが構造は変わらない)
-- https://uniasdev.atlassian.net/wiki/spaces/CIRCUSDEV/pages/910655573/SQL
-- prod の選考数、候補リストを除いて at 2024-09-27
--  全期間: 867,904件
--  直近3ヶ月: 151,140件
SELECT agents;

-- このクエリがエージェントごとに走る
-- 重い
WITH annual_income_ranges AS (
    SELECT
        SUM(CASE WHEN sjs.current_salary BETWEEN 0 AND 299 THEN 1 ELSE 0 END) AS count_1,
        SUM(CASE WHEN sjs.current_salary BETWEEN 300 AND 449 THEN 1 ELSE 0 END) AS count_2,
        SUM(CASE WHEN sjs.current_salary BETWEEN 450 AND 599 THEN 1 ELSE 0 END) AS count_3,
        SUM(CASE WHEN sjs.current_salary BETWEEN 600 AND 799 THEN 1 ELSE 0 END) AS count_4,
        SUM(CASE WHEN sjs.current_salary BETWEEN 800 AND 1199 THEN 1 ELSE 0 END) AS count_5,
        SUM(CASE WHEN sjs.current_salary BETWEEN 1200 AND 1999 THEN 1 ELSE 0 END) AS count_6,
        SUM(CASE WHEN sjs.current_salary >= 2000 THEN 1 ELSE 0 END) AS count_7,
        GROUP_CONCAT(DISTINCT CASE WHEN sjs.current_salary BETWEEN 300 AND 449 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_2,
        GROUP_CONCAT(DISTINCT CASE WHEN sjs.current_salary BETWEEN 600 AND 799 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_4
    FROM selection_job_seekers sjs
),
-- 軽い
annual_income_counts AS (
    SELECT
        count_1, count_2, count_3, count_4, count_5, count_6, count_7,
        count_1+count_2+count_3+count_4+count_5+count_6+count_7 AS total_count,
        GREATEST(count_1,count_2,count_3,count_4,count_5,count_6,count_7) AS max_count,
        agent_ids_2, agent_ids_4
    FROM annual_income_ranges
),
-- 軽い
annual_income AS (
    SELECT
        agent_ids_2,
        count_2 = max_count AS is_max_2,
        count_2 / total_count >= 0.3 AS occupies_30_percent_2,
        agent_ids_4,
        count_4 = max_count AS is_max_4,
        count_4 / total_count >= 0.3 AS occupies_30_percent_4
    FROM annual_income_counts
),
-- 重い
job_category_counts AS (
    SELECT
        SUM(CASE WHEN m1.value = 1 THEN 1 ELSE 0 END) AS count_1,
        SUM(CASE WHEN m1.value = 2 THEN 1 ELSE 0 END) AS count_2,
        SUM(CASE WHEN m1.value = 3 THEN 1 ELSE 0 END) AS count_3,
        SUM(CASE WHEN m1.value = 4 THEN 1 ELSE 0 END) AS count_4,
        SUM(CASE WHEN m1.value = 5 THEN 1 ELSE 0 END) AS count_5,
        SUM(CASE WHEN m1.value = 6 THEN 1 ELSE 0 END) AS count_6,
        SUM(CASE WHEN m1.value = 7 THEN 1 ELSE 0 END) AS count_7,
        SUM(CASE WHEN m1.value = 8 THEN 1 ELSE 0 END) AS count_8,
        SUM(CASE WHEN m1.value = 9 THEN 1 ELSE 0 END) AS count_9,
        SUM(CASE WHEN m1.value = 10 THEN 1 ELSE 0 END) AS count_10,
        SUM(CASE WHEN m1.value = 11 THEN 1 ELSE 0 END) AS count_11,
        SUM(CASE WHEN m1.value = 12 THEN 1 ELSE 0 END) AS count_12,
        SUM(CASE WHEN m1.value = 13 THEN 1 ELSE 0 END) AS count_13,
        SUM(CASE WHEN m1.value = 14 THEN 1 ELSE 0 END) AS count_14,
        SUM(CASE WHEN m1.value = 15 THEN 1 ELSE 0 END) AS count_15,
        SUM(CASE WHEN m1.value = 16 THEN 1 ELSE 0 END) AS count_16,
        SUM(CASE WHEN m1.value = 17 THEN 1 ELSE 0 END) AS count_17,
        SUM(CASE WHEN m1.value IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17) THEN 1 ELSE 0 END) AS total_count,
        GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 1 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_1,
        GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 2 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_2,
        GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 5 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_5,
        GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 8 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_8
    FROM selection_jobs sj
    JOIN selection_job_seekers sjs ON sjs.selection_id = sj.selection_id
    JOIN masters m1 ON m1.parent_id IS NULL AND m1.group_name = "major-occupations"
    JOIN masters m2 ON m2.parent_id = m1.id AND m2.parent_id IS NOT NULL AND m2.group_name = "major-occupations"
    JOIN masters m3 ON m3.name = m2.name AND m3.parent_id IS NULL AND m3.group_name = "minor-occupations"
    JOIN masters m4 ON m4.parent_id = m3.id AND m4.group_name = "minor-occupations" AND sj.occupation_main = m4.value
)
SELECT DISTINCT a.id
FROM agents a
;

-- 重いやつ1
SELECT
    SUM(CASE WHEN sjs.current_salary BETWEEN 0 AND 299 THEN 1 ELSE 0 END) AS count_1,
    SUM(CASE WHEN sjs.current_salary BETWEEN 300 AND 449 THEN 1 ELSE 0 END) AS count_2,
    SUM(CASE WHEN sjs.current_salary BETWEEN 450 AND 599 THEN 1 ELSE 0 END) AS count_3,
    SUM(CASE WHEN sjs.current_salary BETWEEN 600 AND 799 THEN 1 ELSE 0 END) AS count_4,
    SUM(CASE WHEN sjs.current_salary BETWEEN 800 AND 1199 THEN 1 ELSE 0 END) AS count_5,
    SUM(CASE WHEN sjs.current_salary BETWEEN 1200 AND 1999 THEN 1 ELSE 0 END) AS count_6,
    SUM(CASE WHEN sjs.current_salary >= 2000 THEN 1 ELSE 0 END) AS count_7,
    GROUP_CONCAT(DISTINCT CASE WHEN sjs.current_salary BETWEEN 300 AND 449 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_2,
    GROUP_CONCAT(DISTINCT CASE WHEN sjs.current_salary BETWEEN 600 AND 799 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_4
FROM selection_job_seekers sjs
;

-- 重いやつ2
SELECT
    SUM(CASE WHEN m1.value = 1 THEN 1 ELSE 0 END) AS count_1,
    SUM(CASE WHEN m1.value = 2 THEN 1 ELSE 0 END) AS count_2,
    SUM(CASE WHEN m1.value = 3 THEN 1 ELSE 0 END) AS count_3,
    SUM(CASE WHEN m1.value = 4 THEN 1 ELSE 0 END) AS count_4,
    SUM(CASE WHEN m1.value = 5 THEN 1 ELSE 0 END) AS count_5,
    SUM(CASE WHEN m1.value = 6 THEN 1 ELSE 0 END) AS count_6,
    SUM(CASE WHEN m1.value = 7 THEN 1 ELSE 0 END) AS count_7,
    SUM(CASE WHEN m1.value = 8 THEN 1 ELSE 0 END) AS count_8,
    SUM(CASE WHEN m1.value = 9 THEN 1 ELSE 0 END) AS count_9,
    SUM(CASE WHEN m1.value = 10 THEN 1 ELSE 0 END) AS count_10,
    SUM(CASE WHEN m1.value = 11 THEN 1 ELSE 0 END) AS count_11,
    SUM(CASE WHEN m1.value = 12 THEN 1 ELSE 0 END) AS count_12,
    SUM(CASE WHEN m1.value = 13 THEN 1 ELSE 0 END) AS count_13,
    SUM(CASE WHEN m1.value = 14 THEN 1 ELSE 0 END) AS count_14,
    SUM(CASE WHEN m1.value = 15 THEN 1 ELSE 0 END) AS count_15,
    SUM(CASE WHEN m1.value = 16 THEN 1 ELSE 0 END) AS count_16,
    SUM(CASE WHEN m1.value = 17 THEN 1 ELSE 0 END) AS count_17,
    SUM(CASE WHEN m1.value IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17) THEN 1 ELSE 0 END) AS total_count,
    GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 1 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_1,
    GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 2 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_2,
    GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 5 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_5,
    GROUP_CONCAT(DISTINCT CASE WHEN m1.value = 8 THEN sjs.agent_id END ORDER BY sjs.agent_id ASC) AS agent_ids_8
FROM selection_jobs sj
JOIN selection_job_seekers sjs ON sjs.selection_id = sj.selection_id
JOIN masters m1 ON m1.parent_id IS NULL AND m1.group_name = "major-occupations"
JOIN masters m2 ON m2.parent_id = m1.id AND m2.parent_id IS NOT NULL AND m2.group_name = "major-occupations"
JOIN masters m3 ON m3.name = m2.name AND m3.parent_id IS NULL AND m3.group_name = "minor-occupations"
JOIN masters m4 ON m4.parent_id = m3.id AND m4.group_name = "minor-occupations" AND sj.occupation_main = m4.value
;