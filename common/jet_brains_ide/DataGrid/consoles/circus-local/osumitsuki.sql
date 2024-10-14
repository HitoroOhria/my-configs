SELECT * FROM osumitsukis;

ALTER TABLE `osumitsukis`
    ADD COLUMN `resume_selection_exemption` boolean not null default false COMMENT '書類選考免除特典の付与状況' AFTER `hr_agent_id`;
