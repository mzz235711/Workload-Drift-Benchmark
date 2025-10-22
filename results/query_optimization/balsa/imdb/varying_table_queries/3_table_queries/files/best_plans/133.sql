/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.production_year<126 and title.season_nr<5;

