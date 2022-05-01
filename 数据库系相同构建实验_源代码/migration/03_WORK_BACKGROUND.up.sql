drop table if exists `tbl_work_background`;
CREATE TABLE `tbl_work_background`
(
	`user_ref_id` varchar(50) not null,
	`company` varchar(100),
	`position` varchar(50),
	`start_datetime` datetime,
	`end_datetime` datetime,
    CONSTRAINT tbl_work_background_pk
		PRIMARY KEY (`user_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
