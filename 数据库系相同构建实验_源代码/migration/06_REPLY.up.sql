DROP TABLE IF EXISTS `tbl_reply`;
CREATE TABLE `tbl_reply`
(
	`reply_id` varchar(100) not null,
	`comment_id` varchar(100) not null,
	`user_ref_id` varchar(100) not null,
	`content` varchar(250),
    `is_active` bool default true not null REFERENCES tbl_comment(`is_active`),
	`update_date` datetime default current_timestamp not null,
    CONSTRAINT PRIMARY KEY (`reply_id`),
    UNIQUE INDEX (`reply_id`, `is_active`),
    FOREIGN KEY (`comment_id`, `is_active`) 
        REFERENCES tbl_comment(`comment_id`, `is_active`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
