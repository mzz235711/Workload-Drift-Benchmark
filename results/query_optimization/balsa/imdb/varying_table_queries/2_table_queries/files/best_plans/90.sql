/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id<7 and title.series_years>0 and title.episode_nr<3398 and title.imdb_index>0;

