/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.production_year>125;

