/*+ NestLoop(movie_info title movie_keyword cast_info)
 HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((movie_info (title movie_keyword)) cast_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=2 and movie_keyword.keyword_id<25429 and title.season_nr=1 and title.production_year<123 and title.series_years>0;

