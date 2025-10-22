/*+ HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info title))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.episode_nr<25 and title.production_year>46 and title.kind_id<7 and title.series_years>0;

