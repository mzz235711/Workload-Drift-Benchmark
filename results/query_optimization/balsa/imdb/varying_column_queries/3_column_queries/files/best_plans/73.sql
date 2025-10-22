/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and cast_info.role_id<10 and title.kind_id<7;

