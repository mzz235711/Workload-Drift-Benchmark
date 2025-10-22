/*+ HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (title movie_companies))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.imdb_index=0 and title.episode_nr<152 and title.production_year>92;

