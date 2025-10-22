/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<103 and title.production_year<73 and title.imdb_index=0 and title.season_nr=2 and title.episode_nr>16;

