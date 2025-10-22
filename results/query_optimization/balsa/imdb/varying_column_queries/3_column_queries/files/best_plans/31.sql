/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.season_nr=0 and title.production_year<126 and title.series_years<1381;

