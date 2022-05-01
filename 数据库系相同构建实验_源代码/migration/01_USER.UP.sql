DROP TABLE IF EXISTS `tbl_profile`;
CREATE TABLE `tbl_profile`
(
	`user_ref_id` varchar(50) not null,
	`user_name` varchar(100) not null,
	`real_name` varchar(100) not null,
	`birthday` varchar(20) not null,
	`gender` varchar(10) not null,
	`email` varchar(200) not null,
	`password` varchar(256) not null,
	`is_active` bool default true not null,
	`create_datetime` datetime default current_timestamp not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE UNIQUE INDEX tbl_profile_user_name_index
	ON `tbl_profile` (`user_name`);

ALTER TABLE `tbl_profile`
	ADD CONSTRAINT tbl_profile_pk
		PRIMARY KEY (`user_name`);