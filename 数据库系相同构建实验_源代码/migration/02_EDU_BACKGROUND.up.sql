drop table if exists `tbl_edu_background`;
CREATE TABLE `tbl_edu_background`
(
	`user_ref_id` varchar(50) not null,
	`edu_level` TINYINT,
	`start_datetime` datetime,
	`end_datetime` datetime,
	`school` varchar(100),
	`degree` varchar(60),
    CONSTRAINT tbl_edu_background_pk
		PRIMARY KEY (`user_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
