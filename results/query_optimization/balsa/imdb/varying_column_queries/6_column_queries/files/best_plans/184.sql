/*+ NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((title cast_info) movie_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<98 and cast_info.role_id>1 and title.production_year>106 and title.kind_id=7 and title.imdb_index=0 and title.series_years>0;

