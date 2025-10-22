/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.season_nr=0 and title.kind_id<7 and title.phonetic_code>0 and title.production_year>82;

