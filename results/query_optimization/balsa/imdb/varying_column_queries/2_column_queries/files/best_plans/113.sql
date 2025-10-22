/*+ HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info title))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.kind_id>1;

