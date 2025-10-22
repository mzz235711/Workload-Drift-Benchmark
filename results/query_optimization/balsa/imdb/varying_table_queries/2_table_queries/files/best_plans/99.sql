/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.production_year<123 and title.episode_nr<22 and title.kind_id<7 and title.series_years<1374;

