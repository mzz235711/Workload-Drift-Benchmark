/*+ HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading(((cast_info title) movie_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr=0;

