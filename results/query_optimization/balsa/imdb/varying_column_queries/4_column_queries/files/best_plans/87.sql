/*+ HashJoin(cast_info movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (title movie_info_idx)))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and cast_info.role_id=1 and title.production_year>88 and title.phonetic_code>0;

