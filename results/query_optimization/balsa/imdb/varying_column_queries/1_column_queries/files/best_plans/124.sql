/*+ SeqScan(movie_info_idx)
 Leading(movie_info_idx) */
select count(*) from movie_info_idx where movie_info_idx.info_type_id=100;

