/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.phonetic_code>0 and title.production_year<125 and title.kind_id<7;

