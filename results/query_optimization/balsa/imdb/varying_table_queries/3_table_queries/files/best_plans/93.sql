/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.production_year>66;

