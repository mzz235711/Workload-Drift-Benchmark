/*+ SeqScan(movie_info)
 Leading(movie_info) */
select count(*) from movie_info where movie_info.info_type_id>1;

