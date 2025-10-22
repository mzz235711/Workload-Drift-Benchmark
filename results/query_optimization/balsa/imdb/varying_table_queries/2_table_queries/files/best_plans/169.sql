/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year<126 and title.episode_nr>0 and title.series_years<1349;

