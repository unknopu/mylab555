drop table if exists `tbl_friends`;
CREATE TABLE `tbl_friends`
(
	`user_ref_id` varchar(100) not null,
	`friend_id` varchar(100) not null,
    PRIMARY KEY (`user_ref_id`, `friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;