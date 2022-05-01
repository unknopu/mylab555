DROP TABLE IF EXISTS `tbl_post`;
create table `tbl_post`
(
	`post_id` varchar(100) not null,
	`user_ref_id` varchar(100) not null,
	`content` varchar(1000) null,
	`update_date` datetime not null default current_timestamp,
    `is_active` BOOL default true not null,
    `share_post_id` varchar(100) null,
    CONSTRAINT PRIMARY KEY (`post_id`),
    UNIQUE INDEX (`post_id`, `is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
