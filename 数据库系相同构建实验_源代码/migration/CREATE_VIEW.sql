create view
	user_profile(user_ref_id, real_name, email, birthday, create_datetime) 
	as 
		select user_ref_id, real_name, email, birthday, create_datetime
		from tbl_profile;


create view
	user_post as
		select p.content, p.update_date, p.share_post_id, 
		 	tp.user_ref_id, tp.real_name as owner
		from tbl_post p
		left join tbl_profile tp on p.user_ref_id = tp.user_ref_id;

create view
	user_info as
		select p.real_name,edu.edu_level, edu.school, edu.degree, 
			w.company, w.position
		from tbl_edu_background edu
		inner join tbl_work_background w on edu.user_ref_id = w.user_ref_id
		left join tbl_profile p on edu.user_ref_id = p.user_ref_id;


create view
	user_comment as
		select tp.real_name as owner, c.content, c.update_date, c.post_id
			from tbl_comment c
			left join tbl_profile tp on c.user_ref_id = tp.user_ref_id;


