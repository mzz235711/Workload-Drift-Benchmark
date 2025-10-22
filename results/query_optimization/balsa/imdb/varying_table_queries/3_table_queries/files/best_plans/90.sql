/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id>2 and title.imdb_index>0;

