/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr>0 and title.season_nr<4 and title.imdb_index=0;

