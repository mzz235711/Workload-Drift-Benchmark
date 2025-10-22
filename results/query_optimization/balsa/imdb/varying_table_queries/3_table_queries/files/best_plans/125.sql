/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and cast_info.role_id<10 and title.series_years>0 and title.phonetic_code>16042 and title.kind_id>1;

