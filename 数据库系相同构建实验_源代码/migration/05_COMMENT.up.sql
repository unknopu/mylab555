DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment`
(
	`comment_id` varchar(100) not null,
	`post_id` varchar(100) not null,
	`user_ref_id` varchar(100) not null,
	`content` varchar(250) null,
    `is_active` bool default true not null REFERENCES tbl_post(`is_active`),
	`update_date` datetime default current_timestamp not null,
    CONSTRAINT PRIMARY KEY (`comment_id`),
    UNIQUE INDEX (`comment_id`, `is_active`),
    FOREIGN KEY (`post_id`, `is_active`) 
        REFERENCES tbl_post(`post_id`, `is_active`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
