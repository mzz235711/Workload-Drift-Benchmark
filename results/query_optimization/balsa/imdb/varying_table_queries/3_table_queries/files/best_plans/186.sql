/*+ HashJoin(movie_info cast_info title)
 MergeJoin(cast_info title)
 IndexScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (cast_info title))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.kind_id<7 and title.episode_nr<42;

